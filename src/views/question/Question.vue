<template>
  <div>
    <slot name="nb" :props="$store.getters.getPageNbanner" ></slot>
    <slot name="crumb"></slot>
    <div class="main news">
      <div class="container">
        <div class="box_wenda">
          <div class="left">
            <div class="cate_tit">
              <img src="~assets/image/icon_zxwd.png">
              <span>最新问答</span>
              <router-link to="/question">查看全部问答
              <img src="~assets/image/icon_jtr_s.png">
              </router-link>
            </div>
            <ul class="list_wenda">
              <li v-for="item in orderList" :key="item.id">
                <div class="box">
                  <div class="info ask"><img src="~assets/image/58acda9f469d616029c31d546a58920f.png">
                    <div class="n"></div>
                  </div>
                  <div class="text"> <router-link :to="`/question`" class="bt"><span>{{item.user}} ：</span>{{item.content}}</router-link>
                    <div class="date">{{item.createtime | dateFormat}}</div>
                  </div>
                  <div class="info answer">
                    <div class="n">技术工程师</div>
                    <img src="~assets/image/262a67fda7b22603fc825f2ec4895370.png"></div>
                  <div class="text">
                    <p></p>
                    <router-link :to="`/question`" class="more">查看详细解答&gt;&gt;</router-link> </div>
                </div>
              </li>
            </ul>
            <main-pages></main-pages>
            <div class="cate_tit"><img src="~assets/image/icon_qbwd.png"><span>精彩问答</span><router-link to="~assets/image/icon_jtr_s.png"></router-link></div>
            <div class="shabor">
              <ul class="list_wendajc">
                <li v-for="item in answer" :key="item.id"><em>{{item.createtime | dateFormat}} {{item.createtime | hoursFormat}}</em><router-link :to="`/question`">{{item.content}}</router-link></li>
              </ul>
            </div>
          </div>
          <div class="right">
            <div class="box_xgboxr">
              <div class="tit">我要提问</div>
              <div class="box">
                <form-order></form-order>
              </div>
            </div>
            <div class="all_pic"><img src="http://qizhong114.com/static/home/img/icon_line.png"></div>
            <view-right-cont></view-right-cont>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import MainPages from 'components/common/main/MainPages'
import ViewRightCont from 'components/common/main/ViewRightCont'
import FormOrder from 'components/common/form/FormOrder'
import { getOrder } from 'network/order'
export default {
  components: {
    MainPages,
    ViewRightCont,
    FormOrder
  },
  data () {
    return {
      queryInfo: {
        query: { id: -1 },
        pagenum: 1,
        pagesize: 5
      },
      nbanner: {},
      orderList: []
    }
  },
  computed: {
    answer () {
      return this.orderList.filter(item => item.isQusetion === 2)
    }
  },
  created () {
    this.changeNbanner()
  },
  methods: {
    changeNbanner () {
      this.$store.commit('getPath', this.$route.path)
      this.nbanner = this.$store.getters.getPageNbanner
      getOrder(this.queryInfo).then(res => {
        this.orderList = res.data.order
      })
    }
  },
  beforeRouteEnter (to, from, next) {
    next(vm => {
      vm.changeNbanner()
    })
  },
  beforeRouteUpdate (to, from, next) {
    if (to.fullPath !== from.fullPath) {
      next()
      this.changeNbanner()
    }
  }
}
</script>

<style>
.main {
  background: #f0f3fa;
  padding: 40px 0 60px 0
}
.in_box.news {
    background: #f0f3fa
}
.box_wenda {
    display: flex;
    justify-content: space-between
}
.box_wenda .left {
    flex: 1;
    width: 0;
    max-width: 956px;
    padding: 0 20px 0 0
}
.box_wenda .left .cate_tit {
    margin-top: 50px
}

.box_wenda .left .cate_tit:first-of-type {
    margin-top: 0
}
.box_wenda .box_rscont:before {
  opacity: 0;
}
.cate_tit {
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    align-items: center;
    -webkit-justify-content: space-between;
    justify-content: space-between;
    padding-bottom: 40px;
    line-height: 48px
}

.cate_tit>img {
    height: 48px;
    width: auto;
    margin-right: 10px
}

.cate_tit span {
    font-size: 32px;
    -webkit-box-flex: 1;
    -moz-box-flex: 1;
    -webkit-flex: 1;
    -ms-flex: 1;
    flex: 1;
    width: 0;
    color: #05163f
}

.cate_tit a {
    display: block;
    overflow: hidden;
    padding: 0 30px;
    line-height: 42px;
    font-size: 16px;
    color: #4b556e;
    border: 1px solid #4b556e;
    border-radius: 30px
}

