<template>
  <div class="gg">
    <slot name="nb" :props="$store.getters.getNbanner" class="11"></slot>
    <slot name="crumb"></slot>
    <contact-process></contact-process>
    <contact-map></contact-map>
  </div>
</template>

<script>
import ContactProcess from './childremComps/ContactProcess'
import ContactMap from './childremComps/ContactMap'
export default {
  components: {
    ContactProcess,
    ContactMap
  },
  data () {
    return {
      nbanners: [{
        path: '/contact',
        backgroundImage: 'http://www.qizhong114.com/uploads/images/20200430/2a3e1eac861362af929652f35c506a26.jpg',
        inTitImg: 'http://www.qizhong114.com/uploads/images/20200430/f226bac12c20312db39e38b09c4d16d1.png',
        dtImg: 'http://qizhong114.com/static/home/img/tit_zs.png',
        text: '为客户成功、为行业进步、为国家强盛、为奋斗者铸梦!”广东顺发起重设备有限公司致力打造起重机机械设备全球高端品牌，专业与专注是我们的特质，我们希望通过不懈的努力与探索去做到行业的引领者，成为最受信赖的全球智能起重机设备解决方案供应提供商。'
      }],
      childPath: []
    }
  },
  mounted () {
    this.$store.commit('getnb', { data1: this.nbanners, data2: this.childPath })
    this.$store.commit('getPath', this.$route.path)
  }
}
</script>

<style>
.gg .nbanner .container {
  height: 600px !important;
}
@media (max-width:999px) {
  .gg .nbanner .container {
    height: 280px !important;
  }
}
</style>
