<template>
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
</template>

<script>
export default {
}
</script>

<style>
 .mess {
  overflow: hidden;
  margin: 60px -10px 0 -10px
}

 .mess li {
  float: left;
  width: 21%;
  padding: 0 10px
}

 .mess li select,
 .mess li input[type='text'] {
  border: 1px solid #7882a0;
  border-radius: 10px;
  padding: 15px 20px;
  font-size: 16px;
  color: #4b556e;
  width: 100%;
  background: #fff
}

 .mess li select {
  -webkit-appearance: none;
  background: url(~assets/image/icon_jtb_s.png) no-repeat 94%;
  background-size: auto 12px
}

 .mess li input[type='text'] {
  background: url(~assets/image/icon_xing.png) no-repeat 8px center
}

 .mess li input[type='submit'] {
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

 .mess li input[type='submit']:hover {
  background: linear-gradient(to right, #1b2057, #8d224e)
}

 .mess li:last-child {
  width: 16%
}
@media (max-width: 999px) {
   .mess {
      margin: 5px 0 -3px 0
  }
   .mess li {
      width: 100%;
      padding: 3px 0
  }
   .mess li select,
   .mess li input[type='text'] {
      padding: 10px;
      font-size: 14px
  }
   .mess li select {
      background-position: 96% center;
      background-size: auto 8px
  }
   .mess li input[type='text'] {
      background-position: 2px center
  }
   .mess li input[type='submit'] {
      font-size: 14px;
      padding: 10px 0
  }
   .mess li:last-child {
      width: 100%
  }
}
</style>