.cate_tit a img {
    height: 16px;
    width: auto;
    margin-left: 10px;
    vertical-align: middle;
    margin-top: -3px
}

.cate_tit a:hover {
    background: #fbebed
}
.list_wenda li {
    margin-top: 40px
}

.list_wenda li .box {
    background: #fff;
    padding: 35px;
    box-sizing: border-box;
    border-radius: 15px;
    -moz-box-shadow: 2px 0 15px rgba(21, 53, 129, 0.2);
    -webkit-box-shadow: 2px 0 15px rgba(21, 53, 129, 0.2);
    box-shadow: 2px 0 15px rgba(21, 53, 129, 0.2)
}

.list_wenda li .info {
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    align-items: center;
    font-size: 18px;
    position: relative;
    z-index: 5;
    margin-bottom: -25px
}

.list_wenda li .info img {
    height: 128px;
    width: auto
}

.list_wenda li .ask {
    color: #788291
}

.list_wenda li .ask a {
    color: #788291
}

.list_wenda li .ask img {
    margin-right: 25px
}

.list_wenda li .answer {
    color: #e61e37;
    float: right;
    margin-top: 30px
}

.list_wenda li .answer img {
    margin-left: 25px
}

.list_wenda li .text {
    width: 100%;
    overflow: hidden;
    background: #f0f3fa;
    padding: 35px 30px 20px 30px;
    border-radius: 10px;
    border: 1px dashed #a0b0c7;
    font-size: 16px;
    color: #4b556e;
    line-height: 30px
}

.list_wenda li .text .bt {
    font-size: 18px;
    color: #111f3f;
    font-weight: bold
}

.list_wenda li .text .bt span {
    color: #e61e37
}

.list_wenda li .text .date {
    font-size: 14px;
    margin-top: 10px
}

.list_wenda li .text .more {
    font-size: 18px;
    margin-top: 10px;
    color: #e61e37;
    text-align: right;
    display: block;
    overflow: hidden
}

.list_wenda li:first-child {
    margin-top: 0
}
.box_wenda .shabor {
    background: #fff;
    padding: 30px 35px 40px 35px;
    border-radius: 15px;
    -moz-box-shadow: 2px 0 15px rgba(21, 53, 129, 0.2);
    -webkit-box-shadow: 2px 0 15px rgba(21, 53, 129, 0.2);
    box-shadow: 2px 0 15px rgba(21, 53, 129, 0.2)
}
.list_wendajc {
    overflow: hidden
}

.list_wendajc li {
    border-bottom: 2px dashed #ebf0f8;
    line-height: 70px;
    overflow: hidden
}

.list_wendajc li a {
    display: block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    font-size: 16px;
    padding: 0 20px 0 0
}

.list_wendajc li a:before {
    background: url(~assets/image/icon_xw.png) no-repeat;
    width: 22px;
    height: 21px;
    display: inline-block;
    content: "";
    vertical-align: middle;
    margin-right: 10px;
    background-size: 100% 100%
}

.list_wendajc li a:after {
    background: url(~assets/image/icon_jiejue.png) no-repeat;
    width: 82px;
    height: 28px;
    display: inline-block;
    content: "";
    vertical-align: middle;
    margin-left: 10px;
    background-size: 100% 100%
}

.list_wendajc li em {
    float: right
}
.shabor .list_wendajc li a:hover {
  color:#e61e37
}
.box_wenda .right {
    width: 260px
}
.box_xgboxr {
    overflow: hidden
}

.box_xgboxr .tit {
    color: #fff;
    font-size: 20px;
    line-height: 50px;
    background: url(~assets/image/icon_tzs.png) no-repeat center;
    background-size: auto 100%;
    text-align: center;
    height: 50px;
    margin: 35px auto -25px auto;
    position: relative
}

.box_xgboxr .tit:first-of-type {
    margin-top: 0
}

.box_xgboxr .box {
    background: #05163f;
    margin: 0 auto;
    border: 1px solid #ced4e0;
    padding: 45px 20px 25px 20px;
    overflow: hidden
}
.box_xgboxr .picx li {
    text-align: center;
    margin-top: 20px
}

.box_xgboxr .picx li a {
    display: block;
    overflow: hidden
}

.box_xgboxr .picx li .pic {
    overflow: hidden
}

.box_xgboxr .picx li .pic img {
    width: 100%;
    height: auto;
    transition: all .5s
}

.box_xgboxr .picx li span {
    display: block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    font-size: 16px;
    padding: 12px 0 0 0
}

