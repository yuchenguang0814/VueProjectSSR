<template>
  <ul class="box_service">
    <li><a href="http://www.qizhong114.com/Product" class="box"><img src="http://www.qizhong114.com/static/home/img/icon_ser_1.png">
      <div class="bj"><span>产品服务</span>
        <p>提供产品解决方案</p>
      </div>
      </a></li>
    <li><a href="http://wpa.qq.com/msgrd?uin=980101050" target="_blank" class="box"><img src="http://www.qizhong114.com/static/home/img/icon_ser_2.png">
      <div class="bj"><span>在线客服</span>
        <p>完善的在线客服中心</p>
      </div>
      </a></li>
    <li><a href="http://www.qizhong114.com/jswx" class="box"><img src="http://www.qizhong114.com/static/home/img/icon_ser_3.png">
      <div class="bj"><span>技术文献</span>
        <p>全面的产品使用技术</p>
      </div>
      </a></li>
    <li>
      <div class="box"><img src="http://www.qizhong114.com/static/home/img/icon_ser_4.png">
        <div class="bj"><span>公司地址</span>
          <p>佛山市三水南山工业园</p>
        </div>
      </div>
    </li>
    <li>
      <div class="box"><img src="http://www.qizhong114.com/static/home/img/icon_ser_5.png">
        <div class="bj"><span>服务热线</span>
          <p>0757-86283883</p>
        </div>
      </div>
    </li>
  </ul>
</template>

<script>
export default {

}
</script>

<style>
.box_service {
    margin: -15px;
    overflow: hidden;
}

.box_service li {
    float: left;
    width: 20%;
    padding: 15px
}

.box_service li .box {
    display: block;
    overflow: hidden;
    font-size: 16px;
    color: #788291;
    text-align: center
}

.box_service li img {
    height: 160px;
    width: auto;
    margin-bottom: -80px;
    position: relative;
    z-index: 5
}

.box_service li .bj {
    -moz-box-shadow: 2px 0 70px rgba(194, 205, 239) inset;
    -webkit-box-shadow: 2px 0 70px rgba(194, 205, 239) inset;
    box-shadow: 2px 0 70px rgba(194, 205, 239) inset;
    padding: 88px 15px 44px 15px;
    border-radius: 20px;
    transition: all .5s
}

.box_service li span {
    font-weight: bold;
    display: block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    font-size: 22px;
    color: #05163f;
    margin: 20px auto 10px
}

.box_service li:hover .bj {
    -moz-box-shadow: 2px 0 15px rgba(230, 30, 55, 0.2) inset;
    -webkit-box-shadow: 2px 0 15px rgba(230, 30, 55, 0.2) inset;
    box-shadow: 2px 0 15px rgba(230, 30, 55, 0.2) inset
}
@media (max-width: 999px) {
  .box_service {
        margin: -5px 0
    }

    .box_service li {
        width: 100%;
        padding: 5px 0
    }

    .box_service li .box {
        font-size: 12px;
        display: -webkit-box;
        display: -moz-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -webkit-align-items: center;
        align-items: center
    }

    .box_service li img {
        height: 100px;
        margin-bottom: 0
    }

    .box_service li .bj {
        padding: 15px 15px 15px 75px;
        -webkit-box-flex: 1;
        -moz-box-flex: 1;
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
        width: 0;
        text-align: left;
        margin-left: -60px
    }

    .box_service li span {
        font-size: 16px;
        margin: 0 0 5px 0
    }
}
</style>
