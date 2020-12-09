import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import 'swiper/css/swiper.css'
import { GetSeoMultidata } from 'network/seo'

Vue.config.productionTip = false
Vue.prototype.$baseUrl = 'http://localhost:3000'
router.beforeEach((to, from, next) => {
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
