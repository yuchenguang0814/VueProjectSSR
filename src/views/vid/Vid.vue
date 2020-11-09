<template>
  <div class="video">
    <slot name="nb" :props="$store.getters.getNbanner" ></slot>
    <slot name="crumb"></slot>
    <mains><div slot="dt1"><img src="http://www.qizhong114.com/static/home/img/icon_more.png">LH型双梁桥式起重机视频1121323</div></mains>
  </div>
</template>

<script>
import Mains from 'components/common/main/Main'
export default {
  name: 'Vid',
  components: {
    Mains
  },
  data () {
    return {
      nbanners: [{
        path: '/video',
        backgroundImage: 'http://www.qizhong114.com/uploads/images/20200606/418def02962bf4d16ec0e5e0ff014080.jpg',
        inTitImg: 'http://www.qizhong114.com/static/home/img/tit_video.png',
        dtImg: 'http://qizhong114.com/static/home/img/tit_zs.png',
        text: '每一张光影记录都承载着我们的精彩与成长每一个视频都阐述着我们的用心与专业。这样的一幕幕、一瞬间是我们日常的缩影、是我们实力的展示、能力的诠释。或静或动的画面，都是我们真实的样子。 从这里开始，带你全面认识广东顺发的起重设备……'
      }],
      childPath: []
    }
  },
  mounted () {
    this.$store.commit('getnb', { data1: this.nbanners, data2: this.childPath })
    this.$store.commit('getPath', this.$route.path)
  }
}
</script>

<style>
.video .list_case li .dt{
    background: url(~assets/image/icon_dian.png) 10px center no-repeat;
    background-size: auto 34px;
    padding: 0 15px 0 30px;
    line-height: 50px;
    display: block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    font-weight: bold;
    font-size: 18px;
    color: #fff;
    transition: all .5s;
}
.video .list_case li .dt img{
    float: right;
    height: 38px;
    width: auto;
    margin-top: 6px;
}

@media (max-width: 999px) {
  .video .list_case li .dt div{
    background-size: auto 20px;
    padding: 0 5px 0 20px;
    line-height: 34px;
    font-size: 14px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .video .list_case li .dt div img{
    height: 18px;
    margin-top: 8px;
  }
}
</style>
