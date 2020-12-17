<template>
<div>
  <slot name="nb" :props="nbanner" >
  </slot>
  <slot name="crumb"></slot>
    <div v-if="this.$route.path == '/about'">
    <about-us></about-us>
    <!-- <about-product></about-product> -->
    <about-cooperation></about-cooperation>
    </div>
  <router-view v-else>
  </router-view>
</div>
</template>

<script>
import AboutUs from './childrenComps/AboutUs'
// import AboutProduct from './childrenComps/AboutProduct'
import AboutCooperation from './childrenComps/AboutCooperation'
export default {
  name: '',
  components: {
    AboutUs,
    // AboutProduct,
    AboutCooperation
  },
  computed: {
  },
  data () {
    return {
      nbanner: {}
    }
  },
  created () {
    this.changeNbanner()
  },
  methods: {
    changeNbanner () {
      this.$store.commit('getPath', this.$route.path)
      this.nbanner = this.$store.getters.getPageNbanner
    }
  },
  beforeRouteEnter (to, from, next) {
    next(vm => {
      vm.changeNbanner()
    })
  },
  beforeRouteUpdate (to, from, next) {
    if (to.fullPath !== from.fullPath) {
      next()
      this.changeNbanner()
    }
  }
}

</script>

<style>
</style>
