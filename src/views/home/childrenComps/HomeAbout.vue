<template>
<div class="about">
  <div class="container">
    <div class="box">
      <div class="in-tit"><img src="http://qizhong114.com/static/home/img/tit_strong.png">
        <div class="dt"><img src="http://qizhong114.com/static/home/img/tit_zs.png">实力广东顺发</div>
        <div class="text">满足用户需求,提升生产效率,精密精确运行,安全可靠使用,三十年来我们始终如一，诚信服务每一位客户。</div>
      </div>
      <ul>
        <li>
          <div class="pic"><img src="http://qizhong114.com/static/home/img/icon-slhx1.png"></div>
          <div class="bt"><em>30</em>年</div>
          <p>发展历程</p>
        </li>
        <li>
          <div class="pic"><img src="http://qizhong114.com/static/home/img/icon-slhx2.png"></div>
          <div class="bt"><em>6</em>万m²</div>
          <p>占地面积</p>
        </li>
        <li>
          <div class="pic"><img src="http://qizhong114.com/static/home/img/icon-slhx3.png"></div>
          <div class="bt"><em>200</em>余台</div>
          <p>生产设备</p>
        </li>
        <li>
          <div class="pic"><img src="http://qizhong114.com/static/home/img/icon-slhx4.png"></div>
          <div class="bt"><em>50</em>多个</div>
          <p>远销国家</p>
        </li>
      </ul>
    </div>
  </div>
</div>
</template>

<script>
export default {
  name: 'HomeAbout'
}
</script>

<style>
.about {
  background: url(~assets/image/bj_slhx.jpg) no-repeat;
  background-size: cover;
  padding: 100px 0
}

.about .box {
  max-width: 853px
}

.about .in-tit {
  color: #fff
}

.about .in-tit .dt {
  color: #fff
}

.about ul {
  overflow: hidden;
  background: url(~assets/image/bj_slhx_kuang.png) no-repeat;
  background-size: 100% 100%;
  padding: 50px 105px
}

.about ul li {
  float: left;
  text-align: center;
  width: 25%;
  font-size: 20px
}

.about ul li .pic {
  display: inline-block;
  position: relative;
  border-radius: 50%;
  -webkit-transition: -webkit-transform ease-out .1s, background .2s;
  -moz-transition: -moz-transform ease-out .1s, background .2s;
  transition: transform ease-out .1s, background .2s
}

.about ul li .pic:after {
  pointer-events: none;
  position: absolute;
  width: 100%;
  height: 100%;
  content: '';
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  top: 0;
  left: 0;
  padding: 0;
  z-index: -1;
  opacity: 0;
  -webkit-transform: scale(.9);
  -moz-transform: scale(.9);
  -ms-transform: scale(.9);
  transform: scale(.9);
  border-radius: 50%
}

.about ul li .pic img {
  max-width: 74px;
  height: auto;
  transition: all .5s
}

.about ul li .pic:hover {
  -webkit-transform: scale(.93);
  -moz-transform: scale(.93);
  -ms-transform: scale(.93);
  transform: scale(.93)
}

.about ul li .pic:hover:after {
  -webkit-animation: sonarEffect 1.3s ease-out 75ms;
  -moz-animation: sonarEffect 1.3s ease-out 75ms;
  animation: sonarEffect 1.3s ease-out 75ms
}

.about ul li .bt {
  margin: 20px 0 5px 0
}

.about ul li .bt em {
  font-size: 30px;
  color: #051741;
  font-family: Impact Regular;
  font-weight: bold
}
</style>
