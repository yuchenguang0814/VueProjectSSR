<template>
  <div class="main_pages">
    <!-- 还未完善 -->
      <!-- <ul class="pagination">
        <li class="disabled"><span>«</span></li>
        <li class="active"><span>1</span></li>
        <li><a href="?page=2">2</a></li>
        <li><a href="?page=3">3</a></li>
        <li><a href="?page=4">4</a></li>
        <li><a href="?page=2">»</a></li>
        </ul> -->
  </div>
</template>

<script>
export default {
  name: '',
  components: {
  },
  data () {
    return {
    }
  }
}

</script>

<style>
.main_pages {
  display: -webkit-box;
  display: -moz-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-align-items: center;
  align-items: center;
  -webkit-justify-content: center;
  justify-content: center
}

.main_pages .pagination {
  -moz-box-shadow: 2px 0 35px rgba(21, 53, 129, 0.2) inset;
  -webkit-box-shadow: 2px 0 35px rgba(21, 53, 129, 0.2) inset;
  box-shadow: 2px 0 35px rgba(21, 53, 129, 0.2) inset;
  background: #fff;
  border-radius: 50px;
  padding: 0 10px;
  margin: 60px 0 0 0
}

.main_pages .pagination li {
  float: left;
  font-size: 16px;
  color: #051741;
  width: 50px;
  text-align: center;
  position: relative;
  cursor: pointer
}

.main_pages .pagination li a {
  display: block;
  padding: 20px 0
}

.main_pages .pagination li.active:before {
  content: "";
  display: block;
  position: absolute;
  top: -10px;
  background-image: url(~assets/image/icon_pages_bg.png);
  background-repeat: no-repeat;
  width: 50px;
  height: 68px;
  background-size: cover
}

.main_pages .pagination li.active span {
  color: #fff;
  position: relative;
  z-index: 2;
  margin-top: 10px;
  display: block
}

.main_pages .pagination li.disabled {
  margin-top: 20px
}
@media (max-width: 999px) {
  .main_pages .pagination {
    padding: 0 10px;
    margin: 25px 0 0 0
  }

  .main_pages .pagination li {
    font-size: 14px;
    width: 26px
  }

  .main_pages .pagination li a {
    padding: 10px 0
  }

  .main_pages .pagination li.active:before {
    top: -6px;
    left: -2px;
    width: 30px;
    height: 42px
  }

  .main_pages .pagination li.active span {
    margin-top: 5px
  }

  .main_pages .pagination li.disabled {
    margin-top: 10px
  }
}
</style>
