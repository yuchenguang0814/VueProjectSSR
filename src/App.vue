<template>
  <div id="app">
    <header-nav></header-nav>
    <div id="nav">
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link>
    </div>
    <router-view/>
  </div>
</template>
<script>
import HeaderNav from 'components/common/Header'
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
