<template>
<div class="news">
  <div class="container">
    <div class="in-tit">
      <img src="~assets/image/tit_new.png">
      <div class="dt">
        <img src="http://qizhong114.com/static/home/img/tit_zs.png">
        "新闻聚焦"
      </div>
      <div class="text">在这里，你可以了解到广东顺发设备的新鲜动态及行业的热门资讯</div>
    </div>
    <div class="in_news">
      <ul class="tab">
        <li :class="ison==1?'on':''"  @mouseenter="showSub(1)"><a href="http://www.qizhong114.com/hyxw">行业新闻</a></li>
        <li :class="ison==2?'on':''" @mouseenter="showSub(2)" ><a href="http://www.qizhong114.com/jswx">技术文献</a></li>
      </ul>
      <div class="xun">
        <dl data-title="行业新闻">
          <div v-show="ison==1">
                    <dt><a href="http://www.qizhong114.com/hyxw/306.html">打造智能制造的“佛山路径”</a></dt>
                    <dt><a href="http://www.qizhong114.com/hyxw/305.html">佛山召开2020年“智能制造、本质安全”示范企业创建工作政策解读会</a></dt>
                    <dt><a href="http://www.qizhong114.com/hyxw/304.html">国内外机械巨头扎堆佛山机械展</a></dt>
                    <dt><a href="http://www.qizhong114.com/hyxw/248.html">“中国制造”如何变成“中国智造”</a></dt>
                    <dd><em>2020-07-09</em><a href="http://www.qizhong114.com/hyxw/246.html">（泰山号）大国利器，万吨级起重机</a></dd>
                    <dd><em>2020-07-07</em><a href="http://www.qizhong114.com/hyxw/229.html">智能建筑市场规模持续增长 行业竞争力仍需提升</a></dd>
                    <dd><em>2020-07-07</em><a href="http://www.qizhong114.com/hyxw/226.html">佛山市三水36家企业上榜行业龙头名单，有你上班的公司吗？</a></dd>
                    <dd><em>2020-05-30</em><a href="http://www.qizhong114.com/hyxw/123.html">最平凡的普通人，最伟大的英雄们</a></dd>
                    </div>
          </dl>
        <dl data-title="技术文献">
          <div v-show="ison==2">
                    <dt><a href="http://www.qizhong114.com/jswx/339.html">起重机起升部分维保注意事项 </a></dt>
                    <dt><a href="http://www.qizhong114.com/jswx/338.html">起重机维修也有标准，还不快来看看!</a></dt>
                    <dt><a href="http://www.qizhong114.com/jswx/337.html">起重机维修保养起重有哪些注意事项</a></dt>
                    <dt><a href="http://www.qizhong114.com/jswx/336.html">起重机安装配件维修时的注意事项</a></dt>
                    <dd><em>2020-09-02</em><a href="http://www.qizhong114.com/jswx/335.html">起重机维护保养目的和作用</a></dd>
                    <dd><em>2020-09-02</em><a href="http://www.qizhong114.com/jswx/334.html">起重机的保养项目有哪些？</a></dd>
                    <dd><em>2020-09-02</em><a href="http://www.qizhong114.com/jswx/333.html">桥式起重机维护规程</a></dd>
                    <dd><em>2020-09-02</em><a href="http://www.qizhong114.com/jswx/332.html">双梁起重机使用寿命的延长好处在哪里？</a></dd>
                    <dd><em>2020-09-02</em><a href="http://www.qizhong114.com/jswx/331.html">吊车起重机设备如何保养？</a></dd>
                    <dd><em>2020-09-02</em><a href="http://www.qizhong114.com/jswx/330.html">起重机摆线针轮减速机轴承座维修</a></dd>
                    <dd><em>2020-09-02</em><a href="http://www.qizhong114.com/jswx/329.html">桥式起重机传动机构的保养步骤</a></dd>
                    <dd><em>2020-09-02</em><a href="http://www.qizhong114.com/jswx/328.html">双梁起重机检修细节注意</a></dd>
                    <dd><em>2020-08-06</em><a href="http://www.qizhong114.com/jswx/327.html">欧式起重机的控制方式注意要点</a></dd>
                    <dd><em>2020-08-05</em><a href="http://www.qizhong114.com/jswx/325.html">起重机的试运转检验记录</a></dd>
                    <dd><em>2020-08-05</em><a href="http://www.qizhong114.com/jswx/324.html">起重机械制造监督检验内容要求与方法（桥架型起重机）</a></dd>
                    <dd><em>2020-08-05</em><a href="http://www.qizhong114.com/jswx/323.html">起重机起升部分维保注意事项</a></dd>
          </div>
          </dl>
      </div>
    </div>
  </div>
