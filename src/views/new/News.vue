<template>
  <div>
    <slot name="nb" :props="$store.getters.getPageNbanner" ></slot>
    <slot name="crumb"></slot>
    <div v-if="this.$route.path == '/news'" class="box_news">
      <div class="container">
        <news-list></news-list>
      </div>
    </div>
    <router-view v-else></router-view>
  </div>
</template>

<script>
import NewsList from './childrenComps/NewsList'
export default {
  name: '',
  components: {
    NewsList
  },
  data () {
    return {

    }
  },
  created () {
    this.$store.commit('getPath', this.$route.path)
  },
  mounted () {
  }
}
</script>
<style>
.box_news {
    padding: 50px 0;
    background: #f0f3fa
}
@media (max-width: 999px) {
  .box_news {
        padding: 20px 0;
        margin: 0 -10px
    }
}
</style>
