<template>
<div>
  <nbanner>
  <div slot="nbanner" class="nbanner" style="background-image: url(http://www.qizhong114.com/uploads/images/20200606/387917e2e5f00ed88d24a3ef54a4efbd.jpg);">
    <div class="container">
      <div class="box">
        <div class="in-tit"><img src="http://www.qizhong114.com/uploads/images/20200430/9afd9297dbb252428302d09fb40646de.png">
          <div class="dt"><img src="http://qizhong114.com/static/home/img/tit_zs.png">{{this.$route.meta.title}}</div>
          <div class="text">广东顺发起重设备有限公司在原南海市于1994年成立，工厂面积约40000m2，至今已是领先的A级起重机专业制造和服务供应商，公司引进欧洲先进的起重机技术，集起重机研发、制造、销售、安装、服务于一体。主要生产欧式起重机、双梁桥式起重机、单梁桥式起重机、门式起重机、悬挂起重机、旋臂起重机、通用钢丝绳电动葫芦等。</div>
        </div>
        <ul class="tab">
          <li><a href="/about/factory">工厂实景</a></li>
          <li><a href="/about/honor">荣誉资质</a></li>
        </ul>
      </div>
    </div>
  </div>
  </nbanner>
  <slot name="crumb"></slot>
    <div v-if="this.$route.path == '/about'">
    <div class="in_box">
      <div class="container">
        <div class="in-tit"><img src="http://qizhong114.com/static/home/img/tit_hongxing.png">
          <div class="dt"><img src="http://qizhong114.com/static/home/img/tit_zs.png">起重机生产制造及服务商</div>
          <div class="texts">广东顺发起重设备有限公司是一家以生产制造起重机为主，集科研、生产、销售为一体的企业。公司总部位于佛山市三水区南山镇华侨开发区，占地共6万平方米，拥有3万平方米标准化重型工业厂房，各种大、中型金加工、铆焊、自动焊接机器人、自动埋弧焊接设备、钢材表面处理设备、装配设备等200余台。</div>
        </div>
        <div class="box_about">
          <div class="box">
            <div class="right"><img src="http://www.qizhong114.com/uploads/images/20200530/0ba3269dc033a9c77e3ab0bf0d3c6cc3.jpg"></div>
            <div class="left">
              <div class="t1">起重机设备专业的制造商和服务商</div>
              <div class="t2">责任成就品质，品质打造品牌</div>
              <div class="text">广东顺发起重设备有限公司是领先的A级起重机专业制造和服务供应商，公司引进欧洲先进的起重机技术，集起重机研发、制造、销售、安装、服务于一体。主要生产欧式起重机、双梁桥式起重机、单梁桥式起重机、门式起重机、悬挂起重机、旋臂起重机、通用钢丝绳电动葫芦；其它非标起重机及各类起重机专用部件，包括：欧式卷扬小车，欧式电动葫芦，欧式端梁等起重机产品。我们拥有丰富行业经验的技术专家和专业的技术服务团队，为客户提供完善的售前、售后服务体系。</div>
            </div>
          </div>
          <ul>
            <li><img src="http://qizhong114.com/static/home/img/icon-gy1.png">
              <p>30年生产研发经验</p>
            </li>
            <li><img src="http://qizhong114.com/static/home/img/icon-gy2.png">
              <p>6万㎡标准化厂房</p>
            </li>
            <li><img src="http://qizhong114.com/static/home/img/icon-gy3.png">
              <p>生产设备200余台</p>
            </li>
            <li><img src="http://qizhong114.com/static/home/img/icon-gy4.png">
              <p>远销50多个国家</p>
            </li>
          </ul>
        </div>
            <div class="in-tit"><img src="http://qizhong114.com/static/home/img/tit_strength.png">
          <div class="dt"><img src="http://qizhong114.com/static/home/img/tit_zs.png">起重机制造基地</div>
          <div class="texts">广东顺发起重设备有限公司先后学习的欧洲同行业起重设备制造商的先进技术和工艺，建立了先进的现代化自动焊接生产线，并由广东省科学厅成立了欧式起重机研发中心。公司以科学的管理方法，精益求精的制造工艺，勇于创新的制造理念。</div>
        </div>
            <ul class="xun_sdjd">
              <li>
            <div class="box">
              <div class="pic"><img src="http://www.qizhong114.com/uploads/images/20200530/3d914906ca6ea735b1e3f586709033b5.jpg"></div>
              <div class="dt"><img src="http://qizhong114.com/static/home/img/icon_dw.png"><span>欧式起重机生产车间</span></div>
            </div>
          </li>
                <li>
            <div class="box">
              <div class="pic"><img src="http://www.qizhong114.com/uploads/images/20200530/61683d06656be16a1f6dfdfc07906ea1.jpg"></div>
              <div class="dt"><img src="http://qizhong114.com/static/home/img/icon_dw.png"><span>全自动焊接机器人</span></div>
            </div>
          </li>
                <li>
            <div class="box">
              <div class="pic"><img src="http://www.qizhong114.com/uploads/images/20200707/714f10ebaaf970adbc1be3290b960785.jpg"></div>
              <div class="dt"><img src="http://qizhong114.com/static/home/img/icon_dw.png"><span>起重机生产车间</span></div>
            </div>
          </li>
              </ul>
      </div>
    </div>
    <div class="in_box box_wdxl">
      <div class="container">
        <div class="in-tit"><img src="http://qizhong114.com/static/home/img/tit_products_bg.png">
          <div class="dt"><img src="http://qizhong114.com/static/home/img/tit_zs.png">起重机制造基地</div>
          <div class="texts">广东顺发起重设备有限公司先后学习的欧洲同行业起重设备制造商的先进技术和工艺，建立了先进的现代化自动焊接生产线，并由广东省科学厅成立了欧式起重机研发中心。公司以科学的管理方法，精益求精的制造工艺，勇于创新的制造理念。</div>
        </div>
        <div class="xun">
          <ul class="tab">
            <li class="on"><a href="/overheadcranes"><img src="http://www.qizhong114.com/uploads/images/20200702/744bf3734e0382db18f3741bb532628f.jpg"></a></li>
            <li><a href="/gantrycranes"><img src="http://www.qizhong114.com/uploads/images/20200702/3cd9ed18b88fae28910a1bc701f5bf71.jpg"></a></li>
            <li><a href="/eotcranes"><img src="http://www.qizhong114.com/uploads/images/20200702/292a5258b6d076b2a1455e82ce2700fd.jpg"></a></li>
          </ul>
          <ul class="pic">
            <li><a href="/overheadcranes"><img src="http://www.qizhong114.com/uploads/images/20200521/6bc1ee9c78692e41069f76b770c61a7a.jpg"><span>桥式起重机</span></a></li>
            <li style="display: none;"><a href="/gantrycranes"><img src="http://www.qizhong114.com/uploads/images/20200702/8afc67a4c300483764e980db282b0bf9.jpg"><span>门式起重机</span></a></li>
            <li style="display: none;"><a href="/eotcranes"><img src="http://www.qizhong114.com/uploads/images/20200702/0a7464a97119ef313f350b3de8af4cc1.jpg"><span>欧式起重机</span></a></li>
            <li style="display: none;"><a href="/Specialcrane"><img src="http://www.qizhong114.com/uploads/images/20200702/daf4a06e7d2a132af37785659f5e8ea4.jpg"><span>特殊起重机</span></a></li>
            <li style="display: none;"><a href="/Cranefittings"><img src="http://www.qizhong114.com/uploads/images/20200702/7d7ed5d617ead58171d92f7d74f4e76a.jpg"><span>起重机配件</span></a></li>
            <li style="display: none;"><a href="/gdsb"><img src="http://www.qizhong114.com/uploads/images/20200702/d4a17be7352226cb760056d4a7780743.png"><span>更多设备</span></a></li>
          </ul>
          <ul class="tab">
            <li><a href="/Specialcrane"><img src="http://www.qizhong114.com/uploads/images/20200702/b7f5e16236c9d029e9108af0fc2f4573.jpg"></a></li>
            <li><a href="/Cranefittings"><img src="http://www.qizhong114.com/uploads/images/20200702/7c4f04f52d068005a49c323e96290204.jpg"></a></li>
            <li><a href="/gdsb"><img src="http://www.qizhong114.com/uploads/images/20200702/948d4f843be0dafab80bd0da716151b0.jpg"></a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="box_guoji">
    <div class="container">
      <div class="in-tit"><img src="http://qizhong114.com/static/home/img/tit_cooperation.png">
        <div class="dt"><img src="http://qizhong114.com/static/home/img/tit_zs.png">与国际对话，长期战略合作</div>
        <div class="texts">公司立足广东，放眼全国，产品销售至全国各地，并出口于美国、俄罗斯、澳大利亚、印尼、菲律宾、越南、南非及非洲等国，并追随国家“21世纪海上丝绸之路”一带一路的轨迹，用优质的产品助力前进！在海外，我们与代理商和工程公司建立了长期战略合作伙伴关系，满足国际市场对优质起重机日益增长的需求，我们通过持续管理变革，实现高效的流程化运作，来确保为客户提供优质的产品和服务,产品质量长期处于行业领先地位，为客户创造长期的价值服务。 </div>
      </div>
    </div>
    <div class="pic"><img src="http://www.qizhong114.com/uploads/images/20200707/812d30d7141da53332c4c71d3002e196.jpg"></div>
  </div>
    </div>
  <router-view v-else>
  </router-view>