.box_xgboxr .picx li:first-child {
    margin-top: 0
}

.box_xgboxr .picx li:hover .pic img {
    transform: scale(1.05)
}

.box_xgboxr .tjwz li {
    margin-top: 15px
}

.box_xgboxr .tjwz li a {
    display: block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    background: #fff;
    border: 1px solid #e8ebf1;
    -moz-box-shadow: 2px 0 15px rgba(21, 53, 129, 0.2) inset;
    -webkit-box-shadow: 2px 0 15px rgba(21, 53, 129, 0.2) inset;
    box-shadow: 2px 0 15px rgba(21, 53, 129, 0.2) inset;
    padding: 15px 0;
    text-align: center;
    border-radius: 10px;
    font-size: 16px
}

.box_xgboxr .tjwz li a:hover {
    -moz-box-shadow: 2px 0 15px rgba(230, 30, 55, 0.2) inset;
    -webkit-box-shadow: 2px 0 15px rgba(230, 30, 55, 0.2) inset;
    box-shadow: 2px 0 15px rgba(230, 30, 55, 0.2) inset
}

.box_xgboxr .tjwz li:first-child {
    margin-top: 0
}
.box_xgboxr .mess {
}

.box_xgboxr .mess li {
    margin-top: 10px;
    width: 100%
}

.box_xgboxr .mess li input[type='text'],
.box_xgboxr .mess li textarea,
.box_xgboxr .mess li select {
    width: 100%;
    border: 0;
    border-radius: 10px;
    padding: 15px 10px;
    color: #4b556e;
    background: #fff
}

.box_xgboxr .mess li textarea {
    height: 120px
}

.box_xgboxr .mess li input[type='submit'] {
    width: 100%;
    border: 0;
    padding: 10px 0;
    margin-left: 20%;
    color: #fff;
    border-radius: 50px;
    margin-top: 10px;
    cursor: pointer;
    background: #8d224e;
    background: -webkit-linear-gradient(left, #8d224e, #244698);
    background: -o-linear-gradient(right, #8d224e, #244698);
    background: -moz-linear-gradient(right, #8d224e, #244698);
    background: linear-gradient(to right, #8d224e, #244698)
}

.box_xgboxr .mess li:first-child {
    margin-top: 0
}
.all_pic {
    overflow: hidden
}

.all_pic img {
    width: 100%;
    height: auto;
    float: left
}
.box_rscont {
    position: relative;
    z-index: 10;
    margin-bottom: 50px
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
@media (max-width: 999px) {
  .main {
    background: #f0f3fa;
    padding: 20px 0
  }
  .box_wenda .left {
        padding: 0
    }

    .box_wenda .left .cate_tit {
        margin-top: 20px
    }
    .cate_tit {
        padding-bottom: 15px;
        line-height: 34px
    }

    .cate_tit>img {
        height: 34px;
        margin-right: 5px
    }

    .cate_tit span {
        font-size: 20px
    }

    .cate_tit a {
        padding: 0 10px;
        line-height: 26px;
        font-size: 12px
    }

    .cate_tit a img {
        height: 10px;
        margin-left: 5px;
        margin-top: -2px
    }
    .list_wenda li {
        margin-top: 10px
    }

    .list_wenda li .box {
        padding: 15px
    }

    .list_wenda li .info {
        font-size: 14px;
        margin-bottom: -15px
    }

    .list_wenda li .info img {
        height: 60px
    }

    .list_wenda li .ask img {
        margin-right: 10px
    }

    .list_wenda li .answer {
        margin-top: 15px
    }

    .list_wenda li .answer img {
        margin-left: 10px
    }

    .list_wenda li .text {
        padding: 20px 15px 15px 15px;
        font-size: 14px;
        line-height: 1.8
    }

    .list_wenda li .text .bt {
        font-size: 16px
    }

    .list_wenda li .text .date {
        font-size: 12px;
        margin-top: 0
    }

    .list_wenda li .text .more {
        font-size: 16px;
        margin-top: 5px
    }
    .box_wenda .shabor {
        padding: 15px
    }
    .list_wendajc li {
        border-bottom-width: 1px;
        line-height: 40px
    }

    .list_wendajc li a {
        font-size: 12px;
        padding: 0
    }

    .list_wendajc li a:before {
        width: 16px;
        height: 16px;
        margin-right: 5px;
        margin-top: -2px
    }

    .list_wendajc li a:after {
        width: 59px;
        height: 20px;
        margin-left: 5px
    }

    .list_wendajc li em {
        display: none
    }
    .box_wenda .right {
        display: none
    }
}
</style>
