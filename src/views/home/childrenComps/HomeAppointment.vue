<template>
<div class="order">
  <div class="bj">
    <div class="box">
      <div class="text">
        <div class="dt"><span>物料搬运设备&amp;</span>深度剖析</div>
        <p>1t-250t起重设备任您选，覆盖多样化！</p>
        <p>携新型环保欧式工艺，助您一臂之力</p>
      </div>
      <ul>
        <li><a href="http://www.qizhong114.com/wljg/275.html"><img src="http://www.qizhong114.com/uploads/images/20200714/bf9ccd4e97240ce359a93bd2ee4c0b51.jpg"><span>金属加工起重机应用</span></a></li>
        <li><a href="http://www.qizhong114.com/wljg/274.html"><img src="http://www.qizhong114.com/uploads/images/20200715/f726e4e844fea5c39b151e06c89925c5.jpg"><span>能源行业起重机应用</span></a></li>
        <li><a href="http://www.qizhong114.com/wljg/273.html"><img src="http://www.qizhong114.com/uploads/images/20200715/1aba411c8c92487e510d8fee9cda11a3.jpg"><span>造船船舶起重机应用</span></a></li>
        <li><a href="http://www.qizhong114.com/wljg/272.html"><img src="http://www.qizhong114.com/uploads/images/20200710/9f4f01731fc0e24562137565d917c05b.jpg"><span>轨道交通起重机应用</span></a></li>
        <li><a href="http://www.qizhong114.com/wljg/209.html"><img src="http://www.qizhong114.com/uploads/images/20200704/deecc788579450c7a540a5780dc15c42.jpg"><span>物流仓储行业起重机应用</span></a></li>
      </ul>
    </div>
    <form-order/>
  </div>
</div>
</template>

<script>
import FormOrder from 'components/common/form/FormOrder'
export default {
  name: 'HomeAppointment',
  components: {
    FormOrder
  }
}
</script>
<style>
.order {
  background-image: url(~assets/image/bj_wljg.jpg);
  background-size: 100% 100%;
  padding: 20px;
}
.order .bj {
  background: #fff;
  border-radius: 15px;
  padding: 75px 95px
}
.order .box {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-right: 30px
}
.order .box .text {
  font-size: 22px;
  color: #4b556e;
  line-height: 40px;
  width: 450px
}
.order .box .text .dt {
  margin-bottom: 20px;
  font-size: 38px;
  color: #05163f;
  font-weight: bold
}
.order .box .text .dt span {
  color: #e61e37
}
.order .box ul {
  flex: 1;
  width: 0;
  margin: 0 -10px
}

.order .box ul li {
  float: left;
  width: 20%;
  padding: 0 10px
}

.order .box ul li a {
  display: block;
  overflow: hidden;
  font-size: 18px;
  color: #fff;
  position: relative
}

.order .box ul li a img {
  width: 100%;
  height: auto
}
.order .box ul li a span {
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  text-align: center;
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  padding: 10px 0;
  background: transparent;
  background: linear-gradient(to top, transparent, rgba(0, 0, 0, 0.8))
}
@media (max-width:999px) {
  .order {
        padding: 10px
    }

    .order .bj {
        padding: 10px
    }

    .order .box {
        display: block;
        overflow: hidden;
        margin-right: 0;
        text-align: center
    }

    .order .box .text {
        font-size: 12px;
        line-height: 20px;
        width: 100%;
        padding: 0 0 10px 0
    }

    .order .box .text .dt {
        margin-bottom: 10px;
        font-size: 20px;
        padding: 10px 0 0 0
    }

    .order .box ul {
        width: auto;
        margin: -5px
    }

    .order .box ul li {
        width: 33.33333333%;
        padding: 5px
    }

    .order .box ul li a {
        font-size: 12px
    }

    .order .box ul li:first-child {
        margin-left: 16.66666667%
    }
}
</style>
