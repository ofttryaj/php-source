(function (window) {
  const l = 42, // 滑块边长
    r = 10, // 滑块半径
    w = 300, // canvas宽度
    h = 155, // canvas高度
    PI = Math.PI
  const L = l + r * 2 // 滑块实际边长

  function getRandomNumberByRange(start, end) {
    return Math.round(Math.random() * (end - start) + start)
  }

  function createCanvas(width, height) {
    const canvas = createElement('canvas')
    canvas.width = width
    canvas.height = height
    return canvas
  }

  function createImg(onload) {
    const img = createElement('img')
    img.crossOrigin = "Anonymous"
    img.onload = onload
    img.onerror = () => {
      img.src = getRandomImg()
    }
    img.src = getRandomImg()
    return img
  }
  
  function createElement(tagName) {
    return document.createElement(tagName)
  }

  function addClass(tag, className) {
    tag.classList.add(className)
  }

  function removeClass(tag, className) {
    tag.classList.remove(className)
  }
  
  function getRandomImg() {
  	return '../addons/silence_vote/template/static/toupiao_sou/images/img2/'+getRandomNumberByRange(1, 19)+'.jpg'
//  return 'https://picsum.photos/300/150/?image=' + getRandomNumberByRange(0, 1084)
    //return 'https://picsum.photos/300/150/?random';//得到随机一张图片 刷新后才换
  }

  function draw(ctx, operation, x, y) {
    ctx.beginPath()
    ctx.moveTo(x, y)
    ctx.lineTo(x + l / 2, y)
    ctx.arc(x + l / 2, y - r + 2, r, 0, 2 * PI)
    ctx.lineTo(x + l / 2, y)
    ctx.lineTo(x + l, y)
    ctx.lineTo(x + l, y + l / 2)
    ctx.arc(x + l + r - 2, y + l / 2, r, 0, 2 * PI)
    ctx.lineTo(x + l, y + l / 2)
    ctx.lineTo(x + l, y + l)
    ctx.lineTo(x, y + l)
    ctx.lineTo(x, y)
    ctx.fillStyle = '#fff'
    ctx[operation]()
    ctx.beginPath()
    ctx.arc(x, y + l / 2, r, 1.5 * PI, 0.5 * PI)
    ctx.globalCompositeOperation = "xor"
    ctx.fill()
  }

  function sum(x, y) {
    return x + y
  }

  function square(x) {
    return x * x
  }

  class jigsaw {
    constructor(el, success, fail) {
      this.el = el
      this.success = success
      this.fail = fail
    }

    init() {
      this.initDOM()
      this.initImg()
      this.draw()
      this.bindEvents()
    }

    initDOM() {
      const canvas = createCanvas(w, h) // 画布
      const block = canvas.cloneNode(true) // 滑块
      const sliderContainer = createElement('div')
      const refreshIcon = createElement('div')
      const sliderMask = createElement('div')
      const slider = createElement('div')
      const sliderIcon = createElement('span')
      const text = createElement('span')

      block.className = 'block'//小块拼图
      sliderContainer.className = 'sliderContainer'//下方滑块
      refreshIcon.className = 'refreshIcon'//右上角刷新icon
      sliderMask.className = 'sliderMask'
      slider.className = 'slider'
      sliderIcon.className = 'sliderIcon'//
      text.innerHTML = '向右滑动验证拼图，完成投票。'
      text.className = 'sliderText'

      const el = this.el
      el.appendChild(canvas)
      el.appendChild(refreshIcon)
      el.appendChild(block)
      slider.appendChild(sliderIcon)
      sliderMask.appendChild(slider)
      sliderContainer.appendChild(sliderMask)
      sliderContainer.appendChild(text)
      el.appendChild(sliderContainer)

      Object.assign(this, {
        canvas,
        block,
        sliderContainer,
        refreshIcon,
        slider,
        sliderMask,
        sliderIcon,
        text,
        canvasCtx: canvas.getContext('2d'),
        blockCtx: block.getContext('2d')
      })
    }

    initImg() {
      const img = createImg(() => {
        this.canvasCtx.drawImage(img, 0, 0, w, h)
        this.blockCtx.drawImage(img, 0, 0, w, h)
        const y = this.y - r * 2 + 2
        const ImageData = this.blockCtx.getImageData(this.x, y, L, L)
        this.block.width = L
        this.blockCtx.putImageData(ImageData, 0, y)
      })
      this.img = img
    }

    draw() {
      // 随机创建滑块的位置
      this.x = getRandomNumberByRange(L + 10, w - (L + 10))
      this.y = getRandomNumberByRange(10 + r * 2, h - (L + 10))
      draw(this.canvasCtx, 'fill', this.x, this.y)
      draw(this.blockCtx, 'clip', this.x, this.y)
    }

    clean() {
      this.canvasCtx.clearRect(0, 0, w, h)
      this.blockCtx.clearRect(0, 0, w, h)
      this.block.width = w
    }

    bindEvents() {
      this.el.onselectstart = () => false
      this.refreshIcon.onclick = () => {
        this.reset()
      }

      let originX, originY, trail = [], isTouchStart = false
      this.slider.addEventListener('touchstart', function (e) {
        console.log('touchstart');
        console.log(e);

        originX = e.targetTouches[0].pageX, originY = e.targetTouches[0].pageY;
        console.log(originX);
        console.log(originY);
        isTouchStart = true
      })
      document.addEventListener('touchmove', (e) => {
        if (!isTouchStart) return false
        const moveX = e.targetTouches[0].pageX - originX
        const moveY = e.targetTouches[0].pageY - originY
        if (moveX < 0 || moveX + 38 >= w) return false
        this.slider.style.left = moveX + 'px'
        var blockLeft = (w - 40 - 20) / (w - 40) * moveX
        this.block.style.left = blockLeft + 'px'

        addClass(this.sliderContainer, 'sliderContainer_active')
        this.sliderMask.style.width = moveX + 'px'
        trail.push(moveY)
      })
      document.addEventListener('touchend', (e) => {
        console.log('touched');
        console.log(e);
        if (!isTouchStart) return false
        isTouchStart = false
        if (e.x == originX) return false
        removeClass(this.sliderContainer, 'sliderContainer_active')
        this.trail = trail
        const {spliced, TuringTest} = this.verify()
        if (spliced) {
          if (TuringTest) {
            addClass(this.sliderContainer, 'sliderContainer_success')
            this.success && this.success()
            setTimeout(() => {//重置
              this.reset()
            }, 10)
          } else {
            addClass(this.sliderContainer, 'sliderContainer_fail')
            this.text.innerHTML = '再试一次'
            this.reset()
          }
        } else {
          addClass(this.sliderContainer, 'sliderContainer_fail')
          this.fail && this.fail()
          setTimeout(() => {//重置
            this.reset()
          }, 10)
        }
      })
    }

    verify() {
      const arr = this.trail // 拖动时y轴的移动距离
      const average = arr.reduce(sum) / arr.length // 平均值
      const deviations = arr.map(x => x - average) // 偏差数组
      const stddev = Math.sqrt(deviations.map(square).reduce(sum) / arr.length) // 标准差
      const left = parseInt(this.block.style.left)
      return {
        spliced: Math.abs(left - this.x) < 10,
        TuringTest: average !== stddev, // 只是简单的验证拖动轨迹，相等时一般为0，表示可能非人为操作
      }
    }

    reset() {
      this.sliderContainer.className = 'sliderContainer'
      this.slider.style.left = 0
      this.block.style.left = 0
      this.sliderMask.style.width = 0
      this.clean()
      this.img.src = getRandomImg()
      this.draw()
    }

  }

  window.jigsaw = {
    init: function (element, success, fail) {
      new jigsaw(element, success, fail).init()
    }
  }
}(window))
