<template>
<div class="process">
  <div class="container">
    <div class="in-tit"><img src="http://www.qizhong114.com/static/home/img/tit_process.png">
      <div class="dt"><img src="http://www.qizhong114.com/static/home/img/tit_zs.png">我们的服务流程</div>
      <div class="text">我们一直遵循对每一道工序负责、对每一台产品负责、对每一位用户负责的质量方针，竭诚为用户服务。</div>
    </div>
    <div class="box_fwlc">
      <ul>
        <li class="box"><img src="http://www.qizhong114.com/static/home/img/icon-fwlc1.png"><span>线上线下交流</span></li>
        <li class="line"><img src="http://www.qizhong114.com/static/home/img/icon_s_one.png"></li>
        <li class="box"><img src="http://www.qizhong114.com/static/home/img/icon-fwlc2.png"><span>确认客户需求</span></li>
        <li class="line"><img src="http://www.qizhong114.com/static/home/img/icon_s_two.png"></li>
        <li class="box"><img src="http://www.qizhong114.com/static/home/img/icon-fwlc3.png"><span>专业定制设计</span></li>
        <li class="line"><img src="http://www.qizhong114.com/static/home/img/icon_s_three.png"></li>
        <li class="box"><img src="http://www.qizhong114.com/static/home/img/icon-fwlc4.png"><span>专车运输配送</span></li>
      </ul>
      <ul>
        <li class="line"><img src="http://www.qizhong114.com/static/home/img/icon_s_four.png"></li>
        <li class="box"><img src="http://www.qizhong114.com/static/home/img/icon-fwlc5.png"><span>客户验收设备</span></li>
        <li class="line"><img src="http://www.qizhong114.com/static/home/img/icon_s_five.png"></li>
        <li class="box"><img src="http://www.qizhong114.com/static/home/img/icon-fwlc6.png"><span>专业团队安装</span></li>
        <li class="line"><img src="http://www.qizhong114.com/static/home/img/icon_s_five.png"></li>
        <li class="box"><img src="http://www.qizhong114.com/static/home/img/icon-fwlc7.png"><span>全面售后服务</span></li>
        <li></li>
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
.process {
  padding: 35px 0;
  background:#f0f3fa
}
.box_fwlc ul {
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    align-items: center;
    -webkit-justify-content: space-between;
    justify-content: space-between
}

.box_fwlc ul li {
    width: 14.25%;
    text-align: center;
    float: left
}

.box_fwlc ul li.box {
    background: #fff;
    padding: 25px 10px;
    border-radius: 15px;
    box-shadow: 2px 5px 20px #adbce9
}

.box_fwlc ul li.box img {
    height: 80px;
    width: auto
}

.box_fwlc ul li.box span {
    display: block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    font-size: 16px;
    color: #788291;
    margin-top: 30px
}

.box_fwlc ul li.line {
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    align-items: center
}

.box_fwlc ul li.line img {
    width: 100%;
    height: auto
}

.box_fwlc ul:last-child {
    flex-direction: row-reverse;
    margin-bottom: -85px
}

.box_fwlc ul:last-child li:first-child {
    margin-bottom: 170px
}

.box_fwlc ul:last-child li:first-child img {
    width: 65%
}
@media (max-width:999px) {
  .process {
    padding: 20px 0;
  }
  .box_fwlc ul {
        display: block;
        margin: -1%
    }

    .box_fwlc ul li {
        width: 48%;
        margin: 1%
    }

    .box_fwlc ul li.box {
        padding: 15px 10px
    }

    .box_fwlc ul li.box img {
        height: 50px
    }

    .box_fwlc ul li.box span {
        font-size: 14px;
        margin-top: 5px
    }

    .box_fwlc ul li.line {
        display: none
    }

    .box_fwlc ul:last-child {
        margin-bottom: 0;
        padding: 1% 0 0 0
    }

    .box_fwlc ul:last-child li:first-child {
        margin-bottom: 0
    }

    .box_fwlc ul:last-child li:nth-child(6) {
        width: 98%
    }
}
</style>
