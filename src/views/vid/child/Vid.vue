<template>
  <div class="view_news">
    <div class="view_video">
      <div class="container">
        <div class="left">
          <div class="bt">{{vidList.title}}</div>
          <div class="rideo"><img src="~assets/image/icon_rideo.png">{{this.$store.state.userList.companyName}}欢迎您到厂直观考察制造工艺<span>免费设计</span></div>
          <div class="video">
            <iframe frameborder="0" :src="`https://v.qq.com/txp/iframe/player.html?vid=${vidList.vidurl}`" allowFullScreen="true"></iframe>
          </div>
          <ul class="cs">
            <li><img src="~assets/image/icon_time.png">视频时长：<em></em></li>
            <li><img src="~assets/image/icon_ck.png">浏览次数：<em>123</em></li>
            <li><img src="~assets/image/icon_rl.png">上传时间：<em>{{vidList.createtime | dateFormat}}</em></li>
            <li><img src="~assets/image/icon_sp.png">视频来源：<em>原创</em></li>
          </ul>
        </div>
        <div class="right">
          <div class="xgvideo">
            <ul>
              <li v-for="item in vid" :key="item.id">
                <router-link :to="`/video/${item.id}`">
                  <div class="pic"><img :src="item.imgurl"><em></em></div>
                  <div class="box"><span>{{item.title}}</span><em>123</em></div>
                </router-link>
              </li>
            </ul>
          </div>
          <view-right-cont></view-right-cont>
        </div>
      </div>
    </div>
    <div class="bj">
      <div class="container">
        <div class="left">
          <main-mess id="tiao_mess"/>
          <div class="line_height60"></div>
          <view-bottom/>
        </div>
        <view-right>
        </view-right>
      </div>
    </div>
  </div>
</template>

<script>
import { getVid } from 'network/news'
import ViewRightCont from 'components/common/main/ViewRightCont'
import ViewRight from 'components/common/main/ViewRight'
import MainMess from 'components/common/main/MainMess'
import ViewBottom from 'components/common/main/ViewBottom'
export default {
  name: '',
  components: {
    ViewRight,
    MainMess,
    ViewBottom,
    ViewRightCont
  },
  data () {
    return {
      vidList: {}
    }
  },
  props: {
    vid: {
      type: Array,
      defaut () {
        return []
      }
    }
  },
  methods: {
    changeVidList () {
      getVid({ id: this.$route.params.id }).then(res => {
        this.vidList = res.data.vid[0]
        console.log(this.vidList)
        if (this.vidList !== null) {
          document.title = this.vidList.title
          document.querySelector('meta[name="keywords"]').setAttribute('content', this.vidList.pageKey)
          document.querySelector('meta[name="description"]').setAttribute('content', this.vidList.pageDescription)
        }
      })
    }
  },
  beforeRouteEnter (to, from, next) {
    getVid({ id: to.params.id }).then(res => {
      next(vm => {
        vm.changeVidList()
      })
    })
  },
  beforeRouteUpdate (to, from, next) {
    if (to.fullPath !== from.fullPath) {
      next()
      this.changeVidList()
    }
  }
}

</script>

