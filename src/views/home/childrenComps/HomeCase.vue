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
      <div class="swiper-slide">
        <a href="#">
          <div class="pic">
            <div class="o">
              <img :src="banners[0].image" alt="">
            </div>
          </div>
          <div class="box"><span>能源行业起重机应用</span>
          </div>
        </a>
      </div>
      <swiper-slide>
        <a href="#">
          <div class="pic">
            <div class="o">
              <img :src="banners[0].image" alt="">
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
      console.log(this.swiper)
      this.swiper.slideNext()
    }
  },
  mounted () {
  },
  data () {
    return {
      swiperOptions: {
        loop: true,
        slidesPerView: 'auto',
        loopedSlides: 8,
        autoplay: false,
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
  padding: 70px 55px 50px 0;
  overflow:hidden;
}
.case .swiper-container {
  margin: 0;
  overflow: visible;
  width: 440px;
  height: 429px;
}
.case-swiper {
  padding-bottom: 30px !important;
}
.case .swiper-slide {
  padding-left: 40px;
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
  left: 100% !important;
  bottom: -20px !important;
}
.case .swiper-pagination-bullet {
  border-radius: 50px;
  width: 14px;
  height: 14px;
  background: #000;
  transition: all .5s;
  opacity: .2
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
</style>
