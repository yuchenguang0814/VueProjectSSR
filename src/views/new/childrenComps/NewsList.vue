<template>
  <div class="box_news_li">
    <div class="tit">
      <span>热点资讯</span>
      <ul>
        <li>随时到厂参观考察</li>
        <li>提供免费定制服务</li>
      </ul>
    </div>
    <div class="box">
      <ul class="list_news_wz">
        <li v-for="item in news" :key="item.id">
          <router-link :to="`/news/${item.id}`">
            <div class="date">
              <img src="~assets/image/icon_time.png"/>发布时间：{{item.createtime | dateFormat}}
            </div>
            <span>{{item.title}}</span><em>了解更多+</em></router-link>
        </li>
      </ul>
    </div>
    <main-Pages></main-Pages>
  </div>
</template>

<script>
import MainPages from 'components/common/main/MainPages'
export default {
  components: {
    MainPages
  },
  props: {
    news: {
      type: Array,
      defaut () {
        return []
      }
    }
  }
}
</script>

<style>
.box_news_li {
    margin-top: 40px;
    background: #fff;
    border-top-left-radius: 25px;
    border-top-right-radius: 25px
}
.box_news_li .tit {
    background: url(~assets/image/bj_zone_bg.jpg) no-repeat;
    background-size: 100% 100%;
    height: 179px;
    padding: 44px 30px 0 32px
}
.box_news_li .tit span {
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
.box_news_li .tit span:after {
    position: absolute;
    bottom: 15px;
    content: "";
    display: block;
    width: 130px;
    height: 6px;
    background: url(~assets/image/icon_s.png) no-repeat;
    background-size: 100% 100%;
    left: 50%;
    margin-left: -65px
}
.box_news_li .tit ul {
    float: right
}

.box_news_li .tit ul li {
    font-size: 18px;
    color: #cad7f6;
    float: left;
    position: relative;
    margin-left: 80px
}

.box_news_li .tit ul li:before {
    position: absolute;
    left: -30px;
    top: 3px;
    width: 22px;
    height: 18px;
    background: url(~assets/image/icon_lx.png) no-repeat;
    background-size: 100% 100%;
    content: "";
    display: block
}

.box_news_li .tit ul li:first-child {
    margin-left: 0
}
.box_news_li .box {
    padding: 20px
}
.list_news_wz {
    margin: -10px -8px
}

.list_news_wz li {
    width: 33.33333333%;
    float: left;
    padding: 10px 8px
}

.list_news_wz li a {
    background: #f0f3fa;
    padding: 40px 35px;
    display: block;
    overflow: hidden;
    box-shadow: 1px 1px 30px #eee;
    line-height: 1.5;
    color: #788291
}

.list_news_wz li .date img {
    height: 15px;
    width: auto;
    margin-right: 5px;
    margin-top: -3px;
    vertical-align: middle
}

.list_news_wz li span {
    font-size: 20px;
    color: #05163f;
    margin: 30px 0;
    display: block;
    overflow: hidden;
    font-weight: bold;
    line-height: 30px;
    height: 60px;
    transition: all .5s
}

.list_news_wz li em {
    font-size: 16px
}

.list_news_wz li:hover a {
    box-shadow: 4px 4px 20px 5px rgba(0, 0, 0, 0.13);
    transform: translate(0, -3px)
}

.list_news_wz li:hover span {
    color: #e61e37
}

.list_news_wz:after {
    width: 100%;
    clear: both;
    line-height: 0;
    display: block;
    overflow: hidden;
    zoom: 1;
    font-size: 0;
    content: '.'
}
@media (max-width: 999px) {
  .box_news_li {
        margin-top: 20px
    }

    .box_news_li .tit {
        height: 80px;
        padding: 18px 10px 0 10px
    }

    .box_news_li .tit span {
        font-size: 20px;
        width: 120px;
        height: 42px;
        line-height: 36px
    }

    .box_news_li .tit span:after {
        bottom: 5px;
        width: 80px;
        height: 3px;
        margin-left: -40px
    }

    .box_news_li .tit ul {
        margin-top: -8px;
        opacity: .5
    }

    .box_news_li .tit ul li {
        float: none;
        font-size: 12px;
        margin-left: 0;
        margin-bottom: 5px
    }

    .box_news_li .tit ul li:before {
        left: -20px;
        top: 3px;
        width: 16px;
        height: 12px
    }
    .box_news_li .box {
        padding: 10px
    }
    .list_news_wz {
        margin: -5px
    }

    .list_news_wz li {
        width: 50%;
        padding: 5px
    }

    .list_news_wz li a {
        padding: 10px
    }

    .list_news_wz li .date {
        font-size: 12px
    }

    .list_news_wz li .date img {
        height: 12px;
        margin-right: 3px;
        margin-top: -3px
    }

    .list_news_wz li span {
        font-size: 16px;
        margin: 5px 0;
        line-height: 24px;
        height: 48px
    }

    .list_news_wz li em {
        font-size: 12px
    }
}
</style>
