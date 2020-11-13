<template>
  <div id="app">
    <header-nav></header-nav>
    <router-view :pageList="pageList">
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
      pageList: {}
    }
  },
  mounted () {
    this.$store.commit('checkIsPc')
  },
  computed: {
    pageDate () {
      return this.$store.state.pageList
    }
  },
  watch: {
    pageDate () {
      this.setcate()
    }
  },
  methods: {
    setcate () {
      this.pageList = this.pageDate
      // console.log('app')
      // console.log(this.pageList)
    }
  },
  created () {
    this.$store.dispatch('getPageDate')
  }
}
</script>
<style>
@import "assets/css/base.css";
</style>
