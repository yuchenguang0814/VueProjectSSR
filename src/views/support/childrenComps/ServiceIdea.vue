<template>
  <div class="idea">
    <div class="in-tit"><img src="http://www.qizhong114.com/static/home/img/tit_intimate.png">
      <div class="dt"><img src="http://www.qizhong114.com/static/home/img/tit_zs.png">我们的服务理念</div>
      <div class="textc">坚持以客户为中心，为客户提供整体全面的服务，量身打造优质的产品，无论是从售前、售中还是售后，我们一直积极倾听客户需求、精心研发高精钻的产品、真诚提供客户满意的服务。</div>
    </div>
    <ul class="box_idea">
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/pic_ser_fw1.jpg">
          <div class="fd"><img src="http://www.qizhong114.com/static/home/img/icon_s_sq.png">
            <p>提供优质的技术咨询服务，了解客户需求，根据产能、场地等实际情况设计合理、经济的配套方案。</p>
          </div>
        </div>
      </li>
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/pic_ser_fw2.jpg">
          <div class="fd"><img src="http://www.qizhong114.com/static/home/img/icon_s_sz.png">
            <p>提供上门安装服务，专业的技术团队上门安装、调试设备，指导培训作业人员，保证起重机高效运转。</p>
          </div>
        </div>
      </li>
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/pic_ser_fw3.jpg">
          <div class="fd"><img src="http://www.qizhong114.com/static/home/img/icon_s_sh.png">
            <p>提供定期回访服务，帮助用户优化保养设备，对客户反馈的设备问题进行及时分析与解决。</p>
          </div>
        </div>
      </li>
    </ul>
  </div>
</template>

<script>
export default {

}
</script>

<style>
.idea {
  padding: 35px 0
}
.textc {
    font-size: 16px;
    line-height: 28px;
    max-width: 950px;
    margin: 20px auto 0 auto;
    color:#555f7d
}
.box_idea {
    margin: -15px;
    overflow: hidden
}

.box_idea li {
    width: 33.33333333%;
    float: left;
    padding: 15px
}

.box_idea li .box {
    position: relative;
    overflow: hidden
}

.box_idea li .box>img {
    width: 100%;
    height: auto
}

.box_idea li .box:after {
    background: url(~assets/image/bj_ser_tm.png) no-repeat;
    width: 100%;
    height: 160px;
    content: "";
    display: block;
    position: absolute;
    bottom: 0;
    background-size: cover;
    z-index: 3
}

.box_idea li .fd {
    position: absolute;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 5;
    color: #fff;
    font-size: 16px;
    line-height: 30px;
    padding: 0 20px 20px 20px
}

.box_idea li .fd img {
    margin-bottom: 20px;
    height: 60px;
    width: auto;
    transition: all .5s
}

.box_idea li:hover .fd img {
    margin-bottom: 40px
}

@media (max-width: 999px) {
  .idea {
    padding: 20px 0
  }
  .textc {
        font-size: 12px;
        line-height: 20px;
        margin: 5px auto 0 auto
    }
    .box_idea {
        margin: -5px 0
    }

    .box_idea li {
        width: 100%;
        padding: 5px 0
    }

    .box_idea li .box:after {
        height: 100px
    }

    .box_idea li .fd {
        font-size: 12px;
        line-height: 20px;
        padding: 0 15px 15px 15px
    }

    .box_idea li .fd img {
        margin-bottom: 10px;
        height: 40px
    }

    .box_idea li:hover .fd img {
        margin-bottom: 20px
    }
}
</style>
