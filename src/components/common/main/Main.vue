<template>
  <div class="main">
  <div class="container">
    <ul class="list_case">
          <li><a href="http://www.qizhong114.com/factory/85.html">
        <div class="pic"><img src="http://www.qizhong114.com/uploads/images/20200524/3484c82b74fea2790519169b6295584b.jpg"></div>
        <div class="dt">顺发起重公司工厂俯视</div>
        </a></li>
            <li><a href="http://www.qizhong114.com/factory/84.html">
        <div class="pic"><img src="http://www.qizhong114.com/uploads/images/20200524/20a935ecb5df129305fd337963cfbef9.jpg"></div>
        <div class="dt">顺发起重公司大门</div>
        </a></li>
            <li><a href="http://www.qizhong114.com/factory/86.html">
        <div class="pic"><img src="http://www.qizhong114.com/uploads/images/20200524/23a014f51ac9e6af71b4cd67d974a8a5.jpg"></div>
        <div class="dt">顺发起重办公楼</div>
        </a></li>
            <li><a href="http://www.qizhong114.com/factory/87.html">
        <div class="pic"><img src="http://www.qizhong114.com/uploads/images/20200524/a02188dd3ae3f7c62c54880b5a20191d.jpg"></div>
        <div class="dt">顺发起重焊接车间</div>
        </a></li>
            <li><a href="http://www.qizhong114.com/factory/88.html">
        <div class="pic"><img src="http://www.qizhong114.com/uploads/images/20200524/225a7002a7762c00667ab11c31187ae9.jpg"></div>
        <div class="dt">顺发起重生产车间</div>
        </a></li>
            <li><a href="http://www.qizhong114.com/factory/89.html">
        <div class="pic"><img src="http://www.qizhong114.com/uploads/images/20200524/c7b23f63c2942a3ad292c47523c54f50.jpg"></div>
        <div class="dt">起重机自动焊接机械手(松下)</div>
        </a></li>
    </ul>
  </div>
  <main-Pages></main-Pages>
</div>
</template>

<script>
import MainPages from './MainPages.vue'
export default {
  name: '',
  components: {
    MainPages
  },
  data () {
    return {
    }
  }
}
</script>

<style>
.main {
  padding: 40px 0 60px 0
}
.list_case {
  margin: -15px;
  overflow: hidden
}

.list_case li {
  width: 33.33333333%;
  float: left;
  padding: 15px
}

.list_case li a {
  display: block;
  overflow: hidden;
  color: #555f7d;
  background: #05163f
}
.list_case li .pic {
  overflow: hidden;
  border-radius: 0 0 0 15px
}

.list_case li .pic img {
  width: 100%;
  height: auto;
  transition: all .5s
}

.list_case li .dt {
  padding: 0 30px;
  line-height: 60px;
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  font-weight: bold;
  font-size: 18px;
  color: #fff;
  transition: all .5s
}
.list_case li:hover a {
  background: #e61e37
}

.list_case li:hover .pic img {
  transform: scale(1.05)
}

.list_case li:hover .dt {
  color: #fff
}
@media (max-width: 999px) {
  .main {
    padding: 20px 0
  }
  .list_case {
    margin: -5px
  }

  .list_case li {
    width: 50%;
    padding: 5px
  }

  .list_case li .dt {
    padding: 0 10px;
    line-height: 34px;
    font-size: 14px
  }
}
</style>
