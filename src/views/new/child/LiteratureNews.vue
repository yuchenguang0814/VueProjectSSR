<template>
  <div>
    <main-news :news="newList"></main-news>
  </div>
</template>

<script>
import MainNews from 'components/common/main/MainNews'
import { getNewByid } from 'network/news'
export default {
  name: '',
  components: {
    MainNews
  },
  computed: {
  },
  data () {
    return {
      newList: []
    }
  },
  created () {
    getNewByid({ cid: 5 }).then(res => {
      this.newList = res.data.new
    })
  }
}

</script>

<style>

</style>
