<template>
  <div class="view_body">
  <div class="container">
    <div class="bodyLeft">
      <div class="web_body">
        <div class="top">
          <img src="~assets/image/cd66cc8146bd85a9f1126be9422e285b.png" title="5a167c5cbc460.png" alt="5a167c5cbc460.png" width="54" height="54"/>
            <strong>
              产品概述
            </strong>
          </div>
          <!-- 产品内容  -->
          <hr>
      </div>
    </div>
  </div>
</div>
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
.view_body {
  padding: 40px 0 60px 0
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
.web_body .top {
  font-size: 24px;
  line-height: 24px;
  color: red;
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
</style>
