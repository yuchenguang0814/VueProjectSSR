<template>
  <div>
    <!-- <slot v-if="this.$route.path == '/products'" name="nb" :props="$store.getters.getNbanner" ></slot> -->
    <slot name="crumb"></slot>
    <div  v-if="this.$route.path == '/products'" class="pro_index">
      <div class="pro_index_li" v-for="(item, index) in cateList" :key="item.cid">
    <div class="container category">
      <div class="proLeft b1">
        <img :src="require(`@/assets/image/icon_nums_${index + 1}.png`)" class="num">
        <img :src="`${$baseUrl + item.pageTitleImage}`" :alt="item.pageName" class="proImg">
        <div class="bt"><span>{{item.pageName}}</span><em 火热="">火热</em></div>
        <div class="text">{{item.pageDescription}}</div>
        <router-link :to="`/category/${item.cid}`" class="more">查看更多产品<img src="~assets/image/icon_jtr.png"></router-link>
        </div>
      <div class="proRight list">
        <mains v-if="productList !== ''" class="list" :List="fit(item.cid)"><img slot="dt1" src="~assets/image/icon_more.png"></mains>
      </div>
    </div>
  </div>
    </div>
    <router-view v-else></router-view>
  </div>
</template>

<script>
import Mains from 'components/common/main/Main'
import { getGood } from 'network/product'
export default {
  name: '',
  components: {
    Mains
  },
  data () {
    return {
      productList: ''
    }
  },
  created () {
    getGood().then(res => {
      this.productList = res.data.product
    })
  },
  computed: {
    cateList () {
      const list = this.$store.state.pageList.filter(item => item.id === 1)
      if (list[0]) {
        return list[0].child
      } else {
        return false
      }
    }
  },
  methods: {
    fit (id) {
      const arr = this.productList.filter(item => item.c_id === id)
      if (arr.length > 6) {
        return arr.slice(0, 6)
      } else {
        return arr
      }
    }
  }
}
</script>
<style>
.pro_index .pro_index_li {
  padding: 90px 0 50px 0
}

.pro_index .pro_index_li .container {
  position: relative;
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-justify-content: space-between;
  justify-content: space-between
}

.pro_index .pro_index_li .container:after {
  display: none
}

.pro_index .pro_index_li .container.category:before {
  content: '';
  position: absolute;
  left: -40px;
  top: -50px;
  width: 77px;
  height: 104px;
  background: url(~assets/image/icon_nums_0.png);
  background-size: 100% 100%;
  z-index: 2
}
.pro_index .pro_index_li .container.category .num {
  position: absolute;
  top: -50px;
}
.pro_index .pro_index_li:nth-child(even) {
  background: #f0f3fa
}

.pro_index .pro_index_li .proLeft {
  width: 300px;
  background-size: 100% 100%;
  color: #fff;
  border-top-right-radius: 25px;
  padding: 85px 30px 0 30px
}

.pro_index .pro_index_li .proLeft:before {
  content: '';
  position: absolute;
  left: 30px;
  top: -50px;
  width: 77px;
  height: 104px;
  background-size: 100% 100%;
  z-index: 3
}

.pro_index .pro_index_li .proLeft.b1 {
  height:556px;
  background-image: url(~assets/image/pro_bg01.jpg)
}
.pro_index .pro_index_li .proLeft.b1 span{
  z-index: 103;
}
.pro_index .pro_index_li .proLeft.b1 em{
  z-index: 103;
}
.pro_index .pro_index_li .proLeft.b1 .text{
  z-index: 103;
  position: relative;
}
.proImg {
  position: absolute;
  bottom: 50px;
  width: 250px;
  z-index: 1;
}
.pro_index .pro_index_li .proLeft .bt {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  z-index: 103;
}

.pro_index .pro_index_li .proLeft .bt span {
  font-size: 32px;
  color: #fff;
  font-weight: bold
}

.pro_index .pro_index_li .proLeft .bt em {
  background: url(~assets/image/icon_tb.png) no-repeat;
  width: 67px;
  height: 28px;
  background-size: cover;
  line-height: 28px;
  font-size: 16px;
  display: inline-block;
  color: #fff;
  text-align: center;
  margin-left: 15px;
  padding-left: 5px
}

.pro_index .pro_index_li .proLeft .text {
  font-size: 16px;
  color: #fff;
  line-height: 30px;
  padding: 15% 0;
  z-index:103;
}

.pro_index .pro_index_li .proLeft .more {
  font-size: 16px;
  color: #fff;
  border: 1px solid #05163f;
  padding: 14px 32px;
  display: inline-block;
  transition: all 0.5s;
  position: absolute;
  bottom: 20px;
  z-index: 103;
}

.pro_index .pro_index_li .proLeft .more img {
  height: 14px;
  width: auto;
  vertical-align: middle;
  margin-top: -2px;
  margin-left: 5px
}

.pro_index .pro_index_li .proLeft .more:hover {
  background: #05163f;
}

.pro_index .pro_index_li .proRight {
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  width: 0;
  margin-left: 30px
}
.proRight .main{
  padding: 0;
}
.proRight .main ul{
  width: 100%;
}

@media (max-width: 999px) {
  .pro_index .pro_index_li .proLeft.b1 {
    height: 200px;
    overflow: hidden;
  }
  .pro_index .pro_index_li .proLeft.b1 .proImg{
    width: 50%;
    right: 20px;
    top:50px;
  }
  .pro_index .pro_index_li .proLeft.b1 span{
    color:#000000;
  }
.pro_index .pro_index_li .proLeft.b1 .text{
  color:#000000;
}
  .pro_index .pro_index_li .proRight .container {
    padding:0 !important;
  }
  .pro_index .pro_index_li {
    padding: 40px 0 20px 0
  }

  .pro_index .pro_index_li .container {
    display: block
  }

  .pro_index .pro_index_li .container:before {
    left: 0px;
    top: -35px;
    width: 44px;
    height: 60px
  }

  .pro_index .pro_index_li .proLeft {
    width: 100%;
    padding: 25px 15px 160px 15px;
    background-size: 100% auto;
    background-position: center bottom;
    background-repeat: no-repeat;
    margin-bottom: 10px
  }

  .pro_index .pro_index_li .proLeft:before {
    left: 40px;
    top: -35px;
    width: 44px;
    height: 60px
  }

  .pro_index .pro_index_li .proLeft .bt span {
    font-size: 20px
  }

  .pro_index .pro_index_li .proLeft .bt em {
    width: 47px;
    height: 18px;
    line-height: 18px;
    font-size: 12px;
    margin-left: 5px;
    padding-left: 5px
  }

  .pro_index .pro_index_li .proLeft .text {
    font-size: 12px;
    line-height: 20px;
    padding: 10px 0
  }

  .pro_index .pro_index_li .proLeft .more {
    font-size: 12px;
    padding: 10px;
    line-height: 1;
    background: #e61e37;
    border-color: #e61e37;
    position: unset;
  }

  .pro_index .pro_index_li .proLeft .more img {
    height: 10px;
    margin-top: -2px;
    margin-left: 3px;
  }

  .pro_index .pro_index_li .proRight {
    width: 100%;
    margin-left: 0
  }
}
</style>
