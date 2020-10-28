<template>
  <div id="app">
    <header-nav></header-nav>
    <router-view/>
  </div>
</template>
<script>
import HeaderNav from 'components/common/header/Header'

export default {
  components: {
    HeaderNav
  }
}
</script>
<style>
  @import "assets/css/base.css";
  .container {
    width: 100%;
    max-width: 1300px;
    margin: 0 auto;
  }
  .pc {
    display: block
  }

  .wap {
    display: none
  }
</style>
