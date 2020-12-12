<template>
<div class='map'>
  <div class='container'>
    <div class='in-tit'><img src='~assets/image/tit_address.png'>
      <div class='dt'><img src='~assets/image/tit_zs.png'>我们的位置</div>
      <div class='text'>顺发起重真诚的欢迎您通过热线电话、在线咨询等即时通讯方式与我们联系，无论是项目咨询还是意见反馈，我们都会以较快的方式服务于您</div>
    </div>
    <div class='box'>
      <div class='dt'>起重机维修_天车维护_行车保养_行吊配件_龙门吊维修-广东顺发起重设备有限公司</div>
      <div class='text'>简介：顺发起重是一家以生产起重机设备为主，集设计、生产制造、销售、服务为一体的起重机A级企业。公司位于广东省佛山市。</div>
      <div class='tel'>服务热线：<em>86-{{this.$store.state.userList.userPhone}}</em></div>
      <a :href="`http://wpa.qq.com/msgrd?uin=${this.$store.state.userList.userQQ}`" target='_blank' class='but'>在线咨询
      <img src='~assets/image/icon_shou.png'>
      </a>
      </div>
    <baidu-map class='bdMap' ak='AFESzB0jhTmdwl2RLH9AMGR5faVqhlIT' :mapStyle='mapStyle'
    :scroll-wheel-zoom='true'
    :center='location'
    :zoom='zoom'>
    <!-- <map-view class='view'></map-view> -->
    <bm-scale anchor='BMAP_ANCHOR_BOTTOM_LEFT'></bm-scale>
    <bm-navigation anchor='BMAP_ANCHOR_TOP_LEFT'></bm-navigation>
    <bm-marker :position='location' :dragging='true' animation='BMAP_ANIMATION_BOUNCE'>
      <!-- <bm-label class='lable' content='我爱北京天安门' :labelStyle='labelStyle' :offset='{width: -35, height: 30}'/> -->
    </bm-marker>
    </baidu-map>
    </div>
</div>
</template>

<script>
import BaiduMap from 'vue-baidu-map/components/map/Map.vue'
// import MapView from 'vue-baidu-map/components/map/MapView'
import BmNavigation from 'vue-baidu-map/components/controls/Navigation'
import BmScale from 'vue-baidu-map/components/controls/Scale'
import BmMarker from 'vue-baidu-map/components/overlays/Marker'
// import BmLabel from 'vue-baidu-map/components/overlays/Label'
export default {
  components: {
    BaiduMap,
    // MapView,
    BmNavigation,
    BmScale,
    BmMarker
    // BmLabel
  },
  data () {
    return {
      mapStyle: {
        styleJson: [
          {
            featureType: 'land',
            elementType: 'geometry',
            stylers: {
              color: '#212121'
            }
          },
          {
            featureType: 'building',
            elementType: 'geometry',
            stylers: {
              color: '#2b2b2b'
            }
          },
          {
            featureType: 'highway',
            elementType: 'all',
            stylers: {
              lightness: -42,
              saturation: -91
            }
          },
          {
            featureType: 'arterial',
            elementType: 'geometry',
            stylers: {
              lightness: -77,
              saturation: -94
            }
          },
          {
            featureType: 'green',
            elementType: 'geometry',
            stylers: {
              color: '#1b1b1b'
            }
          },
          {
            featureType: 'water',
            elementType: 'geometry',
            stylers: {
              color: '#181818'
            }
          },
          {
            featureType: 'subway',
            elementType: 'geometry.stroke',
            stylers: {
              color: '#181818'
            }
          },
          {
            featureType: 'railway',
            elementType: 'geometry',
            stylers: {
              lightness: -52
            }
          },
          {
            featureType: 'all',
            elementType: 'labels.text.stroke',
            stylers: {
              color: '#313131'
            }
          },
          {
            featureType: 'all',
            elementType: 'labels.text.fill',
            stylers: {
              color: '#8b8787'
            }
          },
          {
            featureType: 'manmade',
            elementType: 'geometry',
            stylers: {
              color: '#1b1b1b'
            }
          },
          {
            featureType: 'local',
            elementType: 'geometry',
            stylers: {
              lightness: -75,
              saturation: -91
            }
          },
          {
            featureType: 'subway',
            elementType: 'geometry',
            stylers: {
              lightness: -65
            }
          },
          {
            featureType: 'railway',
            elementType: 'all',
            stylers: {
              lightness: -40
            }
          },
          {
            featureType: 'boundary',
            elementType: 'geometry',
            stylers: {
              color: '#8b8787',
              weight: '1',
              lightness: -29
            }
          }
        ]
      },
      location: {
        lng: 120.693741,
        lat: 27.779269
      },
      zoom: 12.8,
      labelStyle: {
        color: 'red',
        fontSize: '22px'
      }
    }
  },
  methods: {
  }
}
</script>

<style>

.map .box {
    position: absolute;
    width: 325px;
    left: 55px;
    top:130px;
    z-index: 1000;
    background: #1f3171;
    color: #fff;
    padding: 40px
}
.map .container {
  position: relative;
  margin-top: 50px;
}
.map .box .dt {
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 30px
}
.map .box .text {
    line-height: 24px;
    padding-bottom: 40px
}
.map .box .tel {
    padding-top: 35px;
    border-top: 1px solid #5573d7;
    font-size: 16px
}

.map .box .tel em {
    font-size: 20px
}

.map .box .but {
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    align-items: center;
    -webkit-justify-content: center;
    justify-content: center;
    margin-top: 10px;
    color: #fff;
    background: #ba2f81;
    border-radius: 5px;
    box-shadow: 1px 5px 15px #14204a;
    cursor: pointer;
    background: -webkit-linear-gradient(left, #ba2f81, #2748de);
    background: -o-linear-gradient(left, #ba2f81, #2748de);
    background: -moz-linear-gradient(left, #ba2f81, #2748de);
    background: linear-gradient(to left, #ba2f81, #2748de);
    width: 100%;
    padding: 10px 0;
    text-align: center;
    font-size: 20px
}

.map .box .but img {
    height: 28px;
    width: auto;
    margin-left: 10px
}
.bdMap {
  height:560px;
}
.view {
  width: 100%;
  height: 100%;
  flex: 1;
}
@media (max-width: 999px) {
  .bdMap {
    height: 250px;
  }
  .map .container {
    margin-top: 0;
    padding: 0
  }

  .map .box {
    position: static;
    width: 100%;
    padding: 20px 10px;
    text-align: center
  }

  .map .box .dt {
    font-size: 18px;
    margin-bottom: 10px
  }

  .map .box .text {
    line-height: 20px;
    font-size: 12px;
    padding-bottom: 15px
  }

  .map .box .tel {
    padding-top: 15px
  }

  .map .box .but {
    font-size: 18px;
    width: 50%;
    margin: 15px auto 0 auto
  }

  .map .box .but img {
    height: 20px;
    margin-left: 5px
  }
}
</style>
