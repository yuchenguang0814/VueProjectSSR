<template>
  <div v-show="!this.isH" class="list_head">
    <div class="container">
    <p>您当前的位置:
      <span v-for="(item, index) in breadList" :key="index">
        <router-link class="breadTitle" :to="item.path">
        <span>{{item.meta.title}}</span>
      </router-link>
      <span v-show="index!=spnum">></span>
      </span>
    </p>
    </div>
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
      this.spnum = this.breadList.length - 1
    }
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
  border-top: #f0f3fa 1px solid;
  border-bottom: #f0f3fa 1px solid;
  padding: 15px 0;
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
@media (max-width: 999px) {
  .list_head {
    padding: 10px 0;
    font-size: 12px;
  }
}
</style>>
