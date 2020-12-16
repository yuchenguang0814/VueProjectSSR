import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import 'swiper/css/swiper.css'
import { GetSeoMultidata } from 'network/seo'

Vue.config.productionTip = false
Vue.prototype.$baseUrl = 'http://localhost:3000'

Vue.filter('dateFormat', function (originVal) {
  const dt = new Date(originVal)
  const y = dt.getFullYear()
  const m = (dt.getMonth() + 1 + '').padStart(2, '0')
  const d = (dt.getDate() + '').padStart(2, '0')
  return `${y}-${m}-${d}`
})
Vue.filter('yearFormat', function (originVal) {
  const dt = new Date(originVal)
  const y = dt.getFullYear()
  return `${y}`
})
Vue.filter('monthFormat', function (originVal) {
  const dt = new Date(originVal)
  const m = (dt.getMonth() + 1 + '').padStart(2, '0')
  const d = (dt.getDate() + '').padStart(2, '0')
  return `${m}-${d}`
})
Vue.filter('hoursFormat', function (originVal) {
  const dt = new Date(originVal)
  const h = (dt.getHours() + '').padStart(2, '0')
  const m = (dt.getMinutes() + '').padStart(2, '0')
  return `${h}:${m}`
})
router.beforeEach((to, from, next) => {
  if (to.meta.title !== '产品分类' || to.meta.title !== '产品分类') {
    // chrome
    document.body.scrollTop = 0
    // firefox
    document.documentElement.scrollTop = 0
    // safari
    window.pageYOffset = 0
  } else if (to.meta.title === '产品分类' && from.meta.title === '首页') {
    // chrome
    document.body.scrollTop = 0
    // firefox
    document.documentElement.scrollTop = 0
    // safari
    window.pageYOffset = 0
  }
  GetSeoMultidata().then(res => {
    const arr = res.data.seo.filter(item => item.pageName === to.meta.title)[0]
    if (arr === undefined) {
      return false
    } else {
      document.title = arr.pageName
      document.querySelector('meta[name="keywords"]').setAttribute('content', arr.pageKey)
      document.querySelector('meta[name="description"]').setAttribute('content', arr.pageDescription)
    }
  })
  next()
})

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
