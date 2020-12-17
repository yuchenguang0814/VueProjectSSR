<template>
  <div class="solution">
    <slot name="nb" :props="nbanner" ></slot>
    <slot name="crumb"></slot>
    <div v-if="this.$route.path == '/solution'" class="main_index">
  <div class="container">
    <div class="btit"> <img src="~assets/image/icon_wl_jg.png">
      <div class="box">
        <div class="bt"><span>客户案例</span><em>免费设计方案</em></div>
        <div class="text">我们积累了丰富的实战经验，精于起重机设备的研发与制造，并为您提供合理的解决方案</div>
      </div>
      <router-link to="/solution/customer" class="more">更多客户案例<img src="~assets/image/icon_jtr_s.png"></router-link> </div>
      <div class="topMain"><mains class="list" :List="industryList"></mains></div>
    <div class="btit"> <img src="~assets/image/icon_wl_jg.png">
      <div class="box">
        <div class="bt"><span>行业应用</span><em>覆盖350业务领域</em></div>
        <div class="text">{{this.$store.state.userList.companyName}}的起重机产品品种齐全，历经 30 年发展，公司产品遍布机械、冶金、电力、轻工、重工、化工、造纸、陶瓷、建材、钢铁加工、铁路水利、港口、物流、电子、汽车、造船、军工等行业。未来，将走进新能源、新材料、新动力汽车、轨道交通、海洋装备、环保、机器人、航空航天等新兴领域，为更多客户提供优质的起重机械产品。</div>
      </div>
      <router-link to="/solution/industry" class="more">更多行业应用<img src="~assets/image/icon_jtr_s.png"></router-link> </div>
      <mains class="list" :List="industryList"><img slot="dt1" src="~assets/image/icon_more.png"></mains>
  </div>
</div>
    <router-view v-else></router-view>
  </div>
</template>

<script>
import Mains from 'components/common/main/Main'
export default {
  components: {
    Mains
  },
  data () {
    return {
      nbanner: {},
      industryList: [{
        id: 1,
        image: '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg',
        name: '测试客户案例'
      }, {
        id: 2,
        image: '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg',
        name: '测试客户案例2'
      }, {
        id: 3,
        image: '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg',
        name: '测试客户案例4'
      }, {
        id: 4,
        image: '/uploads/goodspics/4cd7cad7f1c8d459a1e282785bac489f[1]_2020_11_3_15_27.jpg',
        name: '测试客户案例4'
      }]
    }
  },
  created () {
    this.changeNbanner()
  },
  methods: {
    changeNbanner () {
      this.$store.commit('getPath', this.$route.path)
      this.nbanner = this.$store.getters.getPageNbanner
    }
  },
  beforeRouteEnter (to, from, next) {
    next(vm => {
      vm.changeNbanner()
    })
  },
  beforeRouteUpdate (to, from, next) {
    if (to.fullPath !== from.fullPath) {
      next()
      this.changeNbanner()
    }
  }
}
</script>
<style>
.solution .btit {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  -webkit-justify-content: space-between;
  justify-content: space-between;
  margin: 40px 0 30px 0
}

.solution .btit>img {
  height: 100px;
  width: auto
}

.solution .btit .box {
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  width: 0;
  padding: 0 20px 0 40px
}

.solution .btit .box .bt {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  line-height: 1
}

.solution .btit .box .bt span {
  font-size: 38px;
  font-weight: bold;
  color: #05163f
}

.solution .btit .box .bt em {
  display: block;
  font-size: 16px;
  background: #8d224e;
  background: -webkit-linear-gradient(left, #8d224e, #1b2057);
  background: -o-linear-gradient(right, #8d224e, #1b2057);
  background: -moz-linear-gradient(right, #8d224e, #1b2057);
  background: linear-gradient(to right, #8d224e, #1b2057);
  color: #fff;
  text-align: center;
  padding: 0 15px;
  line-height: 30px;
  border-radius: 5px;
  margin-left: 15px;
  position: relative
}

.solution .btit .box .bt em:before {
  width: 0;
  height: 0;
  border-right: 10px solid #8d224e;
  border-top: 7px solid transparent;
  border-bottom: 7px solid transparent;
  position: absolute;
  content: "";
  display: block;
  left: -10px;
  top: 50%;
  transform: translateY(-50%)
}

.solution .btit .box .text {
  font-size: 16px;
  color: #4b556e;
  margin-top: 15px
}

.solution .btit .more {
  display: block;
  overflow: hidden;
  padding: 0 30px;
  line-height: 42px;
  font-size: 16px;
  color: #4b556e;
  border: 1px solid #4b556e;
  border-radius: 30px
}

.solution .btit .more img {
  height: 16px;
  width: auto;
  margin-left: 10px;
  vertical-align: middle;
  margin-top: -3px
}

.solution .btit .more:hover {
  background: #fbebed
}

.solution .btit:first-of-type {
  margin-top: 0
}
.solution .list_case li {
  width: 25%;
}
.solution .topMain .list_case li {
  width: 33.333%;
}
.solution .nbanner .box {
  max-width: inherit;
}
.nbanner form .mess li select {
  background-color: #fff;
}
.nbanner form .mess li input[type='text']  {
  background-color: #fff;
}
@media (max-width: 999px) {
  .solution {
    padding: 20px 0
  }

  .solution .btit {
    margin: 20px 0 15px 0
  }

  .solution .btit>img {
    height: 40px
  }

  .solution .btit .box {
    padding: 0 5px
  }

  .solution .btit .box .bt {
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    align-items: center;
    line-height: normal
  }

  .solution .btit .box .bt span {
    font-size: 20px
  }

  .solution .btit .box .bt em {
    font-size: 12px;
    padding: 0 5px;
    line-height: 24px;
    margin-left: 10px
  }

  .solution .btit .box .bt em:before {
    border-right-width: 6px;
    border-top-width: 4px;
    border-bottom-width: 4px;
    left: -6px
  }

  .solution .btit .box .text {
    display: none
  }

  .solution .btit .more {
    padding: 0 8px;
    line-height: 26px;
    font-size: 12px
  }

  .solution .btit .more img {
    height: 10px;
    margin-left: 3px;
    margin-top: -2px
  }
  .solution .list_case li, .solution .topMain .list_case li {
  width: 50%;
}
  .solution .nbanner form {
    display: none;
  }
}
</style>
