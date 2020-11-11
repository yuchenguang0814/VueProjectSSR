<template>
  <div class="view_body" id="tiao_body">
  <div class="container">
    <div class="bodyLeft">
      <div class="web_body">
        <div class="top">
          <img src="~assets/image/cd66cc8146bd85a9f1126be9422e285b.png" title="5a167c5cbc460.png" alt="5a167c5cbc460.png"/>
            <span>
              产品概述
            </span>
          </div>
          <!-- 产品内容  -->
          <hr>
          <div class="top">
          <img src="~assets/image/cd66cc8146bd85a9f1126be9422e285b.png" title="5a167c5cbc460.png" alt="5a167c5cbc460.png"/>
            <span>
              产品特点
            </span>
          </div>
          <!-- 产品内容  -->
          <hr>
          <div class="top">
          <img src="~assets/image/cd66cc8146bd85a9f1126be9422e285b.png" title="5a167c5cbc460.png" alt="5a167c5cbc460.png"/>
            <span>
              技术参数
            </span>
          </div>
          <!-- 产品内容  -->
      </div>
    </div>
    <view-right/>
  </div>
  <div class="line_height60"></div>
  <div class="pd10">
    <main-mess id="tiao_mess"/>
    <div class="line_height60"></div>
    <view-bottom/>
    </div>
</div>
</template>

<script>
import ViewRight from 'components/common/main/ViewRight'
import MainMess from 'components/common/main/MainMess'
import ViewBottom from 'components/common/main/ViewBottom'
export default {
  name: '',
  components: {
    ViewRight,
    MainMess,
    ViewBottom
  },
  data () {
    return {
    }
  }
}

</script>

<style>
.view_body {
  padding: 40px 0 60px 0
}
.top {
  display: flex;
  flex: 1;
}
.view_body .top img {
  display: block;
  width: 54px;
  height:54px;
  margin: 0;
}
.top span {
  display: block;
  height:54px;
  font-size: 24px;
  line-height: 54px;
  color: red;
  margin-left: 10px;
  font-weight: 700;
}
.view_body .container {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-justify-content: space-between;
  justify-content: space-between
}

.view_body .container:after {
  display: none
}

.view_body .container .bodyLeft {
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  width: 0;
  max-width: 943px;
  padding: 0 20px 0 0
}
.view_body .web_body {
  margin-bottom: 35px
}
.web_body p {
    text-indent: 2em;
    margin: 15px auto;
}
.web_body hr {
  margin: 25px 0;
}
.web_body img {
    max-width: 100%;
    height: auto;
    margin: 0 auto;
    text-align: center;
}
@media (max-width: 999px) {
  .pd10 {
    padding: 0 10px;
  }
    .view_body {
        padding: 20px 0
    }

    .view_body .container .bodyLeft {
        padding: 0
    }

    .view_body .container .viewRight {
        display: none
    }
    .view_body .web_body {
        margin-bottom: 20px
    }
    .view_body .box_xgboxl {
        padding: 20px 0
    }
}
</style>
