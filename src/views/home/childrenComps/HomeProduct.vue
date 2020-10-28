<template>
  <div class="product">
    <div class="product-swiper">
      <div class="product-item" v-for="item in products" :key="item.id">
        <a :href="item.link"><span>{{item.name}}</span>
        <p>{{item.description}}</p>
        <div class="box">
          <img :src="item.imagePro" class="p">
          <img src="~assets/image/icon_num_5.png" class="num">
        </div>
        </a>
      </div>
    </div>
    <div class="product-container">
        <div class="pro-tit">
          <img src="http://qizhong114.com/static/home/img/tit_products.png">
          <div class="dt">
            <img src="http://qizhong114.com/static/home/img/tit_zs.png">
            "广东顺发-起重机专业制造和服务供应商"
          </div>
          <div class="text">推荐设备：单梁起重机、双梁起重机、欧式起重机</div>
        </div>
        <div class="pro-item">
          <ul>
            <li>
              <a href="">
                <div class="pic">
                  <img src="" alt="">
                </div>
                <span></span>
                <div class="box">
                  <p></p>
                  <p></p>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
  </div>
</template>

<script>

export default {
  name: 'HomeProduct',
  props: {
    products: {
      type: Array,
      default () {
        return []
      }
    }
  }
}
</script>

<style scoped>
.product {
  position: relative;
  overflow: hidden;
  width: 100%;
  height: 100%;
}
.product-swiper {
  padding: 30px;
  margin-left: 20px;
  list-style: none;
  box-sizing:content-box;
  display: flex;
}
.product-item {
  flex:1;
}
.product-item a {
  display: block;
  overflow: hidden;
  background: url(~assets/image/bj_sb_bg.png) no-repeat;
  background-size: 100% 100%;
  padding: 25px 45px 25px 30px;
  margin-right: 20px;
}
.product-item span {
  font-size: 26px;
  color: #05163f;
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  transition: all .5s;
  font-weight: bold
}
.product-item  p {
  font-size: 16px;
  color: #555f7d;
  height: 56px;
  line-height: 28px;
  margin: 20px 0 25px 0;
  display: block;
  overflow: hidden
}
.product-item .box {
  margin: 0 -25px 0 0
}
.product-item .box .p {
  width: 50%;
  height: auto;
  float: left;
  transition: all .5s
}
.product-item .box .num {
  width: 45%;
  height: auto;
  margin-top: 20px;
  float: right;
}
.product-item a:hover span {
  color: #e61e37
}

.product-item a:hover .box .p {
  margin-left: -15px
}

.product-container {
  width:100%;
  padding: 35px 0;
  background-color: #f0f3fa;
}
.product-container .pro-tit {
  text-align: center;
  overflow: hidden;
  padding-bottom: 35px;
}
.product-container .pro-tit>img {
  height: 88px;
  width: auto;
  vertical-align: middle;
}
.product-container .pro-tit .dt {
  font-size: 38px;
  color: #05163f;
  font-weight: bold;
  margin-top: -60px;
}
.product-container .pro-tit .text {
  font-size: 18px;
  margin-top: 20px;
}
</style>
