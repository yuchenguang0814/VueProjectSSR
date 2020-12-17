<template>
  <div>
    <slot v-if="this.$route.params.id === undefined || nbanner !== undefined" name="nb" :props="nbanner" ></slot>
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
      newsList: {},
      nbanner: {}
    }
  },
  created () {
    this.changeNbanner()
    getNews().then(res => {
      this.news = res.data.new
    })
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
