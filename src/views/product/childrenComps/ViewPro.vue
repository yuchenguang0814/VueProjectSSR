<template>
  <div class="view_pro" id="tiao_detail">
  <div class="viewLeft">
      <div v-if="this.$store.state.isPc == true" class="pic1" >
      <photo-card :img="`${$baseUrl + product.image}`"></photo-card>
      </div>
      <div v-else class="pic">
        <img :src="`${$baseUrl + product.image}`" alt="">
      </div>
    <ul class="cs">
      <li><em>免</em>免费设计</li>
      <li><em>节</em>节能高效</li>
      <li><em>贴</em>终身服务</li>
    </ul>
  </div>
  <div class="viewRight">
    <div class="kj">
      <div class="tit">{{product.name}}</div>
      <div class="text"><p style="white-space: normal;">{{product.overView}}</p><p style="white-space: normal;"></p></div>
      <ul class="canshu">
        <li><img src="~assets/image/icon_nyjl.png"><span>机器重量</span><em>{{product.weight}}KG</em></li>
        <li><img src="~assets/image/icon_nysc.png"><span>外形尺寸</span><em>{{product.dimensions}}M</em></li>
      </ul>
      <div class="info"> <p><br></p>
      <p style="white-space: normal;">
        <img src="~assets/image/d03ee38d49ca96ec5da55fc54db9584f.png" title="模块化设计.png" alt="模块化设计.png" width="40" height="40">机器进行优化设计、实现模块化、结构紧凑、新型的技术设计改善整机性能，提供通用化程度。</p>
      <p style="white-space: normal;"><img src="~assets/image/e2543e0169d57ca0fee45a2f9b21ad8d.png" title="先进制造工艺.png" width="40" height="40" alt="先进制造工艺.png">采用先进的制造工艺流程和设备,例如采用机器人自动焊接系统、等离子切割机、高效抛丸机等。</p>
      <p style="white-space: normal;"><img src="~assets/image/466d621f6b94b1ec20867eaf7504b05f.png" title="高安全性.png" alt="高安全性.png" width="40" height="40">我司采用先进的制造工艺保证机器的精密度、采用优良的零部件、质量稳定、安全装置灵敏度高。</p> </div>
      <div class="but"> <a :href="`http://wpa.qq.com/msgrd?uin=${this.$store.state.userList.userQQ}`" target="_blank" class="baoj">获取报价</a>
        <div class="tel"> <img src="~assets/image/pic_pro_ewm.jpg">
          <p>24h全国免费咨询热线<br>
            86-<em>{{this.$store.state.userList.userPhone}}</em></p>
        </div>
      </div>
    </div>
  </div>
</div>
</template>

<script>
import PhotoCard from 'components/common/photoCard.vue'
export default {
  name: '',
  props: {
    product: {
      type: Object,
      default () {
        return {}
      }
    }
  },
  components: {
    PhotoCard
  },
  created () {
  }
}
</script>

<style>
.view_pro {
  background: #f0f3fa;
  padding-bottom: 50px;
  overflow: hidden;
  margin-bottom: 50px
}

.view_pro .viewLeft {
  max-width: 800px;
  width: 42%;
  margin-top: 40px;
  position: absolute;
  left: 4%
}

.view_pro .viewLeft .pic1 {
    display: grid;
    grid-column-gap: 30px;
    grid-row-gap: 30px;
    align-items: center;
    justify-content: center;
    width: 100%;
    max-width: 700px;
}

.view_pro .viewLeft .pic1 img {
  width: 100%;
  height: auto
}
.view_pro .viewLeft .pic {
    overflow: hidden;
}

.view_pro .viewLeft .pic img {
  width: 100%;
  height: auto
}
.view_pro .viewLeft .cs {
  margin-top: 20px;
  padding: 0 12% 0 0
}

.view_pro .viewLeft .cs li {
  width: 33.33333333%;
  float: left;
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  -webkit-justify-content: center;
  justify-content: center;
  text-align: center;
  font-size: 16px;
  color: #788291
}

