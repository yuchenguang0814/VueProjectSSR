<template>
  <header>
    <div class="container">
      <!-- logo栏 -->
      <div class="logo">
        <a href="#">
          <img src="~assets/image/logo.jpg" alt="logo图">
        </a>
      </div>
      <!-- 手机端小图标 -->
      <div class="navbut wap"></div>
      <!-- 导航栏 -->
      <div class="box pc">
        <!-- 导航栏顶部 -->
        <div class="top">
          <slot></slot>
          <ul>
            <li v-for="(item) in topItem" :key="item.id" @mouseenter="showSub($event,item.id)" @mouseleave="hiddenSub($event)">
              <a :href="item.link">{{item.name}}</a>
              <transition name="fade">
                <div v-if="item.sub" id="sub" v-show="item.id==isShow">
                  <a :href="item2.link" v-for="(item2, index2) in item.sub" :key="index2">{{item2.name}}
                  </a>
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
        <nav>
          <ul>
            <li v-for="item in navItem" :key="item.id"  @mouseenter="showSub($event,item.id)" @mouseleave="hiddenSub($event)">
              <a :href="item.link">{{item.name}}</a>
              <transition name="fade">
                <div v-if="item.sub" id="sub" v-show="item.id==isShow">
                  <a :href="item2.link" v-for="(item2, index2) in item.sub" :key="index2">{{item2.name}}
                  </a>
                </div>
              </transition>
            </li>
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
      topItem: [
        {
          id: 1,
          name: '产品中心',
          link: '/product',
          sub: [
            {
              name: '1号产品中心',
              link: '/prodict/catagory'
            },
            {
              name: '2号产品中心',
              link: '#'
            },
            {
              name: '3号产品中心',
              link: '#'
            }
          ]
        },
        {
          id: 2,
          name: '解决方案',
          link: '#',
          sub: [
            {
              name: '1号解决方案',
              link: '#'
            },
            {
              name: '2号解决方案',
              link: '#'
            },
            {
              name: '3号解决方案',
              link: '#'
            },
            {
              name: '4号解决方案',
              link: '#'
            }
          ]
        },
        {
          id: 3,
          name: '视频中心',
          link: '#'
        }
      ],
      navItem: [
        {
          id: 11,
          name: '首页',
          link: '/'
        },
        {
          id: 12,
          name: '关于我们',
          link: '/about',
          sub: [
            {
              name: '企业介绍',
              link: '#'
            },
            {
              name: '荣誉资质',
              link: '#'
            },
            {
              name: '工厂实景',
              link: '#'
            }
          ]
        },
        {
          id: 13,
          name: '新闻中心',
          link: '/news',
          sub: [
            {
              name: '企业新闻',
              link: '#'
            },
            {
              name: '行业新闻',
              link: '#'
            }
          ]
        },
        {
          id: 14,
          name: '有问必答',
          link: '/question'
        },
        {
          id: 15,
          name: '服务支持',
          link: '#'
        },
        {
          id: 16,
          name: '联系我们',
          link: 'content'
        }
      ],
      telPhone: 18968919292,
      isShow: -1
    }
  },
  methods: {
    showSub (e, index) {
      if (e.currentTarget.children.sub) {
        this.isShow = index
      }
    },
    hiddenSub (e) {
      if (e.currentTarget.children.sub) {
        this.isShow = -1
      }
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

header .top ul li #sub {
  display: block;
  border-radius: 30px;
  overflow: hidden;
  position: absolute;
  min-width: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  text-align: center;
  line-height: 40px;
}

header .top ul li #sub a {
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #fff;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1)
}

header .top ul li #sub a:hover {
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

header nav {
  border-top: 2px solid #f0f3fa
}
header nav ul li {
  float: left;
  width: 16.333%;
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

header nav ul li #sub {
  position: absolute;
  left: 0;
  top: 100%;
  min-width: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  text-align: center;
  line-height: 40px
}

header nav ul li #sub a {
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  color: #fff;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1)
}

header nav ul li #sub a:hover {
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
}
</style>
