<template>
  <header>
    <div class="container">
      <!-- logo栏 -->
      <div class="logo">
        <a href="#">
          <img src="~assets/image/logo.jpg" alt="logo图">
        </a>
      </div>
      <!-- 手机端小图标 -->
      <div class="navbut"></div>
      <!-- 导航栏 -->
      <div class="box">
        <!-- 导航栏顶部 -->
        <div class="top">
          <ul>
            <li>
              <a href="">产品中心</a>
              <div class="sub">
                <a>1号产品</a>
                <a>2号产品</a>
                <a>3号产品</a>
              </div>
            </li>
            <li>
              <a href="">解决方案</a>
              <div class="sub">
                <a>1号解决方案</a>
                <a>2号解决方案</a>
              </div>
            </li>
            <li>
              <a href="">视频中心</a>
              <div class="sub">
                <a>1号产品视频</a>
                <a>2号产品视频</a>
                <a>3号产品视频</a>
              </div>
            </li>
          </ul>
          <div class="tel">
            <p>全国统一销售热线</p>
            <div class="t">
              86-<em>1888888888</em>
            </div>
          </div>
        </div>
        <!-- 导航栏底部 -->
        <nav>
          <ul>
            <li><a href="">首页</a></li>
            <li>
              <a href="">关于我们</a>
              <div class="sub">
                <a>企业历程</a>
                <a>荣誉证书</a>
              </div>
            </li>
            <li>
              <a href="">新闻中心</a>
              <div class="sub">
                <a>行业新闻</a>
                <a>展会风采</a>
              </div>
            </li>
            <li><a href="">有问必答</a></li>
            <li><a href="">服务支持</a></li>
            <li><a href="">联系我们</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  name: 'HeaderNav'
}
</script>

<style>
/* header 样式*/
header .container {
  display: flex;
  align-items: center;
  justify-content: space-between
}

header .container:after {
  display: none
}

header .logo img {
  height: 68px;
  width: auto
}

header .box {
  flex: 1;
  width: 0;
  max-width: 880px;
  margin-left: 20px
}

header .top {
  padding: 18px 0;
  display: flex;
  align-items: center;
  justify-content: space-between
}

header .top ul {
  flex: 1;
  width: 0;
  padding: 0 3%
}

header .top ul li {
  float: left;
  width: 29.33333333%;
  text-align: center;
  margin: 0 2%;
  position: relative;
  z-index: 1000
}

header .top ul li>a {
  border: 1px solid #e6e9f0;
  display: block;
  padding: 12px 0;
  box-sizing: border-box;
  border-radius: 30px;
  font-size: 18px;
  font-weight: bold;
  box-shadow: 2px 0 15px rgba(21, 53, 133, 0.2) inset
}

header .top ul li .sub {
  display: none;
  border-radius: 30px;
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 100%;
  min-width: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  text-align: center;
  line-height: 40px
}

header .top ul li .sub a {
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #fff;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1)
}

header .top ul li .sub a:hover {
  background-color: rgba(0, 0, 0, 0.5)
}

header .top ul li:hover>a {
  color: #e61e37;
  box-shadow: 2px 0 15px rgba(230, 30, 55, 0.2) inset;
  border: 1px solid #fbebed
}

header .top .tel {
  background: url(~assets/image/icon_header_tel.png) left center no-repeat;
  padding-left: 50px;
  line-height: 1;
}

header .top .tel .t {
  padding: 5px 0 0 0
}

header .top .tel .t em {
  color: #e61e37;
  font-size: 20px
}

header nav {
  border-top: 2px solid #f0f3fa
}
header nav ul li {
  float: left;
  width: 16.333%;
  text-align: center;
  position: relative;
  z-index: 999;
}
header nav ul li>a {
  line-height: 60px;
  display: block;
  overflow: hidden;
  font-size: 18px;
  font-weight: bold;
  color: #05163f;
  position: relative;
}

header nav ul li>a:before,
header nav ul li>a:after {
  content: '';
  width: 0;
  height: 2px;
  background: #e61e37;
  transition: all 0.5s;
  position: absolute
}

header nav ul li>a:before {
  bottom: 0;
  right: 0
}

header nav ul li>a:after {
  left: 0;
  top: 0
}

header nav ul li:hover>a:before,
header nav ul li:hover>a:after {
  width: 100%
}

header nav ul li .sub {
  display: block;
  position: absolute;
  left: 0;
  top: 100%;
  min-width: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  text-align: center;
  line-height: 40px
}

header nav ul li .sub a {
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #fff;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1)
}

header nav ul li .sub a:hover {
  background-color: rgba(0, 0, 0, 0.5)
}

header nav ul li.on>a {
  color: #e61e37
}
</style>
