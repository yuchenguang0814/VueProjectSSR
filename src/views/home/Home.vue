<template>
  <div class="home">
    <home-swiper :banners="banners">
    </home-swiper>
    <home-product :products="products">
    </home-product>
    <home-case :banners="caseBanners">
    </home-case>
    <!-- <home-appointment/> -->
    <home-news :newsList="newsList"></home-news>
    <home-about></home-about>
  </div>
</template>

<script>
import HomeSwiper from './childrenComps/HomeSwiper'
import HomeProduct from './childrenComps/HomeProduct'
import HomeCase from './childrenComps/HomeCase'
// import HomeAppointment from './childrenComps/HomeAppointment'
import HomeNews from './childrenComps/HomeNews'
import HomeAbout from './childrenComps/HomeAbout'
import { GetHomeMultidata } from 'network/home'

export default {
  name: 'Home',
  components: {
    HomeSwiper,
    HomeProduct,
    HomeCase,
    // HomeAppointment,
    HomeNews,
    HomeAbout
  },
  watch: {
    homeLists () {
      this.banners = this.homeLists.banner
      this.caseBanners = this.homeLists.case
      this.products.category = this.homeLists.goodCates
      this.products.product = this.homeLists.goods
      this.newsList.cNews = this.homeLists.news.filter(item => item.cid === 3)
      this.newsList.iNews = this.homeLists.news.filter(item => item.cid === 4)
    }
  },
  created () {
    GetHomeMultidata().then(res => {
      this.homeLists = res.data
    })
  },
  data () {
    return {
      homeLists: [],
      banners: [],
      caseBanners: [],
      products: {
        category:
        [],
        product:
        []
      },
      newsList: {
        cNews:
        [],
        iNews:
        []
      }
    }
  }
}
</script>

<style scoped>
  .home {
    width: 100%;
  }
</style>
