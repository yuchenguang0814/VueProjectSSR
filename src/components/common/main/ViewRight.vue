<template>
  <div class="viewRight">
    <slot name="cont"></slot>
      <div class="box_xgboxr">
        <div class="tit">相关产品</div>
        <div class="box">
          <ul class="picx">
            <li v-show="index<=4" v-for="(item,index) in productList" :key=item.id><a :href="`/product/${item.id}`">
              <div class="pic"><img :src="`${$baseUrl + item.image}`"></div>
              <span>{{item.name}}</span></a></li>
          </ul>
        </div>
      </div>
    </div>
</template>

<script>
import { getGoodsByCid } from 'network/product'
export default {
  props: {
    pro: {
      type: Number,
      default () {
        return -1
      }
    }
  },
  data () {
    return {
      productList: []
    }
  },
  created () {
    if (this.pro === -1) {
      getGoodsByCid({ id: 12 }).then(res => {
        this.productList = res.data.product
      })
    } else {
      getGoodsByCid({ id: this.pro }).then(res => {
        this.productList = res.data.product
      })
    }
  }
}
</script>

<style>
.container .viewRight {
    width: 260px
}

.box_xgboxl {
    padding: 35px 0
}

.box_xgboxr .box {
    background: #f0f3fa
}

.box_xgboxr {
    overflow: hidden
}

.box_xgboxr .tit {
    color: #fff;
    font-size: 20px;
    line-height: 50px;
    background: url(~assets/image/icon_tzs.png) no-repeat center;
    background-size: auto 100%;
    text-align: center;
    height: 50px;
    margin: 35px auto -25px auto;
    position: relative
}

.box_xgboxr .tit:first-of-type {
    margin-top: 0
}

.box_xgboxr .box {
    background: #fff;
    margin: 0 auto;
    border: 1px solid #ced4e0;
    padding: 45px 20px 25px 20px;
    overflow: hidden
}

.box_xgboxr .picx li {
    text-align: center;
    margin-top: 20px
}

.box_xgboxr .picx li a {
    display: block;
    overflow: hidden
}

.box_xgboxr .picx li .pic {
    overflow: hidden
}

.box_xgboxr .picx li .pic img {
    width: 100%;
    height: auto;
    transition: all .5s
}

.box_xgboxr .picx li span {
    display: block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    font-size: 16px;
    padding: 12px 0 0 0
}

.box_xgboxr .picx li:first-child {
    margin-top: 0
}

.box_xgboxr .picx li:hover .pic img {
    transform: scale(1.05)
}
@media (max-width:999px) {
  .container .viewRight {
    display: none;
  }
}
</style>