<style>
.view_video {
  padding: 30px 0 60px 0;
  background: #adbbe1;
  background: -webkit-linear-gradient(#adbbe1, #0d173a);
  background: -o-linear-gradient(#adbbe1, #0d173a);
  background: -moz-linear-gradient(#adbbe1, #0d173a);
  background: linear-gradient(#adbbe1, #0d173a)
}

.view_video .container {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-justify-content: space-between;
  justify-content: space-between
}

.view_video .container:after {
  display: none
}

.view_video .container .left {
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  width: 0;
  max-width: 923px;
  margin-right: 20px
}

.view_video .container .right {
  width: 274px
}

.view_video .bt {
  font-size: 34px;
  color: #05163f;
  font-weight: bold
}

.view_video .bt:before {
  background: url(~assets/image/icon_fire.png) no-repeat;
  display: inline-block;
  content: "";
  width: 29px;
  height: 34px;
  vertical-align: middle;
  margin-top: -10px;
  margin-right: 10px;
  background-size: cover
}

.view_video .rideo {
  font-size: 16px;
  color: #465174;
  background: rgba(176, 186, 217, 0.7);
  display: inline-block;
  padding: 5px 15px;
  margin: 15px 0 20px 0;
  border-radius: 5px
}

.view_video .rideo img {
  height: 19px;
  width: auto;
  margin-top: -3px;
  margin-right: 5px
}

.view_video .rideo span {
  color: #e61e37
}

.view_video .video {
  overflow: hidden
}

.view_video .video iframe {
  width: 100%;
  height: 600px;
}

.view_video .cs {
  overflow: hidden;
  margin: -15px;
  padding: 20px 0 0 0
}

.view_video .cs li {
  float: left;
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  color: #7aa3cc;
  padding: 15px;
  line-height: 1
}

.view_video .cs li img {
  margin-right: 12px;
  height: 20px;
  width: auto
}

.view_video .cs li em {
  color: #cce5ff
}
.view_video .box_rscont {
  margin: -41px 0 0 14px
}

.view_video .box_rscont:before {
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

.view_video .xgvideo {
  padding-bottom: 60px;
  background-color: #f0f3fa
}

.view_video .xgvideo ul {
  position: relative;
  padding: 10px;
  background-color: #f0f3fa;
  height: 290px;
  overflow-y: scroll
}

.view_video .xgvideo ul li {
  margin-top: 13px
}

.view_video .xgvideo ul li a {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  color: #555f7d
}

.view_video .xgvideo ul li .pic {
  overflow: hidden;
  position: relative
}

.view_video .xgvideo ul li .pic img {
  height: 108px;
  width: 108px
}

.view_video .xgvideo ul li .pic em {
  position: absolute;
  right: 0;
  bottom: 0;
  background: none repeat scroll 0 0 rgba(75, 85, 110, 0.8);
  height: 20px;
  line-height: 20px;
  color: #fff;
  font-size: 12px;
  padding: 0 5px
}

.view_video .xgvideo ul li .box {
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  width: 0;
  padding: 0 0 0 10px;
  margin-top: -40px;
}

.view_video .xgvideo ul li .box span {
  display: block;
  overflow: hidden;
  line-height: 18px;
  font-size: 15px;
  height: 40px;
  transition: all .5s
}

.view_video .xgvideo ul li .box span:hover {
  color: #e61e37
}

.view_video .xgvideo ul li .box em {
  display: inline-block;
  vertical-align: middle;
  width: 20px;
  height: 16px;
  margin-right: 5px;
  cursor: pointer;
  background: url(~assets/image/icon_playIco.png) no-repeat;
  padding-left: 25px;
  font-size: 12px
}

.view_video .xgvideo ul li:first-child {
  margin-top: 0
}

.view_video .xgvideo ul::-webkit-scrollbar {
  width: 10px;
  height: 1px
}

.view_video .xgvideo ul::-webkit-scrollbar-thumb {
  border-radius: 5px;
  box-shadow: inset 0 0 1px #f3f3f3;
  background: #828ba4
}

.view_video .xgvideo ul::-webkit-scrollbar-track {
  box-shadow: inset 0 0 2px #ccc;
  border-radius: 0;
  background: #4b556e
}
.view_news .bj {
  padding: 0 0 60px 0;
  background: #f0f3fa;
  box-shadow: 0 -4px 20px #d7ddf1
}
.view_news .bj .container {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-justify-content: space-between;
  justify-content: space-between
}
.view_news .bj .container:after {
  display: none
}

.view_news .bj .left {
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  width: 0;
  max-width: 1100px;
  padding: 30px 20px 0 0
}
@media (max-width:999px) {
  .view_video .right {
    display: none;
  }
  .view_video .bt {
    font-size: 24px
  }

  .view_video .bt:before {
    width: 26px;
    height: 30px
  }

  .view_video .rideo {
    font-size: 14px
  }

  .view_video .cs {
    margin: -10px;
    padding: 15px 0 0 0
  }

  .view_video .cs li {
    padding: 10px
  }

  .view_video .cs li img {
    margin-right: 8px;
    height: 16px
  }

  .view_video .xgvideo ul li .box span {
    font-size: 14px
  }
  .view_video .video iframe {
    height: auto;
  }
}
</style>
