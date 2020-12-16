<template>
  <div class="video">
    <slot v-if="this.$route.path == '/video'" name="nb" :props="$store.getters.getPageNbanner" ></slot>
    <slot name="crumb"></slot>
    <vid-view v-if="this.$route.path == '/video'"  :vid="vid"></vid-view>
    <router-view :vid="vid" v-else></router-view>
  </div>
</template>

<script>
import VidView from './childrenComps/VidView'
import { getVideos } from 'network/news'
export default {
  name: 'Vid',
  components: {
    VidView
  },
  data () {
    return {
      vid: []
    }
  },
  created () {
    getVideos().then(res => {
      this.vid = res.data.vid
    })
  },
  mounted () {
    this.$store.commit('getPath', this.$route.path)
  }
}
</script>

<style>
</style>
