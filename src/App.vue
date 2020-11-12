<template>
  <div id="app">
    <header-nav :navList="homeList.page" :childList="homeList.category"></header-nav>
    <router-view :homeList="homeList">
      <div slot="nb" slot-scope="props"><nbanner :nbanners="props"></nbanner></div>
      <div slot="crumb"><breadcrumb/></div>
    </router-view>
    <footer-box></footer-box>
    <customer></customer>
  </div>
</template>
<script>
import HeaderNav from 'components/common/header/Header'
import FooterBox from 'components/common/footer/Footer'
import Customer from 'components/common/fixed/Customer'
import Breadcrumb from 'components/common/Breadcrumb'
import Nbanner from 'components/common/Nbanner'
export default {
  components: {
    HeaderNav,
    FooterBox,
    Customer,
    Breadcrumb,
    Nbanner
  },
  data () {
    return {
      homeList: {}
    }
  },
  mounted () {
    this.$store.commit('checkIsPc')
  },
  computed: {
    homeDate () {
      return this.$store.state.homeList
    }
  },
  watch: {
    homeDate () {
      this.setcate()
    }
  },
  methods: {
    setcate () {
      this.homeList = this.homeDate
      console.log(this.homeList)
    }
  },
  created () {
    this.$store.dispatch('getHomeDate')
  }
}
</script>
<style>
@import "assets/css/base.css";
</style>
