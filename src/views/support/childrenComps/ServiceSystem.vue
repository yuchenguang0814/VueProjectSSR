<template>
  <div class="system">
  <div class="container">
    <div class="in-tit"><img src="http://www.qizhong114.com/static/home/img/tit_accessories.png">
      <div class="dt"><img src="http://www.qizhong114.com/static/home/img/tit_zs.png">完善的配件供应系统，强大的配件仓库</div>
      <div class="text">我们为您提供公司所生产的起重机设备所有配件，型号齐全，性能可靠，稳定耐用。确保第一时间满足客户的配件更换需求，减少客户停机维修时间。</div>
    </div>
    <ul class="box_system">
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/pic_pj1.jpg"></div>
      </li>
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/pic_pj2.jpg"></div>
      </li>
      <li>
        <div class="box"><img src="http://www.qizhong114.com/static/home/img/pic_pj3.jpg"></div>
      </li>
    </ul>
  </div>
</div>
</template>

<script>
export default {

}
</script>

<style>
.system {
  padding: 35px 0;
}
.box_system {
    margin: -10px;
    overflow: hidden
}

.box_system li {
    width: 33.33333333%;
    float: left;
    padding: 10px
}

.box_system li .box {
    overflow: hidden;
    border-radius: 15px
}

.box_system li .box img {
    width: 100%;
    height: auto;
    transition: all .5s
}

.box_system li .box img:hover {
    transform: scale(1.1)
}
@media (max-width: 999px) {
  .system {
    padding: 20px 0;
  }
  .box_system {
        margin: -5px 0
    }

  .box_system li {
      padding: 5px 0;
      width: 100%
  }
}
</style>
