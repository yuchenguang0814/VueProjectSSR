<template>
  <div>
    <view-pro :product = "product"/>
    <pro-cate :product = "product"/>
    <view-body :product = "product"/>
  </div>
</template>

<script>
import ViewPro from '../childrenComps/ViewPro'
import ProCate from '../childrenComps/ProCate'
import ViewBody from '../childrenComps/ViewBody'
import { getGoodByid } from 'network/product'
export default {
  name: '',
  components: {
    ViewPro,
    ProCate,
    ViewBody
  },
  created () {
    getGoodByid({ id: this.$route.params.id }).then(res => {
      this.product = res.data.product[0]
      if (this.product !== null) {
        document.title = this.product.name
        document.querySelector('meta[name="keywords"]').setAttribute('content', this.product.pageKey)
        document.querySelector('meta[name="description"]').setAttribute('content', this.product.pageDescription)
      }
    })
  },
  data () {
    return {
      product: {}
    }
  }
}

</script>

<style>

</style>
