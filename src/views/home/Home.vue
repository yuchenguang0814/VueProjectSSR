<template>
  <div class="home">
    <home-swiper :banners="banners">
    </home-swiper>
    <home-product :products="products">
    </home-product>
    <home-case :banners="caseBanners"></home-case>
  </div>
</template>

<script>
import HomeSwiper from './childrenComps/HomeSwiper'
import HomeProduct from './childrenComps/HomeProduct'
import HomeCase from './childrenComps/HomeCase'

export default {
  name: 'Home',
  components: {
    HomeSwiper,
    HomeProduct,
    HomeCase
  },
  data () {
    return {
      banners: [
        {
          index: 1,
          link: '#',
          image: 'http://www.qizhong114.com/uploads/images/20200608/e04854781d4f6794f54abfcff77e8e8f.jpg'
        },
        {
          index: 2,
          link: '#',
          image: 'http://www.qizhong114.com/uploads/images/20200714/7c56292edf9dbeb802a34af3ddabc09d.jpg'
        },
        {
          index: 3,
          link: '#',
          image: 'http://www.qizhong114.com/uploads/images/20200608/e04854781d4f6794f54abfcff77e8e8f.jpg'
        },
        {
          index: 4,
          link: '#',
          image: 'http://www.qizhong114.com/uploads/images/20200714/7c56292edf9dbeb802a34af3ddabc09d.jpg'
        }
      ],
      caseBanners: [
        {
          index: 1,
          link: '#',
          image: 'http://www.qizhong114.com/uploads/images/20200608/e04854781d4f6794f54abfcff77e8e8f.jpg'
        },
        {
          index: 2,
          link: '#',
          image: 'http://www.qizhong114.com/uploads/images/20200714/7c56292edf9dbeb802a34af3ddabc09d.jpg'
        },
        {
          index: 3,
          link: '#',
          image: 'http://www.qizhong114.com/uploads/images/20200608/e04854781d4f6794f54abfcff77e8e8f.jpg'
        },
        {
          index: 4,
          link: '#',
          image: 'http://www.qizhong114.com/uploads/images/20200714/7c56292edf9dbeb802a34af3ddabc09d.jpg'
        },
        {
          index: 5,
          link: '#',
          image: 'http://www.qizhong114.com/uploads/images/20200714/7c56292edf9dbeb802a34af3ddabc09d.jpg'
        },
        {
          index: 6,
          link: '#',
          image: 'http://www.qizhong114.com/uploads/images/20200714/7c56292edf9dbeb802a34af3ddabc09d.jpg'
        }
      ],
      products: {
        category:
        [
          {
            id: 1,
            name: '产品分类1',
            link: '#',
            description: '这是产品分类1',
            imagePro: 'http://www.qizhong114.com/uploads/images/20200608/3a1de072d4d508acfbab7c88355a34df.png'
            // imageNum: '/assets/image/icon_num_1.png'
          },
          {
            id: 2,
            name: '产品分类2',
            link: '#',
            description: '这是产品分类2',
            imagePro: 'http://www.qizhong114.com/uploads/images/20200608/3a1de072d4d508acfbab7c88355a34df.png'
            // imageNum: '../assets/image/icon_num_2.png'
          },
          {
            id: 3,
            name: '产品分类3',
            link: '#',
            description: '这是产品分类3',
            imagePro: 'http://www.qizhong114.com/uploads/images/20200608/3a1de072d4d508acfbab7c88355a34df.png'
            // imageNum: '/assets/image/icon_num_3.png'
          },
          {
            id: 4,
            name: '产品分类4',
            link: '#',
            description: '这是产品分类4',
            imagePro: 'http://www.qizhong114.com/uploads/images/20200608/3a1de072d4d508acfbab7c88355a34df.png'
            // imageNum: '/assets/image/icon_num4.png'
          },
          {
            id: 5,
            name: '产品分类5',
            link: '#',
            description: '这是产品分类5',
            imagePro: 'http://www.qizhong114.com/uploads/images/20200608/3a1de072d4d508acfbab7c88355a34df.png'
            // imageNum: '~assets/image/icon_num_5.png'
          }
        ],
        product:
        [
          {
            id: 1,
            name: '这是产品1',
            link: '#',
            parameter1: '这是参数1',
            parameter2: '这是参数2',
            image: 'http://www.qizhong114.com/uploads/images/20200514/4cd7cad7f1c8d459a1e282785bac489f.jpg'
          },
          {
            id: 2,
            name: '这是产品2',
            link: '#',
            parameter1: '这是参数1',
            parameter2: '这是参数2',
            image: 'http://www.qizhong114.com/uploads/images/20200514/4cd7cad7f1c8d459a1e282785bac489f.jpg'
          },
          {
            id: 3,
            name: '这是产品3',
            link: '#',
            parameter1: '这是参数1',
            parameter2: '这是参数2',
            image: 'http://www.qizhong114.com/uploads/images/20200514/4cd7cad7f1c8d459a1e282785bac489f.jpg'
          },
          {
            id: 4,
            name: '这是产品4',
            link: '#',
            parameter1: '这是参数1',
            parameter2: '这是参数2',
            image: 'http://www.qizhong114.com/uploads/images/20200514/4cd7cad7f1c8d459a1e282785bac489f.jpg'
          },
          {
            id: 5,
            name: '这是产品1',
            link: '#',
            parameter1: '这是参数1',
            parameter2: '这是参数2',
            image: 'http://www.qizhong114.com/uploads/images/20200514/4cd7cad7f1c8d459a1e282785bac489f.jpg'
          },
          {
            id: 6,
            name: '这是产品2',
            link: '#',
            parameter1: '这是参数1',
            parameter2: '这是参数2',
            image: 'http://www.qizhong114.com/uploads/images/20200514/4cd7cad7f1c8d459a1e282785bac489f.jpg'
          },
          {
            id: 7,
            name: '这是产品3',
            link: '#',
            parameter1: '这是参数1',
            parameter2: '这是参数2',
            image: 'http://www.qizhong114.com/uploads/images/20200514/4cd7cad7f1c8d459a1e282785bac489f.jpg'
          },
          {
            id: 8,
            name: '这是产品4',
            link: '#',
            parameter1: '这是参数1',
            parameter2: '这是参数2',
            image: 'http://www.qizhong114.com/uploads/images/20200514/4cd7cad7f1c8d459a1e282785bac489f.jpg'
          }
        ]
      }
    }
  },
  created () {
    // GetHomeMultidata().then(res => {
    //   this.banners = res.data.banner
    //   this.recommand = res.data.recommand
    //   console.log(res.data)
    // })
  }
}
</script>

<style scoped>
  .home {
    width: 100%;
  }
</style>
