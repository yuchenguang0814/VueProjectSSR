<template>
  <div class="box_rscont">
    <div class="blue">
      <p>想了解物料、产量、选型及本月优惠报价信息，欢迎您拨打我们的服务电话或者在线咨询获取！</p>
      <div class="tel"><img src="~assets/image/icon_tel.png">
        <p>服务热线：86-<em>{{this.$store.state.userList.userPhone}}</em></p>
      </div>
    </div>
    <a :href="`http://wpa.qq.com/msgrd?uin=${this.$store.state.userList.userQQ}`" target="_blank" class="kefu">在线咨询</a> </div>
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
.box_rscont {
  position: relative;
  z-index: 10;
  margin-bottom: 50px
}
.box_rscont:before {
  background: url(~assets/image/icon_zs.png) no-repeat;
  background-size: 100% 100%;
  width: 14px;
  height: 41px;
  display: block;
  position: absolute;
  top: 0;
  left: -14px;
  content: ""
}
.box_rscont .blue {
  background: #05163f;
  padding: 30px 20px 80px 20px;
  color: #fff;
  line-height: 28px;
  text-align: left
}

.box_rscont .blue .tel {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  margin-top: 25px
}

.box_rscont .blue .tel img {
  height: 56px;
  width: auto;
  margin-right: 10px
}

.box_rscont .blue .tel em {
  font-size: 22px;
  color: #ffaa00;
  font-weight: bold
}

.box_rscont .kefu {
  display: block;
  overflow: hidden;
  position: absolute;
  left: -1px;
  bottom: -50px;
  background: url(~assets/image/bj_rkf.png);
  background-size: 100% 100%;
  width: 270px;
  height: 114px;
  line-height: 114px;
  color: #fff;
  font-size: 20px;
  padding-left: 30px
}
</style>
