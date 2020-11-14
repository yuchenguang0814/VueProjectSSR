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
    getPageNbanner (state) {
      let nb2 = []
      if (state.pageList.length > 0) {
        state.pageList.forEach(item => {
          if (item.pagePath === state.routePath) {
            nb2 = item
          }
        })
        if (nb2.length === 0 || nb2 === undefined) {
          state.pageList.forEach(item => {
            item.child.forEach(item2 => {
              if (item2.pagePath === state.routePath) {
                nb2 = item2
                nb2.child = item.child
              }
            })
          })
        }
        return nb2
      }
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
