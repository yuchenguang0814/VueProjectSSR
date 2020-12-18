<template>
  <header>
    <div class="container">
      <!-- logo栏 -->
      <div class="logo">
        <router-link to="#">
          <img :src="`${$baseUrl + this.$store.state.userList.logo}`" alt="logo图">
        </router-link>
      </div>
      <!-- 手机端小图标 -->
      <div class="navbut wap" @click="showNav($event)"></div>
      <!-- 导航栏 -->
      <div class="box">
        <!-- 导航栏顶部 -->
        <div class="top pc">
          <slot></slot>
          <ul>
            <li v-for="(item) in topItem" :key="item.id" @mouseenter="showSub($event,item.id)" @mouseleave="hiddenSub($event)">
              <router-link :to="item.pagePath">{{item.pageName}}</router-link>
              <transition name="fade">
                <div v-if="item.child.length>0" class="sub" v-show="item.id==isShow">
                  <router-link :to="item.pageName === '产品中心'?'/category/'+item2.cid:item2.pagePath" v-for="(item2) in item.child" :key="item2.id">{{item2.pageName}}
                  </router-link>
                </div>
              </transition>
            </li>
          </ul>
          <div class="tel">
            <p>全国统一销售热线</p>
            <div class="t">
              86-<em>{{telPhone}}</em>
            </div>
          </div>
        </div>
        <!-- 导航栏底部 -->
        <nav v-show="this.$store.state.isPc | showN !== false" id="nav">
          <ul v-if="navItem.length > 1">
            <li v-for="item in navItem" :key="item.id"  @mouseenter="showSub($event,item.id)" @mouseleave="hiddenSub($event)">
              <router-link :to="item.pagePath" @click.native="showN=false">{{item.pageName}}</router-link>
              <i class="navI" v-if="item.child.length>0" @click="showNsub($event,item.id)"></i>
              <transition name="fade">
                <div v-if="item.child.length>0" class="sub"  v-show="item.id==isShow">
                  <router-link :to="item.pageName === '产品中心'?'/category/'+item2.cid:item2.pagePath" v-for="(item2) in item.child" :key="item2.id" @click.native="showN=false">{{item2.pageName}}
                  </router-link>
                </div>
              </transition>
            </li>
            <li><router-link to="/home"><img src="~assets/image/us.png" alt=""></router-link></li>
          </ul>
        </nav>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  name: 'HeaderNav',
  data () {
    return {
      telPhone: 18968919292,
      isShow: -1,
      showN: false,
      screenWidth: ''
    }
  },
  computed: {
    topItem () {
      return this.$store.state.pageList.slice(0, 3)
    },
    navItem () {
      const arr = this.$store.state.pageList.filter(item => item.id !== 4)
      const arr1 = this.$store.state.pageList.filter(item => item.id === 4)[0]
      arr.unshift(arr1)
      if (this.$store.state.isPc) {
        if (this.screenWidth <= 999) {
          return arr
        } else {
          return this.$store.state.pageList.slice(3)
        }
      } else {
        return arr
      }
    }
  },
  watch: {
    screenWidth () {
      if (this.screenWidth > 999) {
        document.getElementById('nav').style.display = 'block'
      } else if (this.screenWidth <= 999 && this.$store.state.isPc) {
        document.getElementById('nav').style.display = 'none'
      }
    }
  },
  methods: {
    showSub (e, index) {
      if (this.$store.state.isPc) {
        this.isShow = index
      }
    },
    showNsub (e, index) {
      if (this.isShow === index) {
        this.isShow = -1
        e.target.className = ''
      } else {
        if (document.getElementsByClassName('up')[0]) {
          document.getElementsByClassName('up')[0].className = ''
        }
        this.isShow = index
        e.target.className = 'up'
      }
    },
    hiddenSub (e) {
      if (this.$store.state.isPc) {
        this.isShow = -1
      }
    },
    showNav (e) {
      if (this.$store.state.isPc) {
        const nav = document.getElementById('nav')
        if (nav.style.display === '' || nav.style.display === 'none') {
          nav.style.display = 'block'
        } else {
          nav.style.display = 'none'
        }
      }
      this.showN = !this.showN
    }
  },
  created () {
    this.screenWidth = document.body.clientWidth
    window.onresize = () => {
      return (() => {
        this.screenWidth = document.body.clientWidth
      })()
    }
  }
}
</script>

<style>
/* header 样式*/
header .container {
  display: flex;
  align-items: center;
  justify-content: space-between
}

header .container:after {
  display: none
}

header .logo img {
  height: 68px;
  width: auto
}

header .box {
  border-left: 2px solid #f0f3fa;
  flex: 1;
  width: 0;
  max-width: 880px;
  margin-left: 20px;
}

header .top {
  padding: 18px 0;
  display: flex;
  align-items: center;
  justify-content: space-between
}

header .top ul {
  flex: 1;
  width: 0;
  padding: 0 3%
}

header .top ul li {
  float: left;
  width: 29.33333333%;
  text-align: center;
  margin: 0 2%;
  position: relative;
  z-index: 1000
}

