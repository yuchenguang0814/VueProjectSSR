<template>
  <div id="app">
    <header-nav></header-nav>
    <router-view>
    </router-view>
    <footer-box></footer-box>
  </div>
</template>
<script>
import HeaderNav from 'components/common/header/Header'
import FooterBox from 'components/common/Footer'

export default {
  components: {
    HeaderNav,
    FooterBox
  }
}
</script>
<style>
@import "assets/css/base.css";
</style>
