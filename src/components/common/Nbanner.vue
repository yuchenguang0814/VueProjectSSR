<template>
  <div v-if="nbanners.props !== undefined" class="nbanner" :style="`background-image: url(${$baseUrl + nbanners.props.pageImage});`">
    <div class="container">
      <div class="box">
        <div class="in-tit"><img :src="require(`@/assets/image/${nbanners.props.pageTitleImage}.png`)">
          <div class="dt"><img src="~assets/image/tit_zs.png">{{this.$route.meta.title}}</div>
          <div class="text">{{nbanners.props.pageDescription}}</div>
        </div>
        <ul v-if="nbanners.props.child" class="tab">
          <li v-for="item in nbanners.props.child" :key="item.id" :class="`${path == item.pagePath?'on':''}`">
            <router-link :to="item.pagePath">{{item.pageName}}</router-link>
          </li>
        </ul>
        <div v-if="path.indexOf('/solution') != -1">
        <form-order></form-order>
      </div>
      <div v-if="path == '/contact'">
        <ul class="cont">
          <li>
            <div class="box"><img src="~assets/image/con_dh.png">
              <div class="n"><span>服务热线</span>
                <p>86-{{this.$store.state.userList.userPhone}}</p>
              </div>
            </div>
          </li>
          <li><a :href="`http://wpa.qq.com/msgrd?uin=${this.$store.state.userList.userQQ}`" target="_blank" class="box"><img src="~assets/image/con_kf.png">
            <div class="n"><span>联系客服</span>
              <p>点击马上咨询</p>
            </div>
            </a></li>
        </ul>
        <div class="address"><img src="~assets/image/icon_wzxx.png">公司地址：{{this.$store.state.userList.companyAddress}}</div>
      </div>
  </div>
      </div>
  </div>
</template>

<script>
import FormOrder from './form/FormOrder'
export default {
  components: {
    FormOrder
  },
  props: {
    nbanners: {
      type: Object,
      default () {
        return {}
      }
    }
  },
  computed: {
    path () {
      return this.$route.path
    }
  },
  mounted () {
  }
}
</script>

<style>
.nbanner {
  background-repeat: no-repeat;
  background-position: center top;
  background-size: auto 100%;
  overflow: hidden
}

.nbanner .container {
  height: 396px;
  display: flex;
  align-items: center
}

.nbanner .container:after {
  display: none
}

.nbanner .container .box {
  width: 100%;
  max-width: 800px;
}

.nbanner .container .in-tit {
  text-align: left;
  color: #7ea8e5;
  padding-bottom: 0
}

.nbanner .container .in-tit .dt {
  color: #fff;
  padding-left: 25px;
  margin-top: -45px
}

.nbanner .container .in-tit .text {
  line-height: 32px
}

.nbanner .tab {
  margin: -7px;
  overflow: hidden;
  padding-top: 30px
}
.nbanner .tab .on {
  background: #e61e37;
  border-color: #e61e37;
}

.nbanner .tab li {
  padding: 7px;
  float: left
}

.nbanner .tab li a {
  display: block;
  overflow: hidden;
  font-size: 18px;
  color: #fff;
  padding: 10px 40px;
  border: 1px solid #fff;
  transition: all 0.5s;
}

.nbanner .tab li a:hover {
  border-color: #05163f;
  background: #05163f
}

.nbanner .tab li.on a {
  background: #e61e37;
  border-color: #e61e37
}

.nbanner .cont {
  overflow: hidden;
  padding: 30px 0 25px 0;
  margin: -20px
}

.nbanner .cont li {
  float: left;
  padding: 20px
}

.nbanner .cont li .box {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  -webkit-justify-content: center;
  justify-content: center;
  width: 340px;
  height: 141px;
  background: url(~assets/image/bj_xian.png);
  background-size: 100% 100%
}

.nbanner .cont li img {
  height: 100px;
  width: auto;
  margin-right: 30px
}

.nbanner .cont li .n {
  font-size: 16px;
  color: #fff
}