header .top ul li>a {
  border: 1px solid #e6e9f0;
  display: block;
  padding: 12px 0;
  box-sizing: border-box;
  border-radius: 30px;
  font-size: 18px;
  font-weight: bold;
  box-shadow: 2px 0 15px rgba(21, 53, 133, 0.2) inset
}

header .top ul li .sub {
  display: block;
  border-radius: 30px;
  overflow: hidden;
  position: absolute;
  min-width: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  text-align: center;
  line-height: 40px;
}

header .top ul li .sub a {
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #fff;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1)
}

header .top ul li .sub a:hover {
  background-color: rgba(0, 0, 0, 0.5)
}

header .top ul li:hover>a {
  color: #e61e37;
  box-shadow: 2px 0 15px rgba(230, 30, 55, 0.2) inset;
  border: 1px solid #fbebed;
  transition: all 0.5s;
}

header .top .tel {
  background: url(~assets/image/icon_header_tel.png) left center no-repeat;
  padding-left: 50px;
  line-height: 1;
}

header .top .tel .t {
  padding: 5px 0 0 0
}

header .top .tel .t em {
  color: #e61e37;
  font-size: 20px
}

header .box nav {
  display: block;
  border-top: 2px solid #f0f3fa
}
header nav ul li {
  float: left;
  width: 14.2%;
  text-align: center;
  position: relative;
  z-index: 999;
}
header nav ul li>a {
  line-height: 60px;
  display: block;
  overflow: hidden;
  font-size: 18px;
  font-weight: bold;
  color: #05163f;
  position: relative;
}

header nav ul li>a:before,
header nav ul li>a:after {
  content: '';
  width: 0;
  height: 2px;
  background: #e61e37;
  transition: all 0.5s;
  position: absolute
}

header nav ul li>a:before {
  bottom: 0;
  right: 0
}

header nav ul li>a:after {
  left: 0;
  top: 0
}

header nav ul li:hover>a:before,
header nav ul li:hover>a:after {
  width: 100%
}

header nav ul li .sub {
  position: absolute;
  left: 0;
  top: 100%;
  min-width: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  text-align: center;
  line-height: 40px
}

header nav ul li .sub a {
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #fff;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1)
}

header nav ul li .sub a:hover {
  background-color: rgba(0, 0, 0, 0.5)
}

header nav ul li.on>a {
  color: #e61e37
}
.fade-enter-active {
  top: 100%;
  transition: all 0.5s
}
.fade-enter, .fade-leave-active {
  top: 66%
}
@media (max-width:999px) {
  header {
    position: fixed;
    left: 0;
    top: 0;
    width: 100%;
    z-index: 9999;
    background: #fff;
    box-shadow: 0 0 5px #eee
  }

  header .container {
    height: 55px
  }

  header .logo img {
    height: 35px
  }
  header .navbut {
    display: block;
    width: 55px;
    height: 55px;
    background: url(~assets/image/icon_wap_nav.png) center center no-repeat;
    background-size: auto 24px;
    margin-right: -10px
  }

  header .box {
    position: absolute;
    border-left: 0;
    max-width: inherit;
    margin-left: 0
  }
  header .box nav {
    position: fixed;
    top: 55px;
    width: 100%;
    border-top: 0;
    background: #fff;
    box-shadow: 0 0 5px #eee;
  }
  header .box nav ul li {
    width: 100%;
    text-align: left;
    position: relative;
  }
  header .box nav ul li > a {
    line-height: 50px;
    font-size: 16px;
    padding: 0 15px;
    border-bottom: 1px solid #eee;
  }
  header .box nav ul li > a:before,
  header .box nav ul li > a:after {
    display: none;
  }
  header .box nav ul li i {
    display: block;
    position: absolute;
    right: 0;
    top: 0;
    height: 50px;
    width: 50px;
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    align-items: center;
    -webkit-justify-content: center;
    justify-content: center;
  }
  header .box nav ul li i:before {
    content: "";
    width: 15px;
    height: 15px;
    border-bottom: 1px solid #bbb;
    border-left: 1px solid #bbb;
    transform: rotate(-45deg);
    margin-top: -7px;
    transform: rotate(-45deg);
    transition: transform 1.5s;
  }
  header .box nav ul li i.up {
    transform: rotate(180deg);
  }
  header .box nav ul li .sub {
    position: static;
    line-height: 34px;
    background: #f5f5f5;
    text-align: left;
  }
  header .box nav ul li .sub a {
    padding: 0 15px;
    border-bottom: 1px solid #eee;
    color: #888;
  }
  header .box nav ul li .sub a:hover {
    background: none;
  }
  header .box nav ul li:hover > a {
    color: #555f7d;
  }
  header .box nav ul li.on > a {
    color: #fff;
    background: #e61e37;
  }
  header .box nav ul li.on i:before {
    border-left-color: #fff;
    border-bottom-color: #fff;
  }
  header .box nav ul li > a {
    line-height: 50px;
    font-size: 16px;
  }
  header .box nav ul li > a:before,
  header .box nav ul li > a:after {
    height: 1px;
  }
}
</style>
