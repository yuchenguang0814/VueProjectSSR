<template>
  <div>
    <ul class="fixed_kefu pc">
      <li class="close">收缩</li>
      <li><a href="http://wpa.qq.com/msgrd?uin=980101050" target="_blank"><img src="http://qizhong114.com/static/home/img/fixed_kefu_1.png"><em>在线客服</em></a></li>
      <li><a href="javascript:;"><img src="http://qizhong114.com/static/home/img/fixed_kefu_2.png"><em>咨询报价</em></a>
        <div class="hideewm"><img src="http://www.qizhong114.com/uploads/images/20200520/6bd23fdf030d01c27eb610f6d4ecf624.jpg"></div></li>
      <li><a href="javascript:;"><img src="http://qizhong114.com/static/home/img/fixed_kefu_3.png"><em>销售热线</em></a>
        <div class="hide"><img src="http://www.qizhong114.com/uploads/images/20200520/6bd23fdf030d01c27eb610f6d4ecf624.jpg">
          <div class="box">
            <p><span>扫码</span>即可拨打电话</p>
            <strong>0757-86283883</strong></div>
        </div>
      </li>
      <li><a href="http://wpa.qq.com/msgrd?uin=980101050" target="_blank"><img src="http://qizhong114.com/static/home/img/fixed_kefu_4.png"><em>在线留言</em></a></li>
      <transition name="back"><li class="backtop" v-show="showTop" @click="scrollTopfun"><a href="javascript:;"><img src="http://qizhong114.com/static/home/img/fixed_kefu_5.png"><em>返回顶部</em></a></li></transition>
    </ul>
    <ul class="fixed_kefu_wap wap">
      <li><a href="http://wpa.qq.com/msgrd?uin=980101050" target="_blank"><img src="http://qizhong114.com/static/home/img/icon_zx.png"><em>咨询客服</em></a></li>
      <li><a href="tel:0757-86283883"><img src="http://qizhong114.com/static/home/img/icon_dh.png"><em>一键拨打</em></a></li>
      <transition name="back"><li class="backtop" v-show="showTop"  @click="scrollTopfun"><img src="http://qizhong114.com/static/home/img/icon_mtop.png"></li></transition>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'Service',
  data () {
    return {
      showTop: false,
      scrollTop: null
    }
  },
  mounted () {
    window.addEventListener('scroll', this.handleScroll)// 监听滚动事件，然后用handleScroll这个方法进行相应的处理
  },
  methods: {
    handleScroll () {
      this.scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop // 滚动条偏移量
      this.showTop = this.scrollTop > 800
    },
    scrollTopfun () {
      const $this = this
      setTimeout(function animation () {
        if ($this.scrollTop > 0) {
          setTimeout(() => {
            $this.scrollTop = $this.scrollTop - 30
            if (document.documentElement.scrollTop > 0) {
              document.documentElement.scrollTop = $this.scrollTop - 30
            } else if (window.pageYOffset > 0) {
              window.pageYOffset = $this.scrollTop - 30
            } else if (document.body.scrollTop > 0) {
              document.body.scrollTop = $this.scrollTop - 30
            }
            animation()
          }, 1)
        }
      }, 1)
    }
  }
}

</script>

<style>
.back-enter-active, .back-leave-active {
  opacity: 1;
  transition: all 0.5s
}
.back-enter, .back-leave-active {
  opacity: 0;
}
.fixed_kefu {
  position: fixed;
  right: 20px;
  bottom: 90px;
  z-index: 10000;
  padding-bottom: 80px
}

.fixed_kefu li {
  position: relative;
  text-align: center;
  border-bottom: 1px solid #fff;
  background: #c2cdef;
  padding: 1px
}

.fixed_kefu li a {
  font-size: 14px;
  color: #05163f;
  display: block;
  padding: 15px;
  transition: all 0
}

.fixed_kefu li a img {
  margin-bottom: 5px;
  height: 46px;
  width: auto
}

.fixed_kefu li a em {
  display: block;
  overflow: hidden
}

.fixed_kefu li .hide {
  position: absolute;
  right: 0;
  top: 0;
  overflow: hidden;
  background: #fff;
  width: 0;
  height: 0;
  text-align: left;
  border: 1px solid #c2cdef;
  border-radius: 5px;
  padding: 0;
  transition: all .2s
}

.fixed_kefu li .hide img {
  float: left;
  width: 75px;
  height: 75px
}

.fixed_kefu li .hide .box {
  float: left;
  margin-left: 10px;
  margin-top: 14px;
  font-size: 18px;
  color: #05163f
}

.fixed_kefu li .hide .box span {
  color: #e61e37
}

.fixed_kefu li .hide .box strong {
  color: #e61e37;
  display: block;
  margin-top: 5px
}

.fixed_kefu li .hideewm {
  position: absolute;
  right: 100%;
  top: 50%;
  transform: translateY(-50%);
  overflow: hidden;
  background: #fff;
  border: 1px solid #c2cdef;
  border-radius: 5px 0 0 5px;
  padding: 10px;
  transition: all .2s;
  display: none
}

.fixed_kefu li .hideewm img {
  height: 150px;
  width: auto
}

.fixed_kefu li:hover {
  border-bottom-color: #121a3b
}

.fixed_kefu li:hover a {
  background: #fff
}

.fixed_kefu li:hover .hide {
  width: 270px;
  height: 100%;
  padding: 10px
}

.fixed_kefu li:hover .hideewm {
  display: block
}

.fixed_kefu .backtop {
  position: absolute;
  left: 0;
  bottom: 0;
  right: 0
}

.fixed_kefu .backtop img {
  height: 13px
}
@media (max-width: 999px) {
  .fixed_kefu_wap {
    display: block;
    position: fixed;
    left: 0;
    bottom: 0;
    z-index: 6666;
    width: 100%;
    background: #fff;
    box-shadow: 0 0 10px #eee
  }

  .fixed_kefu_wap li {
    width: 50%;
    float: left
  }

  .fixed_kefu_wap li a {
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 44px;
    line-height: 1
  }

  .fixed_kefu_wap li a img {
    height: 18px;
    width: auto;
    margin-right: 5px
  }

  .fixed_kefu_wap li:nth-child(2) {
    background: #212257;
    background: linear-gradient(130deg, #9b244d 40%, #212257 60%);
    border-top-left-radius: 100px
  }

  .fixed_kefu_wap li:nth-child(2) a {
    color: #fff
  }

  .fixed_kefu_wap .backtop {
    position: absolute;
    right: 0;
    bottom: 100%;
    margin: 0 10px 55px 0;
    width: auto
  }

  .fixed_kefu_wap .backtop img {
    height: 30px;
    width: auto
  }
}
</style>
