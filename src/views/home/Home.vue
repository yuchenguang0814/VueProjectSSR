<template>
  <div class="home">
    <home-swiper :banners="banners">
    </home-swiper>
    <home-product :products="products">
    </home-product>
  </div>
</template>

<script>
import HomeSwiper from './childrenComps/HomeSwiper'
import HomeProduct from './childrenComps/HomeProduct'

export default {
  name: 'Home',
  components: {
    HomeSwiper,
    HomeProduct
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
      products: [
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
      ]
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