.nbanner .cont li .n span {
  font-weight: bold;
  font-size: 24px;
  margin-bottom: 15px;
  display: block;
  overflow: hidden
}

.nbanner .address {
  background: -webkit-linear-gradient(left, #06163f, transparent);
  background: -o-linear-gradient(right, #06163f, transparent);
  background: -moz-linear-gradient(right, #06163f, transparent);
  background: linear-gradient(to right, #06163f, transparent);
  padding: 10px 30px;
  line-height: 1;
  border-radius: 30px;
  font-size: 16px;
  color: #fff;
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center
}

.nbanner .address img {
  height: 35px;
  width: auto;
  margin-right: 10px
}

.nbanner .form {
  overflow: hidden;
  margin: 35px -10px 0 -10px
}

.nbanner .form li {
  float: left;
  width: 21%;
  padding: 0 10px
}

.nbanner .form li select,
.nbanner .form li input[type='text'] {
  border: 1px solid #7882a0;
  border-radius: 10px;
  padding: 12px 20px;
  font-size: 16px;
  color: #4b556e;
  width: 100%;
  background: #fff
}

.nbanner .form li select {
  -webkit-appearance: none;
  background: url(~assets/image/icon_jtb_s.png) no-repeat 94%;
  background-color: #fff;
  background-size: auto 12px
}

.nbanner .form li input[type='text'] {
  background: url(~assets/image/icon_xing.png) no-repeat 8px center;
  background-color: #fff
}

.nbanner .form li input[type='submit'] {
  width: 100%;
  font-size: 16px;
  color: #fff;
  border-radius: 10px;
  padding: 16px 0;
  border: 0;
  outline: none;
  float: right;
  cursor: pointer;
  background: #8d224e;
  background: -webkit-linear-gradient(left, #8d224e, #1b2057);
  background: -o-linear-gradient(right, #8d224e, #1b2057);
  background: -moz-linear-gradient(right, #8d224e, #1b2057);
  background: linear-gradient(to right, #8d224e, #1b2057);
  transition: all .5s
}

.nbanner  .form li input[type='submit']:hover {
  background: -webkit-linear-gradient(left, #1b2057, #8d224e);
  background: -o-linear-gradient(right, #1b2057, #8d224e);
  background: -moz-linear-gradient(right, #1b2057, #8d224e);
  background: linear-gradient(to right, #1b2057, #8d224e)
}

.nbanner  .form li:last-child {
  width: 16%
}
@media (max-width: 999px) {
  .nbanner {
    margin-top: 50px;
    padding: 10px 0;
  }
  .nbanner .container {
        height: 180px
    }

    .nbanner .container .contact {
        height: 280px
    }

    .nbanner .container .in-tit {
        text-align: left;
        color: #7ea8e5;
        padding-bottom: 0
    }

    .nbanner .container .in-tit .dt {
        color: #fff;
        padding-left: 25px;
        margin-top: -25px
    }

    .nbanner .container .in-tit .text {
        display: none
    }

    .nbanner .container .in-tit .texts {
        display: none
    }

    .nbanner .container.in-tit .textc {
        display: none
    }

    .nbanner .tab {
        margin: -5px;
        padding-top: 15px
    }

    .nbanner .tab li {
        padding: 5px
    }

    .nbanner .tab li a {
        font-size: 14px;
        padding: 7px 10px;
        line-height: 1
    }

    .nbanner .cont {
        padding: 15px 0;
        margin: -5px
    }

    .nbanner .cont li {
        padding: 5px;
        width: 50%
    }

    .nbanner .cont li .box {
        width: auto;
        height: 80px
    }

    .nbanner .cont li img {
        height: 60px;
        margin-right: 10px
    }

    .nbanner .cont li .n {
        font-size: 12px
    }

    .nbanner .cont li .n span {
        font-size: 14px;
        margin-bottom: 5px
    }

    .nbanner .address {
        padding: 10px 15px;
        font-size: 12px
    }

    .nbanner .address img {
        height: 15px;
        margin-right: 8px;
        margin-top: -1px
    }

    .nbanner .form {
        display: none
    }
}
</style>
