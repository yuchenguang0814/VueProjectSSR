<template>
  <div id="app">
    <header-nav></header-nav>
    <router-view/>
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
@import "assets/css/mstyle.css";
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
.container .in-tit {
  text-align: center;
  overflow: hidden;
  padding-bottom: 35px;
}
.container .in-tit>img {
  height: 88px;
  width: auto;
  vertical-align: middle;
}
.container .in-tit .dt {
  font-size: 38px;
  color: #05163f;
  font-weight: bold;
  margin-top: -60px;
}
.container .in-tit .text {
  font-size: 18px;
  margin-top: 20px;
}
</style>
