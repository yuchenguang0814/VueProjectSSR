<template>
<div>
  <slot name="nb" :props="$store.getters.getNbanner" >
  </slot>
  <slot name="crumb"></slot>
    <div v-if="this.$route.path == '/about'">
    <about-us></about-us>
    <about-product></about-product>
    <about-cooperation></about-cooperation>
    </div>
  <router-view v-else>
  </router-view>
</div>
</template>

<script>
import AboutUs from './childrenComps/AboutUs'
import AboutProduct from './childrenComps/AboutProduct'
import AboutCooperation from './childrenComps/AboutCooperation'
export default {
  name: '',
  components: {
    AboutUs,
    AboutProduct,
    AboutCooperation
  },
  computed: {
  },
  data () {
    return {
      nbanners: [{
        path: '/about',
        backgroundImage: 'http://www.qizhong114.com/uploads/images/20200606/387917e2e5f00ed88d24a3ef54a4efbd.jpg',
        inTitImg: 'http://www.qizhong114.com/uploads/images/20200430/9afd9297dbb252428302d09fb40646de.png',
        dtImg: 'http://qizhong114.com/static/home/img/tit_zs.png',
        text: '广东顺发起重设备有限公司在原南海市于1994年成立，工厂面积约40000m2，至今已是领先的A级起重机专业制造和服务供应商，公司引进欧洲先进的起重机技术，集起重机研发、制造、销售、安装、服务于一体。主要生产欧式起重机、双梁桥式起重机、单梁桥式起重机、门式起重机、悬挂起重机、旋臂起重机、通用钢丝绳电动葫芦等。'
      },
      {
        path: '/about/factory',
        backgroundImage: 'http://www.qizhong114.com/uploads/images/20200606/8e4dfed80f42cafb01259428a0a656e2.jpg',
        inTitImg: 'http://www.qizhong114.com/uploads/images/20200430/5499c7929e08efdc766104b0e091a88a.png',
        dtImg: 'http://qizhong114.com/static/home/img/tit_zs.png',
        text: '广东顺发起重设备有限公司拥有多个大型标准生产车间，按起重机模块流水线生产布局，完全符合ISO国际标准，欧洲标准、中国标准。我们拥有包括40m数控火焰切割生产线，40m数控等离子切割系统、箱型梁成型生产线、多台龙门式自动埋弧焊系统、机器人焊接系统生产线(60m 10台)、整机预组装平台、整梁抛丸处理线等生产装备。'
      },
      {
        path: '/about/honor',
        backgroundImage: 'http://www.qizhong114.com/static/home/img/pic_banner_project.jpg',
        inTitImg: 'http://www.qizhong114.com/static/home/img/tit_hongxing.png',
        dtImg: 'http://qizhong114.com/static/home/img/tit_zs.png',
        text: '广东顺发起重设备有限公司长期与广大新老客户的合作中积累了丰富的经验，使得公司的产品在同行业中更具独特性，深受广大用户的青睐和好评，并在起重机行业中拥有最高级别的A级生产许可证，公司生产依据ISO9001质量控制体系对产品在其来料、加工过程、整机、出货各个环节严格把关，确保出货产品的性能和质量，多个产品系列已获得欧盟CE认证。经过多年发展公司已先后获“广东省著名商标”、“中国AAA级信用企业”、“中国行业十佳品牌”、“民营科技企业”等荣誉称号.'
      }],
      childPath: [{
        path: '/about/factory',
        name: '工厂实景'
      }, {
        path: '/about/honor',
        name: '荣誉中心'
      }]
    }
  },
  methods: {
  },
  created () {
  },
  mounted () {
    this.$store.commit('getnb', { data1: this.nbanners, data2: this.childPath })
    this.$store.commit('getPath', this.$route.path)
  }
}

</script>

<style>
</style>
