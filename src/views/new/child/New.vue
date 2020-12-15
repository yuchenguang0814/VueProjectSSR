<template>
  <div class="view_news">
  <div class="container">
    <div class="b_tit"> <span>{{newList.title}}</span>
      <div class="cs"><em>发布时间：{{newList.createtime | dateFormat}} {{newList.createtime | hoursFormat}}</em><em>作者：{{newList.author}}</em></div>
    </div>
  </div>
  <div class="bj">
    <div class="container">
      <div class="left">
        <div class="web_body">
          <h2>这是内容</h2>
          {{newList.content}}
        </div>
        <ul class="prevnext">
          <li><img src="~assets/image/icon_new_up.png">上一篇：<a :href="preNewList === '' ? 'javascript:void(0)': '/news/'+preNewList.id">{{preNewList === '' ? '没有了': preNewList.title}}</a></li>
          <li><img src="~assets/image/icon_new_down.png">下一篇：<a :href="nextNewList === '' ? 'javascript:void(0)': '/news/'+nextNewList.id">{{nextNewList === '' ? '没有了': nextNewList.title}}</a></li>
        </ul>
        <div class="pd10">
        <main-mess id="tiao_mess"/>
        <div class="line_height60"></div>
        <view-bottom/>
      </div>
      </div>
      <view-right>
        <div slot="cont"><view-right-cont/></div>
      </view-right>
    </div>
  </div>
</div>
</template>

<script>
import { getNew } from 'network/news'
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
      newList: {},
      preNewList: '',
      nextNewList: ''
    }
  },
  created () {
    getNew({ id: this.$route.params.id }).then(res => {
      this.newList = res.data.new[0]
      if (this.newList !== null) {
        document.title = this.newList.title
        document.querySelector('meta[name="keywords"]').setAttribute('content', this.newList.pageKey)
        document.querySelector('meta[name="description"]').setAttribute('content', this.newList.pageDescription)
      }
      if (res.data.pre.length !== 0) {
        this.preNewList = res.data.pre[0]
      }
      if (res.data.next.length !== 0) {
        this.nextNewList = res.data.next[0]
      }
      console.log(res)
    })
  }
}

</script>

<style>
.web_body {
  font-size: 16px;
  line-height: 2em
}

.web_body ul {
  padding-inline-start: 2em;
  list-style-type: disc
}

.web_body ul li {
  list-style-type: inherit
}

.web_body p {
  text-indent: 2em;
  margin: 15px auto
}

.web_body img {
  max-width: 100%;
  height: auto;
  margin: 0 auto;
  text-align: center;
}

.web_body video {
  max-width: 750px;
  width: auto;
  display: block;
  margin: 0 auto;
  width: 100%
}

.web_body table {
  width: 100%;
  line-height: 25px;
  text-align: center
}

.web_body table tr {
  padding: 5px 10px
}

.web_body table td {
  box-sizing: border-box;
  word-break: break-all;
  padding: 10px
}

.web_body h2 {
  text-align: center;
  width: 100%;
  margin: 10px 0;
  font-size: 26px;
  color: #05163f;
  font-weight: bold
}

.web_body h2:before {
  width: 82px;
  height: 21px;
  content: "";
  display: inline-block;
  vertical-align: middle;
  background: url(~assets/image/icon_ic1.png) no-repeat;
  background-size: 100% 100%;
  margin-right: 15px
}

.web_body h2:after {
  width: 82px;
  height: 21px;
  content: "";
  display: inline-block;
  vertical-align: middle;
  background: url(~assets/image/icon_ic2.png) no-repeat;
  background-size: 100% 100%;
  margin-left: 15px
}

.web_body h3 {
  margin: 10px 0;
  font-size: 26px;
  color: #05163f;
  font-weight: bold
}

.web_body h3:before {
  display: inline-block;
  background: url(~assets/image/icon_tit_h.png) no-repeat center 0;
  vertical-align: middle;
  width: 38px;
  height: 38px;
  content: "";
  background-size: cover;
  margin-right: 8px;
  margin-top: -3px
}

.prevnext {
  background: #fff;
  border: 1px solid #d1ddf9;
  box-sizing: border-box;
  -moz-box-shadow: 2px 0 35px rgba(21, 53, 129, 0.2) inset;
  -webkit-box-shadow: 2px 0 35px rgba(21, 53, 129, 0.2) inset;
  box-shadow: 2px 0 35px rgba(21, 53, 129, 0.2) inset;
  border-radius: 10px
}

.prevnext li {
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  border-bottom: 1px solid #f0f3fa;
  padding: 30px;
  font-size: 16px
}

.prevnext li img {
  float: left;
  height: 36px;
  width: auto;
  vertical-align: middle;
  margin-top: -10px;
  margin-right: 10px
}
.view_news {
  padding: 40px 0 0 0
}
.view_news .viewRight {
  margin-top: -41px;
}
.view_news .b_tit span {
  font-size: 32px;
  color: #05163f;
  font-weight: bold
}

.view_news .b_tit .cs {
  color: #788291;
  margin: 25px auto 30px
}

.view_news .b_tit .cs em:first-child {
  margin-right: 20px
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
</style>
