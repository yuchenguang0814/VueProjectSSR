<template>
  <div class="in_box box_wdxl">
      <div class="container">
        <div class="in-tit"><img src="http://qizhong114.com/static/home/img/tit_products_bg.png">
          <div class="dt"><img src="http://qizhong114.com/static/home/img/tit_zs.png">起重机制造基地</div>
          <div class="texts">{{this.$store.state.userList.companyName}}先后学习的欧洲同行业起重设备制造商的先进技术和工艺，建立了先进的现代化自动焊接生产线，并由广东省科学厅成立了欧式起重机研发中心。公司以科学的管理方法，精益求精的制造工艺，勇于创新的制造理念。</div>
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
</template>

<script>
export default {
  name: '',
  components: {
  },
  data () {
    return {
    }
  }
}

</script>

<style>
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
@media (max-width: 999px) {
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
}
</style>
