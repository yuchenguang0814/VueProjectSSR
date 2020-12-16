import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/home/Home.vue'
import Products from '../views/product/Products.vue'
import Vid from '../views/vid/Vid.vue'
import Solution from '../views/solution/Solution.vue'
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
    path: '/home',
    name: 'Home',
    component: Home,
    meta: { title: '首页' }
  },
  {
    path: '/products',
    name: 'Products',
    component: Products,
    meta: { title: '产品中心' },
    children: [{
      path: '/category/:id',
      component: () => import('views/product/child/Category.vue'),
      name: 'Category',
      meta: { title: '产品分类' }
    }, {
      path: '/product/:id',
      component: () => import('../views/product/child/Product.vue'),
      name: 'Product',
      meta: { title: '商品详情' }
    }]
  },
  {
    path: '/solution',
    name: 'Solution',
    component: Solution,
    meta: { title: '解决方案' },
    children: [{
      path: 'customer',
      component: () => import('views/solution/child/Customer'),
      name: 'Customer',
      meta: { title: '客户案例' }
    }, {
      path: 'industry',
      component: () => import('../views/solution/child/Industry.vue'),
      name: 'Industry',
      meta: { title: '行业应用' }
    }]
  },
  {
    path: '/video',
    name: 'Video',
    component: Vid,
    meta: { title: '视频中心' },
    children: [{
      path: '/video/:id',
      name: 'vid',
      component: () => import('../views/vid/child/Vid'),
      meta: { title: '视频详情' }
    }]
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
      meta: { title: '荣誉中心' }
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
      meta: { title: '企业新闻' }
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
    }, {
      path: '/news/:id',
      component: () => import('../views/new/child/New.vue'),
      name: 'New',
      meta: { title: '新闻详情' }
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
    component: () => import('../views/support/Support.vue'),
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
