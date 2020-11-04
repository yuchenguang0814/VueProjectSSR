<template>
  <div id="app">
    <header-nav></header-nav>
    <router-view>
    </router-view>
    <footer-box></footer-box>
    <service></service>
  </div>
</template>
<script>
import HeaderNav from 'components/common/header/Header'
import FooterBox from 'components/common/footer/Footer'
import Service from 'components/common/fixed/Service'

export default {
  components: {
    HeaderNav,
    FooterBox,
    Service
  },
  methods: {
    isPc () {
      this.$store.commit('checkIsPc')
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
