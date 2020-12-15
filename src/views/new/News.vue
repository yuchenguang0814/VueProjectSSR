<template>
  <div>
    <slot v-if="this.$route.params.id === undefined" name="nb" :props="$store.getters.getPageNbanner" ></slot>
    <slot name="crumb"></slot>
    <div v-if="this.$route.path == '/news'" class="box_news">
      <div class="container" v-if="newsList !== ''">
        <news-list :news="news"></news-list>
      </div>
    </div>
    <router-view v-else></router-view>
  </div>
</template>

<script>
import NewsList from './childrenComps/NewsList'
import { getNews } from 'network/news'
export default {
  name: '',
  components: {
    NewsList
  },
  data () {
    return {
      news: [],
      newsList: {}
    }
  },
  created () {
    this.$store.commit('getPath', this.$route.path)
    getNews().then(res => {
      this.news = res.data.new
    })
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
