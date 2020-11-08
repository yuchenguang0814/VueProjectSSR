<template>
<div class="process">
  <div class="container">
    <div class="in-tit"><img src="http://www.qizhong114.com/static/home/img/tit_hongxing.png">
      <div class="dt"><img src="http://www.qizhong114.com/static/home/img/tit_zs.png">让客户满意为客户创值增值</div>
      <div class="text">完善的产品体系，满足客户的差异化需求；绿色环保理念与创新成熟工艺的结合，悉心打造出高标准起重机设备，为您创值增值。</div>
    </div>
    <ul class="xun_czjz">
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/icon-lxwm1.png"><span>购买前咨询</span></div>
      </li>
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/icon-lxwm2.png"><span>如何选购合适的起重机</span></div>
      </li>
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/icon-lxwm3.png"><span>咨询起重机产品价格</span></div>
      </li>
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/icon-lxwm4.png"><span>配置合适工况</span></div>
      </li>
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/icon-lxwm5.png"><span>安装、操作相关问题</span></div>
      </li>
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/icon-lxwm6.png"><span>售后服务</span></div>
      </li>
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/icon-lxwm7.png"><span>配件如何购买</span></div>
      </li>
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/icon-lxwm8.png"><span>有其他建议或意见</span></div>
      </li>
    </ul>
    <div class="line_height60"></div>
    <main-mess></main-mess>
  </div>
</div>
</template>

<script>
import MainMess from 'components/common/main/MainMess'
export default {
  components: {
    MainMess
  }
}
</script>

<style>
  .process {
    padding: 35px 0
  }
  .xun_czjz {
    margin: -10px;
    overflow: hidden
}

.xun_czjz li {
    float: left;
    width: 25%;
    padding: 10px;
    text-align: center
}

.xun_czjz li .box {
    border: 1px solid #f0f3fa;
    border-radius: 10px;
    padding: 30px 10px
}

.xun_czjz li .box img {
    height: 58px;
    width: auto
}

.xun_czjz li .box span {
    display: block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    font-size: 18px;
    color: #4b556e;
    font-weight: bold;
    margin-top: 20px
}
@media (max-width: 999px) {
  .process {
    padding: 20px 0
  }
  .xun_czjz {
        margin: -5px
    }

    .xun_czjz li {
        width: 50%;
        padding: 5px
    }

    .xun_czjz li .box {
        padding: 20px 10px
    }

    .xun_czjz li .box img {
        height: 48px
    }

    .xun_czjz li .box span {
        font-size: 14px;
        margin-top: 5px
    }
}
</style>
