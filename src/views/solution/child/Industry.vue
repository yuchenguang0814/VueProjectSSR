<template>
  <mains><div slot="dt1"><img src="http://www.qizhong114.com/static/home/img/icon_more.png">LH型双梁桥式起重机视频1121323</div></mains>
</template>

<script>
import Mains from 'components/common/main/Main'
export default {
  name: '',
  components: {
    Mains
  },
  data () {
    return {
    }
  }
}

</script>

<style>

</style>

<style>
.solution .list_case li .dt{
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
.solution .list_case li .dt img{
    float: right;
    height: 38px;
    width: auto;
    margin-top: 6px;
}

@media (max-width: 999px) {
  .solution .list_case li {
  width: 50%;
}
  .solution .list_case li .dt div{
    background-size: auto 20px;
    padding: 0 5px 0 20px;
    line-height: 34px;
    font-size: 14px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .solution .list_case li .dt div img{
    height: 18px;
    margin-top: 8px;
  }
}
</style>
