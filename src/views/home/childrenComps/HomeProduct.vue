<template>
  <div class="product">
    <div class="product-category pc">
      <div class="ih-item circle effect3 right_to_left"  v-for="item in products.category" :key="item.id">
        <a :href="item.link">
            <div class="img"><img :src="item.imagePro" alt="img"></div>
            <div class="info">
                <h3>{{item.name}}</h3>
                <p>{{item.description}}</p>
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
.product-category {
  display: flex;
  padding: 30px 50px 30px 50px;
  background-image: url(~assets/image/bj_wljg.jpg);
  background-size: 100% 100%;
}
.ih-item {
    position: relative;
    transition: all 0.35s ease-in-out;
    flex:1;
}

.ih-item,
.ih-item * {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.ih-item a {
    color: #333;
}

.ih-item a:hover {
    text-decoration: none;
}

.ih-item img {
    width: 100%;
    height: 100%;
}

.ih-item.circle {
    position: relative;
    width: 220px;
    height: 220px;
    border-radius: 50%;
    margin-right: 60px;
}

.ih-item.circle .img {
    position: relative;
    width: 220px;
    height: 220px;
    border-radius: 50%;
}

.ih-item.circle .img:before {
    position: absolute;
    display: block;
    content: '';
    width: 100%;
    height: 100%;
    border-radius: 50%;
    box-shadow: inset 0 0 0 16px rgba(255, 255, 255, 0.6), 0 1px 2px rgba(0, 0, 0, 0.3);
    -webkit-transition: all 0.35s ease-in-out;
    -moz-transition: all 0.35s ease-in-out;
    transition: all 0.35s ease-in-out;
}

.ih-item.circle .img img {
    border-radius: 50%;
}

.ih-item.circle .info {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    text-align: center;
    border-radius: 50%;
    backface-visibility: hidden;
}
.ih-item.circle.effect3 .img {
    z-index: 11;
    transition: all 0.35s ease-in-out;
}
.ih-item.circle.effect3 .info {
    background: #333333;
    opacity: 0;
    pointer-events: none;
    transition: all 0.35s ease-in-out;
}

.ih-item.circle.effect3 .info h3 {
    color: #fff;
    text-transform: uppercase;
    position: relative;
    letter-spacing: 2px;
    font-size: 22px;
    margin: 0 30px;
    padding: 55px 0 0 0;
    height: 110px;
    text-shadow: 0 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.3);
}

.ih-item.circle.effect3 .info p {
    color: #bbb;
    padding: 10px 5px;
    font-style: italic;
    margin: 0 30px;
    font-size: 12px;
    border-top: 1px solid rgba(255, 255, 255, 0.5);
}

.ih-item.circle.effect3.left_to_right a:hover .img {
    transform: scale(0.5) translateX(100%);
}

.ih-item.circle.effect3.right_to_left .img {
    transform: scale(1) translateX(0);
}

.ih-item.circle.effect3.right_to_left .info {
    transform: translateX(100%);
}

.ih-item.circle.effect3.right_to_left a:hover .img {
    transform: scale(0.5) translateX(-100%);
}

.ih-item.circle.effect3.right_to_left a:hover .info {
    opacity: 1;
    transform: translateX(0);
}
.product-container {
  width:100%;
  padding: 35px 0;
  background-color: #f0f3fa;
  display: inline-block;
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
