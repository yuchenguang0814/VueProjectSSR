<template>
  <div>
    <slot name="nb" :props="$store.getters.getNbanner" ></slot>
    <slot name="crumb"></slot>
  </div>
</template>

<script>
export default {
  components: {
  },
  data () {
    return {
      nbanners: [{
        path: '/service',
        backgroundImage: 'http://www.qizhong114.com/uploads/images/20200606/6ea4ab1d8f34814f2a10163d74ac0124.jpg',
        inTitImg: 'http://www.qizhong114.com/uploads/images/20200430/4725894ffc5ff2561b0f5df5b6206069.png',
        dtImg: 'http://qizhong114.com/static/home/img/tit_zs.png',
        text: '我们的服务承诺并不是一句口号、一个理念或一个广告，我们的服务承诺是认真的。为此，我们建设了庞大、系统和规范化的服务保障体系，确保每个环节执行到位、精细处理。为广大客户提供起重机维修、起重机保养、天车维修保养、行车维修保养、行吊维修保养、龙门吊维修、龙门吊保养、吊机维修、门吊维修保养等维保服务。'
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
</style>
