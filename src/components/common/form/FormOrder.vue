<template>
<form id="orderForm">
      <ul class="mess">
        <li>
          <select id="mess_type" v-model="orderList.cid">
            <option value="1" disabled selected >请选择您问题的分类</option>
              <option
              v-for="item in cateList"
              :key="item.cid"
              :label="item.pageName"
              :value="item.cid"></option>
          </select>
        </li>
        <li>
          <textarea id="mess_body" placeholder="请输入您的问题 (必填项)" v-model="orderList.content"></textarea>
        </li>
        <li>
          <input type="text" placeholder="您的姓名" v-model="orderList.name" id="dingzhi_name" autocomplete="off">
        </li>
        <li>
          <input type="text" placeholder="您的电话" v-model="orderList.phone"  id="dingzhi_tel" autocomplete="off">
        </li>
        <li>
          <input type="button" value="提交问题" id="dingzhi_but" @click="onSubmit()">
        </li>
      </ul>
    </form>
</template>

<script>
import { addQuestion } from 'network/order'
export default {
  data () {
    return {
      value: '',
      orderList: {
        cid: '1',
        name: '',
        phone: '',
        content: '',
        isQusetion: 1
      }
    }
  },
  computed: {
    cateList () {
      const list = this.$store.state.pageList.filter(item => item.id === 1)
      if (list[0]) {
        return list[0].child
      } else {
        return false
      }
    }
  },
  methods: {
    onSubmit () {
      if (this.orderList.content === '') {
        alert('请输入问题描述')
      } else if (this.orderList.name === '') {
        alert('请输入您的姓名')
      } else if (this.orderList.phone === '') {
        alert('请输入您的电话')
      } else {
        addQuestion(this.orderList).then(res => {
          if (res.code === 200) {
            this.orderList.content = ''
            this.orderList.name = ''
            this.orderList.phone = ''
            alert('提交成功')
          }
        })
      }
    }
  }
}
</script>

<style>
 .mess {
  overflow: hidden;
  margin: 30px -10px 0 -10px
}

 .mess li {
  float: left;
  width: 21%;
  padding: 0 10px
}

 .mess li select,
 .mess li input[type='text'],
 .mess li textarea {
  border: 1px solid #7882a0;
  border-radius: 10px;
  padding: 15px 20px;
  font-size: 16px;
  color: #4b556e;
  width: 100%;
  background: #fff
}
 .mess li textarea {
   height: 50px;
 }
 .mess li select {
  -webkit-appearance: none;
  background: url(~assets/image/icon_jtb_s.png) no-repeat 94%;
  background-size: auto 12px
}

 .mess li input[type='text'] {
  background: url(~assets/image/icon_xing.png) no-repeat 8px center
}

 .mess li input[type='button'] {
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

 .mess li input[type='button']:hover {
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
