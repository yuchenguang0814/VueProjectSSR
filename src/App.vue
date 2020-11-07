<template>
  <div id="app">
    <header-nav></header-nav>
    <router-view>
      <div slot="nb" slot-scope="props"><nbanner :nbanners="props"></nbanner></div>
      <div slot="crumb"><breadcrumb/></div>
    </router-view>
    <footer-box></footer-box>
    <service></service>
  </div>
</template>
<script>
import HeaderNav from 'components/common/header/Header'
import FooterBox from 'components/common/footer/Footer'
import Service from 'components/common/fixed/Service'
import Breadcrumb from 'components/common/Breadcrumb'
import Nbanner from 'components/common/Nbanner'
export default {
  components: {
    HeaderNav,
    FooterBox,
    Service,
    Breadcrumb,
    Nbanner
  },
  methods: {
    isPc () {
      this.$store.commit('checkIsPc')
    }
  },
  data () {
    return {
    }
  },
  mounted () {
    this.isPc()
  }
}
</script>
<style>
@import "assets/css/base.css";
</style>
