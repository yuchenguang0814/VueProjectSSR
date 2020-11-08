<template>
  <div>
    <slot name="nb" :props="$store.getters.getNbanner" ></slot>
    <slot name="crumb"></slot>
    <div v-if="this.$route.path == '/news'" class="box_news">
      <div class="container">
        <news-list></news-list>
      </div>
    </div>
    <router-view v-else></router-view>
  </div>
</template>

<script>
import NewsList from './childrenComps/NewsList'
export default {
  name: '',
  components: {
    NewsList
  },
  data () {
    return {
      nbanners: [{
        path: '/news',
        backgroundImage: 'http://qizhong114.com/uploads/images/20200707/384e0bc58acadc57179f835caaca6453.jpg',
        inTitImg: 'http://qizhong114.com/uploads/images/20200429/d2a30b76c889895bb41871f04a491c6d.png',
        dtImg: 'http://qizhong114.com/static/home/img/tit_zs.png',
        text: '聚焦顺发起重公司的技术文献及起重机行业热点，在这里您可以更深入、更全面的了解顺发，在这里，读懂顺发，我们为您提供最快、最可靠、最全面的起重机新闻。'
      },
      {
        path: '/news/companyNews',
        backgroundImage: 'http://qizhong114.com/uploads/images/20200707/384e0bc58acadc57179f835caaca6453.jpg',
        inTitImg: 'http://www.qizhong114.com/static/home/img/tit_news.png',
        dtImg: 'http://qizhong114.com/static/home/img/tit_zs.png',
        text: '广东顺发起重设备有限公司是经国家质量监督检验检疫总局颁证认可的起重机制造生产厂家并提供安装、维修、保养为一体的专业性厂家。从1994年至今已有接近30年的起重机设计、制造、安装的丰富经验。'
      },
      {
        path: '/news/industryNews',
        backgroundImage: 'http://qizhong114.com/uploads/images/20200707/384e0bc58acadc57179f835caaca6453.jpg',
        inTitImg: 'http://www.qizhong114.com/static/home/img/tit_news.png',
        dtImg: 'http://qizhong114.com/static/home/img/tit_zs.png',
        text: '广东顺发起重设备有限公司把“自主、创新，追求卓越”作为产品的价值核心，把“安全、有效解决问题”作为公司的义务，提供“提供超越顾客期望的起重机产品”，作为市场立足之本。希望通过不断学习和努力，促进公司的发展与进步，为社会创造价值。'
      },
      {
        path: '/news/literatureNews',
        backgroundImage: 'http://qizhong114.com/uploads/images/20200707/384e0bc58acadc57179f835caaca6453.jpg',
        inTitImg: 'http://www.qizhong114.com/static/home/img/tit_news.png',
        dtImg: 'http://qizhong114.com/static/home/img/tit_zs.png',
        text: '广东顺发起重设备有限公司是领先的起重机专业制造和服务供应商，公司引进欧洲先进的起重机技术，集起重机研发、制造、销售、安装、维修保养服务于一体。我们拥有丰富行业经验的技术专家和专业的技术服务团队，为客户提供完善的售前、售后服务体系。'
      }],
      childPath: [{
        path: '/news/companyNews',
        name: '企业新闻'
      }, {
        path: '/news/industryNews',
        name: '行业新闻'
      }, {
        path: '/news/literatureNews',
        name: '技术文献'
      }]
    }
  },
  mounted () {
    this.$store.commit('getnb', { data1: this.nbanners, data2: this.childPath })
    this.$store.commit('getPath', this.$route.path)
  }
}
</script>
<style>
.box_news {
    padding: 50px 0;
    background: #f0f3fa
}
@media (max-width: 999px) {
  .box_news {
        padding: 20px 0;
        margin: 0 -10px
    }
}
</style>
