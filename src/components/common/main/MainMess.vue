<template>
  <div class="box_mess big">
      <form>
        <div class="box">
          <div class="bt">在线留言</div>
          <div class="text">您好！如果您对我们的产品感兴趣，留下您的需求，我们将及时给您回复！</div>
          <ul class="bq">
            <li>专车接待</li>
            <li>实地考察</li>
            <li>免费设计</li>
            <li>参观案例</li>
          </ul>
          <ul class="form">
            <li>
              <input type="text" id="mess_name" v-model="orderList.name"  placeholder="您的姓名" autocomplete="off">
            </li>
            <li>
              <input type="text" id="mess_tel" v-model="orderList.phone" placeholder="您的电话" autocomplete="off">
            </li>
            <li>
              <textarea id="mess_body" v-model="orderList.content" placeholder="请写下您的需求！如机器类型、重量、使用情况及要求等等！"></textarea>
            </li>
          </ul>
        </div>
        <input type="button" value="提交" id="mess_but" @click="onSubmit()">
      </form>
    </div>
</template>

<script>
import { addQuestion } from 'network/order'
export default {
  data () {
    return {
      orderList: {
        cid: '1',
        name: '',
        phone: '',
        content: '',
        isQusetion: '0'
      }
    }
  },
  methods: {
    onSubmit () {
      console.log(1)
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
.box_mess.big {
    background-image: url(~assets/image/bj_lyb2.jpg);
    padding: 40px 60px 0 35%;
    background-size: 100% 100%;
    height: 600px;
    border-radius: 30px;
    position: relative;
    margin-bottom: 25px
}
.box_mess .box {
    color: #fff
}
.box_mess .box .bt {
    font-size: 26px;
    font-weight: bold
}
.box_mess .box .text {
    font-size: 16px;
    margin: 15px auto 25px
}
.box_mess .box .bq {
    display: -webkit-box;
    display: -moz-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    align-items: center;
    padding-bottom: 30px
}
.box_mess .box .bq li {
    background: #8d224e;
    color: #fff;
    background: -webkit-linear-gradient(left, #8d224e, #1b2057);
    background: -o-linear-gradient(right, #8d224e, #1b2057);
    background: -moz-linear-gradient(right, #8d224e, #1b2057);
    background: linear-gradient(to right, #8d224e, #1b2057);
    border-top-left-radius: 30px;
    border-bottom-left-radius: 30px;
    border-top-right-radius: 30px;
    position: relative;
    box-sizing: border-box;
    padding: 0 20px;
    text-align: center;
    font-size: 20px;
    line-height: 46px;
    margin-left: 5%
}

.box_mess .box .bq li:before {
    width: 30px;
    height: 46px;
    content: "";
    display: block;
    background: rgba(30, 32, 87, 0.4);
    position: absolute;
    top: 0;
    right: -10px;
    border-top-right-radius: 20px
}

.box_mess .box .bq li:after {
    width: 40px;
    height: 46px;
    content: "";
    display: block;
    background: rgba(30, 32, 87, 0.3);
    position: absolute;
    top: 0;
    right: -20px;
    border-top-right-radius: 20px
}

.box_mess .box .bq li:first-child {
    margin-left: 0
}
.box_mess .box .form {
    margin: -10px;
    overflow: hidden
}

.box_mess .box .form li {
    width: 50%;
    padding: 10px;
    float: left
}

.box_mess .box .form li input,
.box_mess .box .form li textarea {
    border: 1px solid #ccc;
    height: 54px;
    padding: 0 0 0 40px;
    font-size: 16px;
    color: #0e183b;
    box-sizing: border-box;
    border-radius: 10px;
    width: 100%
}
.box_mess .box .form li textarea {
    height: 120px;
    background: url(~assets/image/icon_mess_three.png) no-repeat 1.5% 15px #fff;
    background-size: 25px 25px;
    padding: 18px 40px
}

.box_mess .box .form li #mess_name {
    background: url(~assets/image/icon_mess_one.png) no-repeat 3% center #fff;
    background-size: 25px 25px
}

.box_mess .box .form li #mess_tel {
    background: url(~assets/image/icon_mess_two.png) no-repeat 3% center #fff;
    background-size: 25px 25px
}

.box_mess .box .form li:last-child {
    width: 100%
}

.box_mess input[type='button'] {
    text-align: center;
    background: #ba2f81;
    background: -webkit-linear-gradient(left, #ba2f81, #2748de);
    background: -o-linear-gradient(left, #ba2f81, #2748de);
    background: -moz-linear-gradient(left, #ba2f81, #2748de);
    background: linear-gradient(to left, #ba2f81, #2748de);
    color: #fff;
    border-radius: 100px;
    padding-left: 0;
    border: 8px solid #27427b;
    position: absolute;
    bottom: -25px;
    height: 80px;
    width: 55%;
    left: 20%;
    font-size: 26px;
    cursor: pointer
}

.box_mess input[type='button']:after {
    background: url(~assets/image/icon_sub_jt.png) no-repeat;
    width: 46px;
    height: 46px;
    background-size: 100% 100%;
    position: absolute;
    right: 15px;
    top: 50%;
    transform: translateY(-50%);
    display: block;
    content: ""
}
@media (max-width: 999px) {
    .box_mess.big {
        background-image: url(~assets/image/bj_ly_bg.jpg);
        height: auto;
        border-radius: 30px;
        padding: 35px 15px 40px 15px;
        position: relative;
        margin-bottom: 25px
    }

    .box_mess .box .bt {
        font-size: 20px
    }

    .box_mess .box .text {
        font-size: 12px;
        line-height: 20px;
        margin: 5px 20% 0 0
    }

    .box_mess .box .bq {
        flex-wrap: wrap;
        padding: 16% 0 20px 0
    }

    .box_mess .box .bq li {
        padding: 0 15px 0 10px;
        font-size: 12px;
        line-height: 36px;
        margin-left: 10px;
        width: auto;
        margin-top: 10px
    }
    .box_mess .box .bq li:first-child {
    margin-left: 10px
}

    .box_mess .box .bq li:before {
        width: 20px;
        height: 100%;
        right: -5px
    }

    .box_mess .box .bq li:after {
        width: 30px;
        height: 100%;
        right: -10px
    }

    .box_mess .box .form {
        margin: -5px
    }

    .box_mess .box .form li {
        padding: 5px
    }

    .box_mess .box .form li input,
    .box_mess .box .form li textarea {
        height: 44px;
        padding: 0 0 0 30px;
        font-size: 14px
    }

    .box_mess .box .form li textarea {
        height: 80px;
        background-size: 20px 20px;
        padding: 15px 30px
    }

    .box_mess .box .form li #mess_name {
        background-size: 20px 20px
    }

    .box_mess .box .form li #mess_tel {
        background-size: 20px 20px
    }

    .box_mess input[type='button'] {
        border-width: 4px;
        bottom: -20px;
        height: 50px;
        width: 50%;
        left: 25%;
        font-size: 18px
    }

    .box_mess input[type='button']:after {
        width: 26px;
        height: 26px;
        right: 10px
    }
}
</style>
