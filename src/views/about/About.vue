<template>
<div>
  <slot name="nb" :props="$store.getters.getPageNbanner" >
  </slot>
  <slot name="crumb"></slot>
    <div v-if="this.$route.path == '/about'">
    <about-us></about-us>
    <about-product></about-product>
    <about-cooperation></about-cooperation>
    </div>
  <router-view v-else>
  </router-view>
</div>
</template>

<script>
import AboutUs from './childrenComps/AboutUs'
import AboutProduct from './childrenComps/AboutProduct'
import AboutCooperation from './childrenComps/AboutCooperation'
export default {
  name: '',
  components: {
    AboutUs,
    AboutProduct,
    AboutCooperation
  },
  computed: {
  },
  data () {
    return {

    }
  },
  methods: {
  },
  created () {
    this.$store.commit('getPath', this.$route.path)
  },
  mounted () {
  }
}

</script>

<style>
</style>
