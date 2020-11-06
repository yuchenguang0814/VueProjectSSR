<template>
  <div>
    <nbanner>
      <div slot="nbanner"
        class="nbanner"
        style="background-image: url(http://www.qizhong114.com/uploads/images/20200707/384e0bc58acadc57179f835caaca6453.jpg);"
      >
        <div class="container">
          <div class="box">
            <div class="in-tit">
              <img
                src="http://www.qizhong114.com/uploads/images/20200429/d2a30b76c889895bb41871f04a491c6d.png"
              />
              <div class="dt">
                <img
                  src="http://www.qizhong114.com/static/home/img/tit_zs.png"
                />新闻中心
              </div>
              <div class="text">
                聚焦顺发起重公司的技术文献及起重机行业热点，在这里您可以更深入、更全面的了解顺发，在这里，读懂顺发，我们为您提供最快、最可靠、最全面的起重机新闻。
              </div>
            </div>
            <ul class="tab">
              <li>
                <a href="http://www.qizhong114.com/shunfanews">企业新闻</a>
              </li>
              <li><a href="http://www.qizhong114.com/hyxw">行业新闻</a></li>
              <li><a href="http://www.qizhong114.com/jswx">技术文献</a></li>
            </ul>
          </div>
        </div>
      </div>
    </nbanner>
    <slot name="crumb"></slot>
    <router-view>
      <div class="box_news">
        <div class="container">
          <div class="box_news_li">
            <div class="tit">
                <span>热点资讯</span>
                  <ul>
                    <li>随时到厂参观考察</li>
                    <li>提供免费定制服务</li>
                  </ul>
                </div>
                <ul class="list_news_wz">
                        <li><a href="http://www.qizhong114.com/shunfanews/238.html">
                <div class="date"><img src="http://www.qizhong114.com/static/home/img/icon_time.png">发布时间：2020-07-07</div>
                <span>起重机的发展方向</span><em>了解更多+</em></a></li>
                        <li><a href="http://www.qizhong114.com/shunfanews/237.html">
                <div class="date"><img src="http://www.qizhong114.com/static/home/img/icon_time.png">发布时间：2020-07-07</div>
                <span>顺发起重的质量方针</span><em>了解更多+</em></a></li>
                        <li><a href="http://www.qizhong114.com/shunfanews/236.html">
                <div class="date"><img src="http://www.qizhong114.com/static/home/img/icon_time.png">发布时间：2020-07-07</div>
                <span>起重机的历史发展</span><em>了解更多+</em></a></li>
                        <li><a href="http://www.qizhong114.com/shunfanews/228.html">
                <div class="date"><img src="http://www.qizhong114.com/static/home/img/icon_time.png">发布时间：2020-07-07</div>
                <span>怎么看待和实现起重机的“轻量化”呢?</span><em>了解更多+</em></a></li>
                        <li><a href="http://www.qizhong114.com/shunfanews/227.html">
                <div class="date"><img src="http://www.qizhong114.com/static/home/img/icon_time.png">发布时间：2020-07-07</div>
                <span>广东省五一劳动奖评选结果揭晓</span><em>了解更多+</em></a></li>
                        <li><a href="http://www.qizhong114.com/shunfanews/206.html">
                <div class="date"><img src="http://www.qizhong114.com/static/home/img/icon_time.png">发布时间：2020-06-27</div>
                <span>佛山工业技改投资额多年领跑全省，机器换人向纵深推进</span><em>了解更多+</em></a></li>
                        <li><a href="http://www.qizhong114.com/shunfanews/205.html">
                <div class="date"><img src="http://www.qizhong114.com/static/home/img/icon_time.png">发布时间：2020-06-27</div>
                <span>视频｜数十年钻“牛角尖”，成就三水这群“硬核”工匠</span><em>了解更多+</em></a></li>
                        <li><a href="http://www.qizhong114.com/shunfanews/204.html">
                <div class="date"><img src="http://www.qizhong114.com/static/home/img/icon_time.png">发布时间：2020-06-27</div>
                <span>【产区】佛山将在顺德南海建机器人生产基地 陶瓷产业如何呼应</span><em>了解更多+</em></a></li>
                </ul>
          </div>
        </div>
      </div>
    </router-view>
  </div>
</template>

<script>
import Nbanner from 'components/common/Nbanner'
export default {
  name: '',
  components: {
    Nbanner
  },
  data () {
    return {}
  },
  mounted () {}
}
</script>
<style>
.box_news {
  padding: 50px 0;
  background: #f0f3fa
}
.box_news .box_news_li {
  margin-top: 40px;
  background: #fff;
  border-top-left-radius: 25px;
  border-top-right-radius: 25px
}
.box_news .box_news_li:first-of-type {
  margin-top: 0
}

.box_news .box_news_li .tit {
  background: url(~assets/image/bj_zone_bg.jpg) no-repeat;
  background-size: 100% 100%;
  height: 179px;
  padding: 44px 30px 0 32px
}
.box_news .box_news_li .tit span {
  font-size: 30px;
  color: #f0f3fa;
  position: relative;
  display: block;
  width: 260px;
  height: 82px;
  line-height: 62px;
  text-align: center;
  background: #3b2055;
  background: -webkit-linear-gradient(left, #752150, #3b2055);
  background: -o-linear-gradient(right, #752150, #3b2055);
  background: -moz-linear-gradient(right, #752150, #3b2055);
  background: linear-gradient(to right, #752150, #3b2055);
  border-radius: 0 15px 15px 15px;
  float: left
}
</style>>