.view_pro .viewLeft .cs li em {
  color: #fff;
  box-sizing: border-box;
  margin-right: 5px;
  width: 39px;
  display: inline-block;
  text-align: center;
  background: url(~assets/image/icon_sp_bg.png) no-repeat;
  background-size: 39px 32px;
  line-height: 32px;
  padding-left: 8px
}
.view_pro .viewRight {
  float: right;
  background: #adbbe1;
  background: -webkit-linear-gradient(#adbbe1 20%, #0d173a);
  background: -o-linear-gradient(#adbbe1 20%, #0d173a);
  background: -moz-linear-gradient(#adbbe1 20%, #0d173a);
  background: linear-gradient(#adbbe1 20%, #0d173a);
  max-width: 1100px;
  width: 58%;
  padding: 55px 0 50px 7%;
  box-sizing: border-box;
  border-bottom-left-radius: 50px
}

.view_pro .viewRight .kj {
  max-width: 660px
}

.view_pro .viewRight .tit {
  font-size: 34px;
  color: #05163f;
  font-weight: bold;
  position: relative
}

.view_pro .viewRight .tit:before {
  background: url(~assets/image/icon_fire.png) no-repeat;
  display: inline-block;
  content: "";
  width: 29px;
  height: 34px;
  vertical-align: middle;
  margin-top: -10px;
  margin-right: 10px;
  background-size: cover
}

.view_pro .viewRight .text {
  font-size: 16px;
  color: #465174;
  margin-top: 10px;
  margin-bottom: 30px
}

.view_pro .viewRight .text b {
  color: #e61e37
}

.view_pro .viewRight .canshu {
  background: #f0f3fa;
  border-radius: 10px;
  overflow: hidden;
  padding: 20px 0;
  position: relative
}
.view_pro .viewRight .canshu:before {
  content: '';
  position: absolute;
  left: 50%;
  top: 20px;
  bottom: 20px;
  width: 1px;
  background: #dbe0ed
}

.view_pro .viewRight .canshu li {
  width: 50%;
  float: left;
  text-align: center
}

.view_pro .viewRight .canshu li img {
  height: 48px;
  width: auto
}

.view_pro .viewRight .canshu li span {
  display: block;
  font-size: 16px;
  color: #2b3040;
  margin: 15px auto 5px
}

.view_pro .viewRight .canshu li em {
  font-size: 16px;
  color: #e61e37;
  font-weight: bold
}.view_pro .right .info {
  overflow: hidden;
  margin-top: 10px
}

.view_pro .viewRight .info p {
  color: #f0f3fa;
  border-bottom: 1px dashed #27335c;
  padding: 15px 0
}

.view_pro .viewRight .but {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  padding-top: 25px
}

.view_pro .viewRight .but .baoj {
  display: block;
  overflow: hidden;
  background-image: url(~assets/image/pic_pro_bj.png);
  background-size: 100% 100%;
  height: 114px;
  line-height: 114px;
  width: 304px;
  color: #fff;
  font-size: 20px;
  text-align: center;
  text-indent: 2em
}

.view_pro .viewRight .but .baoj:hover {
  background-image: url(~assets/image/pic_pro_bj2.png)
}

.view_pro .viewRight .but .tel {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  color: #fff;
  margin-left: 5%
}

.view_pro .viewRight .but .tel img {
  height: 65px;
  width: auto;
  margin-right: 10px
}

.view_pro .viewRight .but .tel em {
  font-size: 22px;
  color: #e61e37;
  font-weight: bold;
  display: inline-block;
  margin-top: 8px
}
@media (max-width: 999px) {
  .view_pro {
    padding-bottom: 20px;
    margin-bottom: 0
  }

  .view_pro .viewLeft {
    width: 100%;
    margin-top: 0;
    position: static
  }

  .view_pro .viewLeft .cs {
    margin-top: 0;
    padding: 10px 0;
    overflow: hidden
  }

  .view_pro .viewLeft .cs li {
    font-size: 12px
  }

  .view_pro .viewRight {
    width: 100%;
    padding: 15px;
    border-bottom-left-radius: 20px
  }

  .view_pro .viewRight .kj {
    max-width: inherit
  }

  .view_pro .viewRight .tit {
    font-size: 20px
  }

  .view_pro .viewRight .tit:before {
    width: 19px;
    height: 24px;
    margin-top: -10px;
    margin-right: 5px
  }

  .view_pro .viewRight .text {
    font-size: 12px;
    margin-top: 5px;
    margin-bottom: 10px
  }

  .view_pro .viewRight .canshu {
    padding: 10px 0
  }

  .view_pro .viewRight .canshu:before {
    top: 10px;
    bottom: 10px
  }

  .view_pro .viewRight .canshu li {
    line-height: 18px
  }

  .view_pro .viewRight .canshu li img {
    height: 38px
  }

  .view_pro .viewRight .canshu li span {
    font-size: 12px;
    margin: 6px 0 0 0
  }

  .view_pro .viewRight .canshu li em {
    font-size: 12px
  }
  .view_pro .viewRight .info {
    margin-top: 5px;
    font-size: 12px;
    line-height: 20px
  }

  .view_pro .viewRight .info p {
    padding: 10px 0
  }

  .view_pro .viewRight .but {
    padding-top: 10px
  }

  .view_pro .viewRight .but .baoj {
    /* -webkit-box-flex: 1;
    -moz-box-flex: 1;
    -webkit-flex: 1;
    -ms-flex: 1;
    flex: 1; */
    /* width: 0; */
    height: 64px;
    line-height: 64px;
    font-size: 14px
  }

  .view_pro .viewRight .but .tel {
    margin-left: 10px;
    font-size: 12px
  }

  .view_pro .viewRight .but .tel img {
    height: 45px;
    margin-right: 10px
  }

  .view_pro .viewRight .but .tel em {
    font-size: 16px;
    margin-top: 5px
  }
}
</style>
