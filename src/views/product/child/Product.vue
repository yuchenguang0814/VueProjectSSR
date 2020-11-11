<template>
  <div>
    <view-pro/>
    <pro-cate/>
    <view-body/>
  </div>
</template>

<script>
import ViewPro from '../childrenComps/ViewPro'
import ProCate from '../childrenComps/ProCate'
import ViewBody from '../childrenComps/ViewBody'
export default {
  name: '',
  components: {
    ViewPro,
    ProCate,
    ViewBody
  },
  data () {
    return {
    }
  }
}

</script>

<style>

</style>