</div>
</template>

<script>
import Nbanner from 'components/common/Nbanner'
export default {
  name: '',
  components: {
    Nbanner
  },
  data () {
    return {
    }
  },
  mounted () {
    console.log()
  }
}

</script>

<style>
.in_box {
  padding: 35px 0;
}
.box_about {
  padding: 0 0 70px 0
}

.box_about .box {
  overflow: hidden
}

.box_about .box .left {
  float: left;
  width: 45%;
  padding: 20px 20px 150px 0
}

.box_about .box .left .t1 {
  border-left: 4px solid #030c79;
  padding-left: 20px;
  line-height: 35px;
  font-size: 22px;
  color: #4b556e;
  font-weight: bold
}

.box_about .box .left .t2 {
  font-size: 30px;
  color: #030c79;
  font-weight: bold;
  margin: 15px auto 35px;
  padding-left: 20px
}

.box_about .box .left .text {
  font-size: 16px;
  color: #737c99;
  line-height: 30px;
  padding-left: 20px;
  text-align: justify
}

.box_about .box .right {
  width: 53%;
  float: right
}

.box_about .box .right img {
  width: 100%;
  height: auto
}

.box_about ul {
  max-width: 1180px;
  margin-top: -93px;
  position: relative;
  z-index: 5;
  background: #fff;
  border-radius: 5px;
  box-shadow: 2px 0 20px rgba(21, 53, 129, 0.2);
  overflow: hidden;
}

