<template>
  <div class="case">
    <div class="container">
      <div class="in-tit">
        <img src="http://qizhong114.com/static/home/img/tit_case.png">
        <div class="dt">
          <img src="http://qizhong114.com/static/home/img/tit_zs.png">
          "解决方案"
        </div>
        <div class="text">用心“智”造大国重器，用“魂”铸就民族品牌，凭借着先进的技术、优良的品质及贴心的服务赢得了世界点赞</div>
      </div>
    </div>
    <swiper ref="caseSwiper" :options="swiperOptions">
      <swiper-slide v-for="item in banners" :key="item.index">
        <a :href="item.link" @click.prevent="clikeNext">
          <div class="pic">
            <div class="o">
              <img :src="item.image">
            </div>
          </div>
          <div class="box"><span>能源行业起重机应用</span>
          </div>
        </a>
      </swiper-slide>
      <div class="swiper-pagination banner-num" slot="pagination"></div>
    </swiper>
  </div>
</template>

<script>
import { SwiperSlide, Swiper } from 'vue-awesome-swiper'

export default {
  name: 'HomeCase',
  props: {
    banners: {
      type: Array,
      default () {
        return []
      }
    }
  },
  components: {
    Swiper,
    SwiperSlide
  },
  computed: {
    swiper () {
      return this.$refs.caseSwiper.$swiper
    }
  },
  methods: {
    clikeNext () {
      this.swiper.destroy(false)
    },
    _isMobilew () {
      const flag = navigator.userAgent.match(/(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i)
      return flag
    }
  },
  mounted () {
    const flag = this._isMobilew()
    if (flag) {
      this.swiperOptions.slidesPerView = 1.8
      this.swiperOptions.spaceBetween = 15
      this.swiper.destroy()
      this.$refs.caseSwiper.initSwiper()
    }
  },
  data () {
    return {
      swiperOptions: {
        loop: true,
        slidesPerView: 3,
        autoplay: false,
        spaceBetween: 40,
        pagination: {
          el: '.swiper-pagination',
          clickable: true
        }
        // Some Swiper option/callback...
      }
    }
  }
}
</script>

<style>
.case {
  padding: 70px 55px 30px 55px;
  overflow:hidden;
}
.case .swiper-container {
  padding-bottom: 20px;
}
.case .swiper-slide a {
  display: block;
  overflow: hidden;
  position: relative
}
.case .swiper-slide a:before {
  content: '';
  position: absolute;
  right: 10px;
  bottom: 5px;
  background: url(~assets/image/icon_jjan_look.png);
  background-size: 100% 100%;
  width: 36px;
  height: 163px;
  z-index: 5;
  transition: all .5s
}
.case .swiper-slide .pic {
  padding: 25px 40px 45px 0;
  box-sizing: border-box;
  position: relative;
  background: url(~assets/image/bj_jjfa_bg.png) no-repeat right top;
  background-size: auto 100%
}
.case .swiper-slide .pic .o {
  overflow: hidden
}
.case .swiper-slide .pic img {
  height: auto;
  transition: all .5s;
  width:100%;
}
.case .swiper-slide .box {
  padding: 30px 10% 0 0;
  font-size: 18px;
  color: #4b556e
}
.case .swiper-slide .box span {
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  font-size: 26px;
  color: #05163f;
  font-weight: bold;
  transition: all .5s;
  margin-bottom: 20px
}
.case .banner-num {
  display: flex;
  align-items: center;
  justify-content: center;
  bottom: 0px !important;
}
.case .swiper-pagination-bullet {
  border-radius: 50px;
  width: 14px;
  height: 14px;
  background: #000;
  transition: all .5s;
  opacity: .2;
}

.case .swiper-pagination-bullet.swiper-pagination-bullet-active {
  width: 30px;
  background: #f7ac1b;
  opacity: 1
}
.case .swiper-slide a:hover:before {
  bottom: 0
}

.case .swiper-slide a:hover .pic img {
  transform: scale(1.05)
}

.case .swiper-slide a:hover .box span {
  color: #e61e37
}
@media (max-width:999px) {
  .case {
        padding: 20px 20px
    }

    .case .in-tit {
        padding-left: 10px;
        padding-right: 10px
    }

    .case .swiper-slide a:before {
        right: 5px;
        width: 18px;
        height: 84px
    }

    .case .swiper-slide .pic {
        padding: 10px 10px 20px 0
    }

    .case .swiper-slide .box {
        padding: 10px 30px 0 0;
        font-size: 12px
    }

    .case .swiper-slide .box span {
        font-size: 16px;
        margin-bottom: 5px
    }

    .case .swiper-slide .box p {
        margin-top: 2px
    }

    .case .swiper-slide .box p img {
        height: 13px;
        margin-top: -3px;
        margin-right: 5px
    }

    .case .banner-num {
        margin-top: 15px
    }

    .case .banner-num .swiper-pagination-bullet {
        width: 8px;
        height: 8px;
        margin: 0 3px !important
    }

    .case .banner-num .swiper-pagination-bullet-active {
        width: 20px
    }
}
</style>
