import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    isPc: true,
    nbanners: [],
    childPath: [],
    routePath: ''
  },
  getters: {
    getNbanner (state) {
      let nb1 = []
      state.nbanners.filter(item => {
        if (item.path === state.routePath) {
          nb1 = item
        }
      })
      nb1.childPath = state.childPath
      return nb1
    }
  },
  mutations: {
    checkIsPc (state) {
      const flag = navigator.userAgent.match(/(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i)
      if (flag) {
        state.isPc = false
      } else {
        state.isPc = true
      }
      return state.isPc
    },
    getnb (state, payload) {
      state.nbanners = payload.data1
      state.childPath = payload.data2
    },
    getPath (state, path) {
      state.routePath = path
    }
  },
  actions: {
  },
  modules: {
  }
})
