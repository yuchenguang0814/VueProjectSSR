<template>
<div>
  <div class="main_cate">
  <div class="container">
    <ul>
          <li class="on"><a href="http://www.qizhong114.com/overheadcranes"><img src="http://www.qizhong114.com/uploads/images/20200702/ebfa72cc414dffcdd54ed488a12b1d04.png">
        <div class="bt"><span>桥式起重机</span></div>
        </a></li>
            <li><a href="http://www.qizhong114.com/gantrycranes"><img src="http://www.qizhong114.com/uploads/images/20200702/7caa35382275aa32799261a9e79f109c.png">
        <div class="bt"><span>门式起重机</span></div>
        </a></li>
            <li><a href="http://www.qizhong114.com/eotcranes"><img src="http://www.qizhong114.com/uploads/images/20200702/a174bddad8dcf546ad7e6c65f7c62f62.png">
        <div class="bt"><span>欧式起重机</span></div>
        </a></li>
            <li class="on"><a href="http://www.qizhong114.com/Specialcrane"><img src="http://www.qizhong114.com/uploads/images/20200702/5d6c266ec4c4cf5525ed5c142790febb.png">
        <div class="bt"><span>特殊定制起重机</span></div>
        </a></li>
            <li><a href="http://www.qizhong114.com/Cranefittings"><img src="http://www.qizhong114.com/uploads/images/20200702/c22c5d9f1243bbcf6aab1b1960ed8dcb.png">
        <div class="bt"><span>起重机配件</span></div>
        </a></li>
            <li><a href="http://www.qizhong114.com/gdsb"><img src="http://www.qizhong114.com/uploads/images/20200506/72c5cf0880e1eb2cb1f224b18881d9d9.png">
        <div class="bt"><span>更多设备</span></div>
        </a></li>
    </ul>
  </div>
</div>
<div class="line_height60"></div>
<div class="container">
    <div class="in-tit"><img src="http://www.qizhong114.com/static/home/img/tit_products.png">
      <div class="dt"><img src="http://www.qizhong114.com/static/home/img/tit_zs.png">同类产品</div>
      <div class="text">产品系列完备，满足客户的差异化需求；绿色环保理念与创新成熟工艺的结合，悉心打造，为您创值增值</div>
    </div>
<mains class="list"><div slot="dt1"><img src="http://www.qizhong114.com/static/home/img/icon_more.png">LH型双梁桥式起重机视频1121323</div></mains>
  </div>
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
