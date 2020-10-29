<template>
  <swiper class="banner" ref="mySwiper" :options="swiperOptions">
    <swiper-slide v-for="item in banners" :key="item.index">
      <a :href="item.link">
        <img :src="item.image" alt="">
      </a>
    </swiper-slide>
    <div class="swiper-pagination banner-num" slot="pagination"></div>
  </swiper>
</template>

<script>
import { Swiper, SwiperSlide } from 'vue-awesome-swiper'
export default {
  name: 'HomeSwiper',
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
      return this.$refs.mySwiper.$swiper
    }
  },
  mounted () {
    console.log(this.$refs)
    this.swiper.slideTo(3, 1000, false)
  },
  data () {
    return {
      swiperOptions: {
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
.banner a {
  display: block;
  overflow: hidden
}

.banner a img {
  width: 100%;
  height: auto
}

.banner .banner-num {
  position: absolute;
  bottom: 35px !important;
  z-index: 5;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  -webkit-justify-content: center;
  justify-content: center
}

.banner .banner-num .swiper-pagination-bullet {
  border-radius: 50px;
  width: 16px;
  height: 16px;
  margin: 0 5px !important;
  background: #fff;
  transition: all .5s;
  opacity: 1;
  outline: 0
}

.banner .banner-num .swiper-pagination-bullet-active {
  width: 54px;
  background: #f7ac1b
}
</style>