</div>
</template>

<script>
export default {
  data () {
    return {
      ison: 1
    }
  },
  methods: {
    showSub (index) {
      console.log(index)
      this.ison = index
    }
  }
}
</script>
<style scoped>
.news {
  padding: 35px 0;
}
.in_news {
  border: 1px solid #05163f
}

.in_news .tab {
  overflow: hidden;
  background: #05163f
}

.in_news .tab li {
  float: left;
  width: 50%;
  overflow: hidden;
  line-height: 60px;
  font-size: 26px;
  text-align: center
}

.in_news .tab li a {
  display: block;
  overflow: hidden;
  color: #fff
}

.in_news .tab li:first-child {
  border-top-right-radius: 15px
}

.in_news .tab li:last-child {
  border-top-left-radius: 15px
}

.in_news .tab li.on a {
  font-weight: bold;
  color: #05163f;
  background: #fff
}

.in_news .xun {
  padding: 20px 35px 35px 35px;
  overflow: hidden
}

.in_news .xun dl {
  margin: 0 -15px;
  overflow: hidden
}

.in_news .xun dl dt,
.in_news .xun dl dd {
  width: 50%;
  float: left;
  padding: 0 15px;
  border-bottom: 1px dashed #ebf0f8;
  font-size: 16px;
  line-height: 62px
}

.in_news .xun dl dt a {
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  padding: 0 40px;
  background: url(~assets/image/icon_news_tj.png) left 18px no-repeat;
  font-weight: bold;
  font-size: 18px;
  position: relative;
  color: #05163f;
  transition: all 0.5s;
}

.in_news .xun dl dt a:after {
  background: url(~assets/image/icon_jtr_b.png) no-repeat;
  background-size: 100% 100%;
  content: "";
  display: inline-block;
  width: 38px;
  height: 24px;
  position: absolute;
  right: 0;
  top: 50%;
  transform: translateY(-50%)
}

.in_news .xun dl dt a:hover {
  margin-left: -15px
}

.in_news .xun dl dd a {
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  padding-left: 30px;
  background: url(~assets/image/icon_news_li.png) left 22px no-repeat;
  color: #4b556e
}

.in_news .xun dl dd a:hover {
  margin-left: -15px;
  color: #e61e37
}

.in_news .xun dl dd em {
  float: right
}
@media (max-width:999px) {
  .news {
    padding: 20px 0;
  }
  .in_news .tab li {
        line-height: 40px;
        font-size: 16px
    }

    .in_news .xun {
        padding: 10px
    }

    .in_news .xun dl {
        margin: 0
    }

    .in_news .xun dl dt,
    .in_news .xun dl dd {
        width: 100%;
        padding: 0;
        font-size: 12px;
        line-height: 34px
    }

    .in_news .xun dl dt a {
        padding: 0 40px 0 22px;
        background-position: left 8px;
        background-size: auto 18px;
        font-size: 14px
    }

    .in_news .xun dl dt a:after {
        width: 29px;
        height: 18px
    }

    .in_news .xun dl dt a:hover {
        margin-left: 0
    }

    .in_news .xun dl dd a {
        padding-left: 15px;
        background-position: left 12px;
        background-size: auto 12px
    }

    .in_news .xun dl dd a:hover {
        margin-left: 0
    }

    .in_news .xun dl dd em {
        padding: 0 0 0 10px
    }
}
</style>
