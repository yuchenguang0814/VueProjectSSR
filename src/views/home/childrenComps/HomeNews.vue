<template>
<div class="news">
  <div class="container">
    <div class="in-tit">
      <img src="~assets/image/tit_new.png">
      <div class="dt">
        <img src="http://qizhong114.com/static/home/img/tit_zs.png">
        "新闻聚焦"
      </div>
      <div class="text">在这里，你可以了解到{{this.$store.state.userList.companyName}}的新鲜动态及行业的热门资讯</div>
    </div>
    <div class="in_news">
      <ul class="tab">
        <li :class="ison==1?'on':''"  @mouseenter="showSub(1)"><a href="http://www.qizhong114.com/hyxw" @click.prevent="showSub(1)">行业新闻</a></li>
        <li :class="ison==2?'on':''" @mouseenter="showSub(2)" ><a href="http://www.qizhong114.com/jswx" @click.prevent="showSub(2)">技术文献</a></li>
      </ul>
      <div class="xun">
        <dl data-title="行业新闻">
          <div v-show="ison==1">
            <div  v-for="(item,index) in newsList.cNews" :key="item.id">
              <dt v-if="index<=1"><router-link :to="`/news/${item.id}`">{{item.title}}</router-link></dt>
              <dd v-if="index> 1"><em>{{item.createtime | dateFormat}}</em><router-link :to="`/news/${item.id}`">{{item.title}}</router-link></dd>
              </div>
            </div>
          </dl>
        <dl data-title="技术文献">
          <div v-show="ison==2">
            <div  v-for="(item,index) in newsList.iNews" :key="item.id">
              <dt v-if="index<=1"><router-link :to="`/news/${item.id}`">{{item.title}}</router-link></dt>
              <dd v-if="index> 1"><em>{{item.createtime | dateFormat}}</em><router-link :to="`/news/${item.id}`">{{item.title}}</router-link></dd>
            </div>
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
  props: {
    newsList: {
      type: Object,
      default () {
        return {}
      }
    }
  },
  methods: {
    showSub (index) {
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
  color: #4b556e;
  transition: all 0.5s;
}

.in_news .xun dl dd a:hover {
  margin-left: 15px;
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
