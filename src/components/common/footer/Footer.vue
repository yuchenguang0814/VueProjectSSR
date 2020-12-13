<template>
<footer>
  <div class="box_hengdh" style="background-image: url(http://www.qizhong114.com/uploads/images/20200523/dec449f80c4338e88c46f33326de3b86.png);">
    <div class="container">
      <div class="box">
        <div class="dt">创造客户价值 助力客户成功</div>
        <div class="text">
          广东顺发凭借良好的声誉，优异的品质及完善的服务赢得世界点赞，在国内外众多企业大放异彩。
        </div>
      </div>
    </div>
  </div>
  <div class="in_box">
    <div class="container">
      <ul class="box_dpxun">
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/c728e8297c13173cd3ba5a597ac98b76.jpg"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/8ee6b563ffc4170bb779a8a796bf1ee1.jpg"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/10ba92c1fe047cec1b6b3f58d5f4f820.jpg"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/657a109811615b7ddc9c45a394a714b4.jpg"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200701/12355299ed87f137257fde9ccc48e738.png"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/34f2e1150ec1711b83d3da078d8baeed.jpg"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/183d0c21d4564ec9b7d30049dc47b3ff.jpg"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/9b4cd95f83bb7e39aaed375c6e2a9c2e.jpg"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/97700b5749c5a0a0ce197c6ce45cdbf4.jpg"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/71256f583e6136f5701fb5c8feab97be.jpg"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/46e25a68c983fedfc0297d6ff6540bed.jpg"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/aa950cb4d0e47c8d6ed57f3a8691e72f.jpg"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/ebd904d9f28a7d1cb3e6669ef7fa9efc.jpg"></a></li>
              <li><a href="javascript:;"><img src="http://www.qizhong114.com/uploads/images/20200608/8b3a5bbd9880bd9344eebe9ebea00b79.jpg"></a></li>
            </ul>
    </div>
  </div>
  <div class="footer">
    <div class="container">CopyRight {{this.$store.state.userList.companyName}} 版权所有 全国销售热线：86-{{this.$store.state.userList.userPhone}} {{this.$store.state.userList.name}}</div>
  </div>
</footer>
</template>

<script>
export default {
}
</script>

<style>
.box_hengdh {
  background-position: center center;
  background-repeat: repeat
}

.box_hengdh .container {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  height: 220px
}

.box_hengdh .container:after {
  display: none
}

.box_hengdh .dt {
  font-size: 24px;
  color: #fff;
  border-left: 5px solid #e61e37;
  padding: 0 0 0 10px;
  margin-bottom: 20px
}
footer .in_box {
  padding: 50px 0;
}
.box_hengdh .text {
  color: #fff;
  font-size: 16px;
  line-height: 2
}

.box_dpxun {
  overflow: hidden;
  margin: -5px
}

.box_dpxun li {
  float: left;
  width: 14.28%;
  padding: 5px
}

.box_dpxun li a {
  display: block;
  overflow: hidden;
  border: 1px solid #ccc;
  padding: 2px
}

.box_dpxun li a img {
  width: 100%;
  height: auto;
  transition: all .5s
}

.box_dpxun li a img:hover {
  transform: scale(1.05)
}
.footer {
  display: inline-block;
  width: 100%;
  background: #182133;
  font-size: 14px;
  color: #fff;
  padding: 20px 0;
  text-align: center
}

.footer a {
  color: #fff
}

.footer a:hover {
  color: #e61e37
}

.footer .left {
  float: left
}

.footer .left .icp {
  margin: 0 10px
}

.footer .right {
  float: right
}

.footer .right a {
  margin-left: 20px
}

.footer .right a:first-child {
  margin-left: 0
}
@media (max-width: 999px) {
  footer {
    padding-bottom: 44px;
  }
  .box_hengdh {
    background-size: auto 100%
  }

  .box_hengdh .container {
    height: 180px
  }

  .box_hengdh .dt {
    font-size: 16px;
    border-left: 2px solid #e61e37;
    padding: 0 0 0 5px;
    margin-bottom: 10px
  }

  .box_hengdh .text {
    font-size: 12px;
    line-height: 20px
  }
  footer .in_box {
    padding: 20px 0;
  }
  .box_dpxun li {
    width: 25%
  }
  .footer {
    padding: 10px 0;
    font-size: 12px;
    color: #777;
    display: block;

  }

  .footer .left {
    float: none
  }

  .footer .left .icp {
    height: 0;
    display: block;
    overflow: hidden
  }

  .footer .right {
    display: none
  }
}
</style>
