<template>
  <div>
    <!-- <slot v-if="this.$route.path == '/products'" name="nb" :props="$store.getters.getNbanner" ></slot> -->
    <slot name="crumb"></slot>
    <div  v-if="this.$route.path == '/products'" class="pro_index">
      <div class="pro_index_li">
    <div class="container category">
      <div class="proLeft b1">
        <div class="bt"><span>桥式起重机</span><em 变频="">变频</em></div>
        <div class="text">我们作为优质的起重机设备提供商，我们能为您提供品质良好的桥式起重机，具体主要包括LD型电动单梁桥式起重机、LH型双梁桥式起重机、QD型通用桥式起重机等各种不同类型的桥式起重机设备，并根据您的具体要求，量身定制配套的整体设计和施工方案。</div>
        <a href="http://www.qizhong114.com/overheadcranes" class="more">查看更多产品<img src="http://www.qizhong114.com/static/home/img/icon_jtr.png"></a> </div>
      <div class="proRight list">
        <mains><div slot="dt1"><img src="http://www.qizhong114.com/static/home/img/icon_more.png">LH型双梁桥式起重机视频1121323</div></mains>
      </div>
    </div>
  </div>
    </div>
    <router-view v-else></router-view>
  </div>
</template>

<script>
import Mains from 'components/common/main/Main'
export default {
  name: '',
  components: {
    Mains
  },
  data () {
    return {
      nbanners: [{
        path: '/products',
        backgroundImage: 'http://www.qizhong114.com/uploads/images/20200704/5e82270fe8eaf738812aae7eeeb791e1.jpg',
        inTitImg: '',
        dtImg: '',
        text: ''
      }, {
        path: '/products/category'
      }, {
        path: '/products/product'
      }]
    }
  },
  mounted () {
    this.$store.commit('getPath', this.$route.path)
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
  background-image: url(~assets/image/pro_bg01.jpg)
}

.pro_index .pro_index_li .proLeft.b1:before {
  background-image: url(~assets/image/icon_nums_1.png)
}

.pro_index .pro_index_li .proLeft .bt {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center
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
  padding: 15% 0
}

.pro_index .pro_index_li .proLeft .more {
  font-size: 16px;
  color: #fff;
  border: 1px solid #05163f;
  padding: 14px 32px;
  display: inline-block;
  transition: all 0.5s;
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

@media (max-width: 999px) {
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
    border-color: #e61e37
  }

  .pro_index .pro_index_li .proLeft .more img {
    height: 10px;
    margin-top: -2px;
    margin-left: 3px
  }

  .pro_index .pro_index_li .proRight {
    width: 100%;
    margin-left: 0
  }
}
</style>
