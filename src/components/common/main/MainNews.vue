<template>
<div class="main news">
  <div class="container">
    <ul class="list_news">
      <li>
        <a href="http://www.qizhong114.com/shunfanews/238.html">
          <div class="date">2020<em>07-07</em>19:01</div>
            <div class="box"> <span>起重机的发展方向</span>
              <div class="cs">
                <img src="http://www.qizhong114.com/static/home/img/icon_kh.png">
                <em>发布者：admin</em>
                <img src="http://www.qizhong114.com/static/home/img/icon_look.png">
                <em>浏览：102</em>
              </div>
              <p></p>
            </div>
          </a>
        </li>
        <li>
        <a href="http://www.qizhong114.com/shunfanews/238.html">
          <div class="date">2020<em>07-07</em>19:01</div>
            <div class="box"> <span>起重机的发展方向</span>
              <div class="cs">
                <img src="http://www.qizhong114.com/static/home/img/icon_kh.png">
                <em>发布者：admin</em>
                <img src="http://www.qizhong114.com/static/home/img/icon_look.png">
                <em>浏览：102</em>
              </div>
              <p></p>
            </div>
          </a>
        </li>
        <li>
        <a href="http://www.qizhong114.com/shunfanews/238.html">
          <div class="date">2020<em>07-07</em>19:01</div>
            <div class="box"> <span>起重机的发展方向</span>
              <div class="cs">
                <img src="http://www.qizhong114.com/static/home/img/icon_kh.png">
                <em>发布者：admin</em>
                <img src="http://www.qizhong114.com/static/home/img/icon_look.png">
                <em>浏览：102</em>
              </div>
              <p></p>
            </div>
          </a>
        </li>
      </ul>
  </div>
  <main-Pages></main-Pages>
</div>
</template>

<script>
import MainPages from './MainPages.vue'
export default {
  components: {
    MainPages
  }
}
</script>

<style>
.main {
    padding: 40px 0 60px 0
}
.news {
    background: #f0f3fa
}
.list_news {
    position: relative
}
.list_news:before {
    content: '';
    background: #bcbcbc;
    width: 1px;
    position: absolute;
    left: 170px;
    top: 0;
    bottom: 0
}

.list_news li {
    margin-top: 25px;
    position: relative
}
.list_news li:before {
    content: '';
    position: absolute;
    left: 170px;
    width: 0;
    height: 100%;
    top: 0;
    background: #fff;
    transition: all .5s
}
.list_news li:after {
    content: '';
    position: absolute;
    right: 100%;
    margin-right: -170px;
    width: 0;
    height: 100%;
    top: 0;
    background: #05163f;
    transition: all .5s
}
.list_news li a {
    display: flex;
    align-items: center;
    justify-content: space-between;
    color: #555f7d;
    overflow: hidden
}
.list_news li .date {
    width: 170px;
    position: relative;
    z-index: 10;
    margin-right: 70px;
    padding: 0 20px 0 0;
    text-align: right;
    line-height: 1;
    color: #05163f;
    font-size: 16px
}
.list_news li .date:before {
    content: '';
    width: 45px;
    height: 1px;
    background: #bcbcbc;
    position: absolute;
    left: 100%;
    top: 50%
}
.list_news li .date:after {
    content: '';
    position: absolute;
    border-top: 15px solid transparent;
    border-bottom: 15px solid transparent;
    border-left: 15px solid #05163f;
    left: 100%;
    top: 50%;
    margin-top: -15px;
    z-index: 3;
    display: none
}
.list_news li .date em {
    font-size: 52px;
    margin-bottom: 3px;
    display: block
}
.list_news li .box {
    flex: 1;
    width: 0;
    background: #fff;
    padding: 30px 40px;
    position: relative;
    z-index: 10
}
.list_news li .box span {
    font-size: 24px;
    color: #05163f;
    transition: all .5s;
    display: block;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis
}
.list_news li .box .cs {
    padding: 20px 0 15px 0;
    overflow: hidden;
    color: #788291
}
.list_news li .box .cs img {
    margin-right: 10px;
    margin-top: -3px;
    height: 21px;
    width: auto
}
.list_news li .box .cs img:last-of-type {
    margin-left: 40px;
    height: 16px
}

.list_news li .box p {
    display: block;
    overflow: hidden;
    font-size: 16px;
    height: 56px;
    line-height: 28px
}
.list_news li:hover:before {
    width: 99%;
}
.list_news li:hover:after {
    width: 960px
}
.list_news li:hover .date {
    color: #fff
}
.list_news li:hover .date:before {
    background: #05163f
}
.list_news li:hover .date:after {
    display: block
}
.list_news li:hover .box span {
    color: #e61e37
}

@media (max-width: 999px) {
  .main {
    padding: 20px 0
  }
  .list_news {
        margin: 0 0 0 -10px
    }

    .list_news:before {
        left: 60px
    }

    .list_news li {
        margin-top: 10px
    }

    .list_news li:before {
        left: 60px
    }

    .list_news li:after {
        margin-right: -60px
    }

    .list_news li .date {
        width: 60px;
        margin-right: 25px;
        padding: 0 10px 0 0;
        font-size: 12px
    }

    .list_news li .date:before {
        width: 25px
    }

    .list_news li .date em {
        font-size: 16px;
        margin: 5px 0
    }

    .list_news li .box {
        padding: 8px 10px 10px 10px
    }

    .list_news li .box span {
        font-size: 16px
    }

    .list_news li .box .cs {
        padding: 3px 0 5px 0;
        font-size: 12px;
        border-bottom: 1px dashed #eee;
        margin-bottom: 5px
    }

    .list_news li .box .cs img {
        margin-right: 5px;
        margin-top: -3px;
        height: 12px
    }

    .list_news li .box .cs img:last-of-type {
        margin-left: 10px;
        height: 10px
    }

    .list_news li .box p {
        font-size: 12px;
        height: 40px;
        line-height: 20px
    }

    .list_news li:hover:before {
        width: 500px
    }

    .list_news li:hover:after {
        width: 200px
    }
}
</style>
