import Vue from 'vue'
import Vuex from 'vuex'
import { GetPageMultidata } from 'network/page.js'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    isPc: true,
    nbanners: [],
    childPath: [],
    routePath: '',
    pageList: []
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
    },
    setPageList (state, res) {
      res.page.forEach(item => {
        item.child = res.category.filter(item1 => item.id === item1.pageId)
      })
      state.pageList = res.page
    }
  },
  actions: {
    getPageDate (context) {
      GetPageMultidata().then(res => {
        context.commit('setPageList', res.data)
      })
    }
  },
  modules: {
  }
})
