<template>
<div>
  <div class="main_cate">
  <div class="container" >
    <ul v-if="cateList !== false">
        <li :class="`${item.cid === cid ? 'on': ''}`" v-for="item in cateList" :key="item.cid"><router-link :to="`/category/${item.cid}`"><img :src="`${$baseUrl + item.pageTitleImage}`">
        <div class="bt"><span>{{item.pageName}}</span></div>
        </router-link></li>
    </ul>
  </div>
</div>
<div class="line_height60"></div>
<div class="container">
    <div class="in-tit"><img src="~assets/image/tit_products.png">
      <div class="dt"><img src="~assets/image/tit_zs.png">同类产品</div>
      <div class="text">产品系列完备，满足客户的差异化需求；绿色环保理念与创新成熟工艺的结合，悉心打造，为您创值增值</div>
    </div>
<mains class="list" :List = "productList" ><img slot="dt1" src="~assets/image/icon_more.png"></mains>
  </div>
  </div>
</template>

<script>
import Mains from 'components/common/main/Main'
import { getGoodsByCid } from 'network/product'
export default {
  name: '',
  components: {
    Mains
  },
  beforeRouteEnter (to, from, next) {
    getGoodsByCid({ id: to.params.id }).then(res => {
      next(vm => {
        vm.changeProList()
      })
    })
  },
  beforeRouteUpdate (to, from, next) {
    if (to.fullPath !== from.fullPath) {
      next()
      this.changeProList()
    }
  },
  methods: {
    changeProList () {
      getGoodsByCid({ id: this.cid }).then(res => {
        this.productList = res.data.product
      })
    }
  },
  computed: {
    cateList () {
      const list = this.$store.state.pageList.filter(item => item.id === 1)
      if (list[0]) {
        const arr = list[0].child.filter(item => item.cid === this.cid)[0]
        document.title = arr.pageName
        document.querySelector('meta[name="keywords"]').setAttribute('content', arr.pageKey)
        document.querySelector('meta[name="description"]').setAttribute('content', arr.pageDescription)
        return list[0].child
      } else {
        return false
      }
    },
    cid () {
      return parseInt(this.$route.params.id)
    }
  },
  props: {
  },
  data () {
    return {
      categoryList: [],
      productList: []
    }
  }
}

</script>

<style>

.main_cate {
  background: #05163f;
  margin-bottom: 10px
}

.main_cate ul li {
  float: left;
  width: 16.66666667%;
  text-align: center;
  position: relative
}

.main_cate ul li:before {
  border-width: 25px 25px 0;
  border-style: solid;
  border-color: #05163f transparent transparent;
  position: absolute;
  top: 100%;
  left: 50%;
  transform: translate(-50%, 0);
  content: "";
  display: none
}

.main_cate ul li a {
  display: block;
  overflow: hidden;
  color: #fff;
  padding: 35px 0
}

.main_cate ul li img {
  height: 127px;
  width: auto;
  max-width: 100%
}

.main_cate ul li .bt {
  text-align: center;
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis
}

.main_cate ul li .bt span {
  display: inline-block;
  font-size: 18px;
  font-weight: bold;
  margin-top: 25px;
  position: relative;
  padding: 0 10px
}

.main_cate ul li .bt span:before,
.main_cate ul li .bt span:after {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  content: '';
  height: 18px;
  width: 46px;
  background-size: 100% 100%
}

.main_cate ul li .bt span:before {
  background-image: url(~assets/image/icon_fy.png);
  right: 100%
}

.main_cate ul li .bt span:after {
  background-image: url(~assets/image/icon_fr.png);
  left: 100%
}

.main_cate ul li:hover a {
  color: #e61e37
}

.main_cate ul li.on:before {
  display: block
}

.main_cate ul li.on a {
  color: #e61e37
}
@media (max-width: 999px) {
  .main_cate {
    margin-bottom: 0
  }

  .main_cate ul {
    padding: 15px 0;
    overflow: hidden;
    margin: -5px
  }

  .main_cate ul li {
    width: 33.33333333%;
    padding: 5px
  }

  .main_cate ul li a {
    padding: 0
  }

  .main_cate ul li img {
    height: 60px
  }

  .main_cate ul li .bt span {
    font-size: 14px;
    margin-top: 5px;
    padding: 0 5px
  }

  .main_cate ul li .bt span:before,
  .main_cate ul li .bt span:after {
    height: 9px;
    width: 23px
  }

  .main_cate ul li.on:before {
    display: none
  }
}
</style>
