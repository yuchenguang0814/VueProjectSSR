<template>
  <div v-show="!this.isH" class="list_head">
    <p>您当前的位置:
      <span v-for="(item, index) in breadList" :key="index">
        <a class="breadTitle" :href="item.path">
        <span>{{item.meta.title}}</span>
      </a>
      <span v-show="index!=spnum-1">></span>
      </span>
    </p>
  </div>
</template>
<script>
export default {
  name: 'Breadcrumb',
  data () {
    return {
      breadList: [], // 路由集合,
      isH: false,
      spnum: 0
    }
  },
  watch: {
    $route () {
      this.getBreadcrumb()
    }
  },
  methods: {
    isHome (route) {
      if (route != null) {
        this.isH = route.name === 'Home'
      } else {
        this.isH = false
      }
    },
    getBreadcrumb () {
      let matched = this.$route.matched
      // 如果不是首页
      if (!this.isH) {
        matched = [{ path: '/home', meta: { title: '首页' } }].concat(matched)
      }
      this.breadList = matched
    }
  },
  updated () {
    this.spnum = document.getElementsByClassName('breadTitle').length
  },
  created () {
    this.getBreadcrumb()
    this.isHome(this.$route.matched[0])
  }
}
</script>
<style>
.list_head {
  color: #555f7d;
}
.list_head .breadTitle {
    margin-right: 5px;
    margin-left: 5px;
    color: #555f7d;
    text-decoration: none;
    cursor: pointer;
}
.list_head .breadTitle:hover {
    color: #e61e37;
}
</style>>
