<template>
  <div class="pro_cate" id="pro_tab">
  <div class="container">
    <ul :class="showTop ? 'cur' : '' ">
      <li><a href="javascript:;"  @click="scrollFun('#tiao_detail')">产品描述</a></li>
      <li><a href="javascript:;"  @click="scrollFun('#tiao_body')">产品介绍</a></li>
      <li><a href="javascript:;"  @click="scrollFun('#tiao_mess')">在线留言</a></li>
    </ul>
  </div>
</div>
</template>

<script>
export default {
  name: '',
  components: {
  },
  data () {
    return {
      showTop: false
    }
  },
  mounted () {
    window.addEventListener('scroll', this.handleScroll)
  },
  methods: {
    scrollFun (hash) {
      const returnEle = document.querySelector(hash)
      returnEle.scrollIntoView({
        behavior: 'smooth',
        block: 'start'
      })
    },
    handleScroll () {
      this.scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop // 滚动条偏移量
      this.showTop = this.scrollTop > 1080
    }
  }
}

</script>

<style>
.cur {
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  z-index: 999;
  background: #fff;
}
.pro_cate ul {
  overflow: hidden;
  border: 1px solid #e8ebf1;
  border-radius: 50px;
  -moz-box-shadow: 2px 0 20px rgba(21, 53, 129, 0.2) inset;
  -webkit-box-shadow: 2px 0 20px rgba(21, 53, 129, 0.2) inset;
  box-shadow: 2px 0 20px rgba(21, 53, 129, 0.2) inset
}

.pro_cate ul li {
  float: left;
  width: 33.33%;
  text-align: center;
  font-size: 18px;
  border-left: 1px solid #edeff4;
  line-height: 54px
}

.pro_cate ul li a {
  display: block;
  overflow: hidden
}

.pro_cate ul li a:hover {
  color:red
}

.pro_cate ul li:first-child {
  border-left: 0
}
@media (max-width: 999px) {
  .pro_cate .container {
    padding: 0
  }

  .pro_cate ul {
    border-radius: 0
  }

  .pro_cate ul li {
    width: 33.33333333%;
    font-size: 16px;
    line-height: 44px;
    border-top: 1px solid #edeff4
  }

  .pro_cate ul li:first-child {
    border-left: 0
  }
}
</style>
