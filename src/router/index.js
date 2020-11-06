import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/home/Home.vue'
import NotFound from 'components/common/NotFound.vue'

Vue.use(VueRouter)
const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
    meta: { title: '首页' }
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ 'views/about/About.vue'),
    meta: { title: '关于我们' },
    children: [{
      path: 'factory',
      component: () => import('views/about/child/Factory.vue'),
      name: 'Factory',
      meta: { title: '工厂实景' }
    }, {
      path: 'honor',
      component: () => import('views/about/child/Honor.vue'),
      name: 'Honor',
      meta: { title: '荣誉资质' }
    }]
  },
  {
    path: '/news',
    name: 'News',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/new/News.vue'),
    meta: { title: '新闻中心' },
    children: [{
      path: 'companyNews',
      component: () => import('../views/new/child/CompanyNews.vue'),
      name: 'CompanyNews',
      meta: { title: '公司新闻' }
    }, {
      path: 'industryNews',
      component: () => import('../views/new/child/IndustryNews.vue'),
      name: 'IndustryNews',
      meta: { title: '行业新闻' }
    }, {
      path: 'literatureNews',
      component: () => import('../views/new/child/LiteratureNews.vue'),
      name: 'LiteratureNews',
      meta: { title: '技术文献' }
    }]
  },
  {
    path: '/question',
    name: 'Question',
    component: () => import('../views/question/Question.vue'),
    meta: { title: '有问必答' }
  },
  {
    path: '/service',
    name: 'Service',
    component: () => import('../views/service/Service.vue'),
    meta: { title: '服务支持' }
  },
  {
    path: '/contact',
    name: 'Contact',
    component: () => import('../views/contact/Contact.vue'),
    meta: { title: '联系我们' }
  },
  {
    path: '*',
    component: NotFound,
    meta: { title: '找不到页面' }
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
