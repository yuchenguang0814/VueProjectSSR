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
    <home-swiper :banners="banners">
    </home-swiper>
  </div>
</template>

<script>
import HomeSwiper from './HomeSwiper'

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
    HomeSwiper
  }
}
</script>

<style scoped>
.case {
  padding: 70px 55px 50px 55px;
}

</style>
