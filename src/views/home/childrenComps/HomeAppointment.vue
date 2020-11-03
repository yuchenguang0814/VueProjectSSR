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
    <form action="">
      <ul class="mess">
        <li>
          <select name="scx">
              <option value="选择您的行业范围">选择您的行业范围</option>
              <option value="机械制造">机械制造</option>
              <option value="金属加工">金属加工</option>
              <option value="轨道交通">轨道交通</option>
              <option value="冶金熔炼">冶金熔炼</option>
              <option value="船舶重工">船舶重工</option>
              <option value="汽车或零部件">汽车或零部件</option>
              <option value="基础工程建设">基础工程建设</option>
              <option value="造纸/纸浆">造纸/纸浆</option>
              <option value="其它">其它</option>
          </select>
        </li>
        <li>
          <select name="wuliao">
              <option value="选择起重机机型或重量">选择起重机机型或重量</option>
              <option value="LD型电动单梁起重机">LD型电动单梁起重机（起重量：1t-16t)</option>
              <option value="LH型双梁桥式起重机">LH型双梁桥式起重机（起重量：3t-32t)</option>
              <option value="QD型通用桥式起重机">QD型通用桥式起重机（起重量：5t-250t)</option>
              <option value="MH型单梁门式起重机">MH型单梁门式起重机（起重量：3t-16t)</option>
              <option value="MHS型双梁门式起重机">MHS型双梁门式起重机（起重量：5t-32t)</option>
              <option value="MG型通用门式起重机">MG型型通用门式起重机（起重量：5t-250t)</option>
              <option value="其它">其它</option>
          </select>
        </li>
        <li>
          <input type="text" placeholder="您的姓名" name="title" id="dingzhi_name" autocomplete="off">
        </li>
        <li>
          <input type="text" placeholder="您的电话" name="tel" id="dingzhi_tel" autocomplete="off">
        </li>
        <li>
          <input type="submit" value="申请定制" id="dingzhi_but" @click="onSubmit()">
        </li>
      </ul>
    </form>
  </div>
</div>
</template>

<script>
export default {
  name: 'HomeAppointment',
  methods: {
    onSubmit () {
      alert('提交成功')
    }
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
.order .mess {
  overflow: hidden;
  margin: 60px -10px 0 -10px
}

.order .mess li {
  float: left;
  width: 21%;
  padding: 0 10px
}

.order .mess li select,
.order .mess li input[type='text'] {
  border: 1px solid #7882a0;
  border-radius: 10px;
  padding: 15px 20px;
  font-size: 16px;
  color: #4b556e;
  width: 100%;
  background: #fff
}

.order .mess li select {
  -webkit-appearance: none;
  background: url(~assets/image/icon_jtb_s.png) no-repeat 94%;
  background-size: auto 12px
}

.order .mess li input[type='text'] {
  background: url(~assets/image/icon_xing.png) no-repeat 8px center
}

.order .mess li input[type='submit'] {
  width: 100%;
  font-size: 16px;
  color: #fff;
  border-radius: 10px;
  padding: 16px 0;
  border: 0;
  outline: none;
  float: right;
  cursor: pointer;
  background: #8d224e;
  background: linear-gradient(to right, #8d224e, #1b2057);
  transition: all .5s
}

.order .mess li input[type='submit']:hover {
  background: linear-gradient(to right, #1b2057, #8d224e)
}

.order .mess li:last-child {
  width: 16%
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

    .order .mess {
        margin: 5px 0 -3px 0
    }

    .order .mess li {
        width: 100%;
        padding: 3px 0
    }

    .order .mess li select,
    .order .mess li input[type='text'] {
        padding: 10px;
        font-size: 14px
    }

    .order .mess li select {
        background-position: 96% center;
        background-size: auto 8px
    }

    .order .mess li input[type='text'] {
        background-position: 2px center
    }

    .order .mess li input[type='submit'] {
        font-size: 14px;
        padding: 10px 0
    }

    .order .mess li:last-child {
        width: 100%
    }
}
</style>
