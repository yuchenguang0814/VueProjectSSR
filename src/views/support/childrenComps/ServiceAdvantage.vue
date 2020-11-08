<template>
<div class="box_advantage">
<div class="container">
    <div class="in-tit"><img src="http://www.qizhong114.com/static/home/img/tit_advantage.png">
      <div class="dt"><img src="http://www.qizhong114.com/static/home/img/tit_zs.png">顺发起重的六大服务优势</div>
    </div>
    <div class="box">
      <ul>
        <li><img src="http://www.qizhong114.com/static/home/img/icon_fwys1.png">
          <div class="text">30年的品牌，集研发、生产、销售、服务于一体，更值得信赖！</div>
        </li>
        <li><img src="http://www.qizhong114.com/static/home/img/icon_fwys2.png">
          <div class="text">有桥式、门式、欧式、港口起重机设备等产品系列，型号齐全，多种选择！</div>
        </li>
        <li><img src="http://www.qizhong114.com/static/home/img/icon_fwys3.png">
          <div class="text">产品已通过ISO9001、CE和国家及质量体系认证。</div>
        </li>
      </ul>
      <div class="pic"><img src="http://www.qizhong114.com/static/home/img/pic_ys.png"></div>
      <ul>
        <li><img src="http://www.qizhong114.com/static/home/img/icon_fwys4.png">
          <div class="text">24h全天在线；60s人工响应，为您提供及时、有效、专业的服务。</div>
        </li>
        <li><img src="http://www.qizhong114.com/static/home/img/icon_fwys5.png">
          <div class="text">免费提供生产方案设计，一年内免费维修、更贴心！</div>
        </li>
        <li><img src="http://www.qizhong114.com/static/home/img/icon_fwys6.png">
          <div class="text">产品远销国内外50多个国家和地区，多家企业用户的共同选择</div>
        </li>
      </ul>
    </div>
  </div>
</div>
</template>

<script>
export default {

}
</script>

<style>
.box_advantage {
    background: url(~assets/image/bj_mobfourbox_bg.jpg) no-repeat;
    background-size: cover;
    padding: 35px 0;
}

.box_advantage .in-tit .dt {
    color: #cddcff
}

.box_advantage .box {
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    align-items: center;
    -webkit-justify-content: space-between;
    justify-content: space-between;
    padding: 20px 0 0 0
}

.box_advantage .box ul {
    width: 30%;
    margin: -30px 0;
    overflow: hidden
}

.box_advantage .box ul li {
    padding: 30px 0;
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    align-items: center
}

.box_advantage .box ul li img {
    height: 88px;
    width: auto;
    margin-right: 15px
}

.box_advantage .box ul li .text {
    -webkit-box-flex: 1;
    -moz-box-flex: 1;
    -webkit-flex: 1;
    -ms-flex: 1;
    flex: 1;
    width: 0;
    color: #97afe6;
    line-height: 30px;
    font-size: 16px
}

.box_advantage .box .pic {
    width: 33%
}

.box_advantage .box .pic img {
    width: 100%;
    height: auto
}
@media (max-width: 999px) {
  .box_advantage {
    padding: 20px 0;
  }
  .box_advantage .box {
        display: block;
        overflow: hidden;
        padding: 0 5%
    }

    .box_advantage .box ul {
        width: 100%;
        margin: -5px 0
    }

    .box_advantage .box ul li {
        padding: 5px 0
    }

    .box_advantage .box ul li img {
        height: 54px;
        margin-right: 10px
    }

    .box_advantage .box ul li .text {
        line-height: 20px;
        font-size: 12px
    }

    .box_advantage .box ul:last-of-type {
        padding: 5px 0 0 0
    }

    .box_advantage .box .pic {
        display: none
    }
}
</style>
