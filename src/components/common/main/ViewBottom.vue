<template>
  <div class="box_zzssi">
  <div class="bt">广东顺发-起重机专业制造和服务供应商</div>
  <div class="text">60s人工响应 / 30min技术答复 / 24h免费提供方案</div>
  <div class="white">
    <ul>
      <li><img src="~assets/image/pic_sip_one.png"></li>
      <li><img src="~assets/image/pic_sip_two.png"></li>
      <li><img src="~assets/image/pic_sip_three.png"></li>
      <li><img src="~assets/image/pic_sip_four.png"></li>
    </ul>
    <div class="box"> <a :href="`http://wpa.qq.com/msgrd?uin=${this.$store.state.userList.userQQ}`"><img src="~assets/image/icon_lyb_kf.png"></a>
      <div class="tel"><img src="~assets/image/icon_tel.png">
        <p>24h全国免费咨询热线<br>
          86-<em>{{this.$store.state.userList.userPhone}}</em></p>
      </div>
    </div>
  </div>
</div>
</template>

<script>
export default {

}
</script>

<style>
.box_zzssi {
    background: url(~assets/image/bj_bottom_bg.png) no-repeat;
    width: 100%;
    background-size: cover;
    text-align: center;
    padding: 40px 35px;
    color: #fff
}

.box_zzssi .bt {
    color: #fff;
    font-size: 26px;
    text-align: center
}

.box_zzssi .text {
    color: #fff;
    font-size: 16px;
    margin: 20px auto 30px
}

.box_zzssi .white {
    background: #fff;
    border-radius: 10px;
    padding: 25px
}

.box_zzssi ul {
    overflow: hidden;
    border-bottom: 1px dashed #c8d0e6;
    padding-bottom: 25px
}

.box_zzssi ul li {
    float: left;
    width: 25%
}

.box_zzssi ul li img {
    max-width: 168px;
    width: 100%;
    height: auto
}

.box_zzssi .box {
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    align-items: center;
    overflow: hidden;
    padding-top: 25px
}

.box_zzssi .box a {
    width: 50%;
    text-align: center
}

.box_zzssi .box a img {
    max-width: 100%;
    height: auto
}

.box_zzssi .box .tel {
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    align-items: center;
    color: #555f7d
}

.box_zzssi .box .tel img {
    height: 56px;
    width: auto;
    margin-right: 10px
}

.box_zzssi .box .tel em {
    font-size: 22px;
    color: #e61e37
}
@media (max-width:999px) {
    .box_zzssi {
        padding: 15px
    }

    .box_zzssi .bt {
        font-size: 20px
    }

    .box_zzssi .text {
        font-size: 12px;
        margin: 5px auto 15px
    }

    .box_zzssi .white {
        padding: 10px
    }

    .box_zzssi ul {
        padding-bottom: 5px;
        margin: -3px
    }

    .box_zzssi ul li {
        padding: 3px
    }

    .box_zzssi ul li img {
        max-width: 100px
    }

    .box_zzssi .box {
        padding-top: 10px
    }

    .box_zzssi .box a {
        -webkit-box-flex: 1;
        -moz-box-flex: 1;
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
        width: 0;
        margin-right: 10px
    }

    .box_zzssi .box .tel {
        font-size: 12px;
        text-align: left
    }

    .box_zzssi .box .tel img {
        height: 32px;
        margin-right: 5px
    }

    .box_zzssi .box .tel em {
        font-size: 16px
    }
}
</style>