.box_about ul li {
  float: left;
  text-align: center;
  width: 25%;
  padding: 50px 0;
  border-radius: 15px
}

.box_about ul li img {
  height: 60px;
  width: auto
}

.box_about ul li p {
  font-size: 16px;
  color: #788291;
  display: block;
  overflow: hidden;
  margin-top: 5px
}
.xun_sdjd {
  margin: -10px;
  display: inline-block;
}

.xun_sdjd li {
  width: 33.33333333%;
  float: left;
  padding: 10px
}

.xun_sdjd li .box {
  background: #fff;
  box-shadow: 2px 0 20px rgba(21, 53, 129, 0.2);
  position: relative
}

.xun_sdjd li .box:after {
  width: 96%;
  height: 30px;
  content: "";
  display: block;
  background: #aab9e8;
  position: absolute;
  bottom: -10px;
  z-index: -1;
  border-bottom-right-radius: 15px;
  border-bottom-left-radius: 15px;
  left: 50%;
  transform: translate(-50%, 0)
}

.xun_sdjd li .box:before {
  width: 92%;
  height: 30px;
  content: "";
  display: block;
  background: #d6dff9;
  position: absolute;
  bottom: -20px;
  z-index: -2;
  border-bottom-right-radius: 15px;
  border-bottom-left-radius: 15px;
  left: 50%;
  transform: translate(-50%, 0);
  box-shadow: 0 4px 20px rgba(40, 55, 85, 0.2)
}

.xun_sdjd li .pic {
  overflow: hidden
}

.xun_sdjd li .pic img {
  width: 100%;
  height: auto
}

.xun_sdjd li .dt {
  text-align: center;
  font-size: 16px;
  color: #05163f;
  padding: 15px 0;
  background: #fff;
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis
}

.xun_sdjd li .dt img {
  width: auto;
  height: 28px;
  vertical-align: middle;
  margin-top: -5px;
  margin-right: 10px
}
.box_wdxl {
  background: url(~assets/image/bj_mobfourbox_bg.jpg) no-repeat;
  background-size: cover
}

.box_wdxl .in-tit .dt {
  color: #cddcff
}

.box_wdxl .in-tit .texts {
  color: #cddcff
}

.box_wdxl .xun {
  overflow: hidden
}

.box_wdxl .xun .tab {
  float: left;
  width: 25%
}

.box_wdxl .xun .tab li {
  margin-top: 20px;
  position: relative
}

.box_wdxl .xun .tab li:before {
  display: none;
  width: 0;
  height: 0;
  border: 10px solid transparent;
  border-left-color: #ebf2ff;
  position: absolute;
  right: -20px;
  top: 50%;
  margin-top: -10px;
  content: ''
}

