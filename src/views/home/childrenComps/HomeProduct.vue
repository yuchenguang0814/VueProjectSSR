<template>
  <div class="product">
    <div class="product-swiper">
      <div class="product-item" v-for="item in products.category" :key="item.id">
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
      <div class="container">
        <div class="in-tit">
          <img src="http://qizhong114.com/static/home/img/tit_products.png">
          <div class="dt">
            <img src="http://qizhong114.com/static/home/img/tit_zs.png">
            "广东顺发-起重机专业制造和服务供应商"
          </div>
          <div class="text">推荐设备：单梁起重机、双梁起重机、欧式起重机</div>
        </div>
        <div class="pro-item">
          <ul>
            <li v-for="item in products.product" :key="item.id">
              <a :href="item.link">
                <div class="pic"><img :src="item.image"></div>
                <span>{{item.name}}</span>
                <div class="box">
                  <p><img src="http://qizhong114.com/static/home/img/icon_zdjl.png"><em>适用起重量：</em>{{item.parameter1}}</p>
                  <p><img src="http://qizhong114.com/static/home/img/icon_scnl.png"><em>适用跨度：</em>{{item.parameter2}}m</p>
                </div>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

export default {
  name: 'HomeProduct',
  props: {
    products: {
      type: Object,
      default () {
        return {}
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
.product-container ul {
  margin: -15px;
  overflow: hidden;
}
.product-container ul li {
  float: left;
  width: 25%;
  padding: 15px;
}
.product-container ul li a {
  display: block;
  overflow: hidden;
}
.product-container li .pic {
  position: relative;
  overflow: hidden;
  box-shadow: 2px 0 35px rgba(21, 53, 129, 0.2) inset;
  background: #3498db;
  border-bottom-right-radius: 20px
}
.product-container li .pic:before {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(255, 255, 255, 0.5);
  content: '';
  transition: transform 0.6s;
  transform: scale3d(1.9, 1.4, 1) rotate3d(0, 0, 1, 45deg) translate3d(0, -100%, 0)
}
.product-container li .pic img {
  width: 100%;
  height: auto;
  transform: scale(1.05);
  transition: all .5s
}
.product-container li:hover .pic:before {
  transform: scale3d(1.9, 1.4, 1) rotate3d(0, 0, 1, 45deg) translate3d(0, 100%, 0)
}
.product-container li:hover .pic img {
  transform: scale(1);
  opacity: 0.4
}
.product-container li span {
  background: #4b556e;
  text-align: center;
  margin-top: -20px;
  padding-top: 20px;
  line-height: 60px;
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #fff;
  font-size: 20px;
  font-weight: bold;
  transition: all .5s
}
.product-container li:hover span {
  background: #05163f;
  color: #e61e37
}

.product-container li .box {
  color: #555f7d;
  background: url(~assets/image/bj_scs_bg.png);
  background-size: 100% 100%;
  padding: 15px 0 25px 30px;
  width: 101.5%;
  margin-left: -2px
}

.product-container li .box em {
  font-size: 16px;
  color: #e61e37
}

.product-container li .box img {
  width: 18px;
  vertical-align: middle;
  margin-top: -3px;
  margin-right: 5px
}

.product-container li .box p {
  margin-top: 10px
}
</style>