.box_wdxl .xun .tab li a {
  display: block;
  overflow: hidden;
  border-radius: 10px;
  background-color: #eee
}

.box_wdxl .xun .tab li a img {
  width: 100%;
  max-width: 320px;
  height: auto
}

.box_wdxl .xun .tab li:first-child {
  margin-top: 0
}

.box_wdxl .xun .tab li.on:before {
  display: block
}

.box_wdxl .xun .tab:last-of-type li:before {
  right: auto;
  left: -20px;
  border-left-color: transparent;
  border-right-color: #ebf2ff
}

.box_wdxl .xun .pic {
  float: left;
  width: 50%;
  padding: 0 1.5%
}

.box_wdxl .xun .pic a {
  display: block;
  overflow: hidden;
  position: relative
}

.box_wdxl .xun .pic a img {
  width: 100%;
  height: auto
}

.box_wdxl .xun .pic a span {
  position: absolute;
  bottom: 0;
  left: 0;
  font-size: 24px;
  font-weight: bold;
  padding: 70px 15px 15px 15px;
  background: url(~assets/image/bj_anse_bg.png) repeat center;
  background-size: 100% 100%;
  color: #fff;
  text-align: center;
  width: 100%;
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis
}
.box_guoji {
  padding: 70px 0 0 0
}

.box_guoji .pic {
  overflow: hidden
}

.box_guoji .pic img {
  max-width: 100%;
  height: auto
}

@media (max-width: 999px) {
  .in_box {
  padding: 20px 0;
}
  .box_about {
    padding: 0 0 20px 0
  }

  .box_about .box .left {
    width: 100%;
    padding: 15px;
    background: #f7f7f7
  }

  .box_about .box .left .t1 {
    border-left-width: 0;
    padding-left: 0;
    line-height: normal;
    font-size: 16px
  }

  .box_about .box .left .t2 {
    font-size: 20px;
    margin: 5px 0;
    padding-left: 0
  }

  .box_about .box .left .text {
    font-size: 12px;
    line-height: 20px;
    padding-left: 0
  }

  .box_about .box .right {
    width: 100%
  }

  .box_about ul {
    margin-top: 0;
    padding: 20px;
    position: relative
  }

  .box_about ul:before {
    content: '';
    position: absolute;
    left: 0;
    top: 50%;
    width: 100%;
    height: 1px;
    background: transparent;
    background: -webkit-linear-gradient(left, transparent 0%, #eee 50%, transparent 100%);
    background: -o-linear-gradient(left, transparent 0%, #eee 50%, transparent 100%);
    background: -moz-linear-gradient(left, transparent 0%, #eee 50%, transparent 100%);
    background: linear-gradient(to left, transparent 0%, #eee 50%, transparent 100%)
  }

  .box_about ul:after {
    content: '';
    position: absolute;
    left: 50%;
    top: 0;
    width: 1px;
    height: 100%;
    background: transparent;
    background: -webkit-linear-gradient(top, transparent 0%, #eee 50%, transparent 100%);
    background: -o-linear-gradient(top, transparent 0%, #eee 50%, transparent 100%);
    background: -moz-linear-gradient(top, transparent 0%, #eee 50%, transparent 100%);
    background: linear-gradient(to top, transparent 0%, #eee 50%, transparent 100%)
  }

  .box_about ul li {
    width: 50%;
    padding: 20px 0
  }

  .box_about ul li img {
    height: 50px
  }

  .box_about ul li p {
    font-size: 12px;
    margin-top: 5px
  }

  .xun_sdjd {
    margin: -15px 0
  }

  .xun_sdjd li {
    width: 100%;
    padding: 15px 0
  }

  .xun_sdjd li .dt {
    font-size: 14px;
    padding: 10px 0
  }

  .xun_sdjd li .dt img {
    height: 22px;
    margin-right: 5px;
  }
  .box_wdxl .xun {
    margin: 0 -5px
  }

  .box_wdxl .xun .tab {
    width: 50%;
    padding: 0 5px
  }

  .box_wdxl .xun .tab li {
    margin-top: 10px
  }
  .box_wdxl .xun .tab li:before {
    display: none
  }

  .box_wdxl .xun .tab li a img {
    max-width: inherit
  }

  .box_wdxl .xun .tab li:first-child {
    margin-top: 0
  }

  .box_wdxl .xun .tab li.on:before {
    display: none
  }

  .box_wdxl .xun .pic {
    display: none
  }
  .box_guoji {
    padding: 20px 0 0 0
  }
}
</style>
