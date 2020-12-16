<template>
  <div class="main">
  <div class="container">
    <ul class="list_case">
      <li v-for="item in List" :key="item.id">
        <router-link :to="`/product/${item.id}`">
        <div class="pic"><img :src="`${$baseUrl + item.image}`"></div>
        <div class="dt">{{item.name}}<slot name='dt1'></slot></div>
        </router-link>
      </li>
    </ul>
  </div>
  <!-- <div v-if="path.indexOf('/solution') == -1"><main-Pages></main-Pages></div> -->
</div>
</template>

<script>
// import MainPages from './MainPages.vue'
export default {
  name: '',
  components: {
    // MainPages
  },
  computed: {
    path () {
      return this.$route.path
    }
  },
  props: {
    List: {
      type: Array,
      default () {
        return []
      }
    }
  },
  created () {
  },
  data () {
    return {
    }
  }
}
</script>

<style>
.main {
  padding: 40px 0 60px 0
}
.list_case {
  margin: -15px;
  overflow: hidden
}

.list_case li {
  width: 33.33333333%;
  float: left;
  padding: 15px;
}

.list_case li a {
  display: block;
  overflow: hidden;
  color: #555f7d;
  background: #05163f;
}
.list_case li .pic {
  overflow: hidden;
  border-radius: 0 0 0 15px
}

.list_case li .pic img {
  width: 100%;
  height: auto;
  transition: all .5s
}

.list_case li .dt {
  padding: 0 30px;
  line-height: 60px;
  display: block;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  font-weight: bold;
  font-size: 18px;
  color: #fff;
  transition: all .5s
}
.list_case li:hover a {
  background: #e61e37
}

.list_case li:hover .pic img {
  transform: scale(1.05)
}

.list_case li:hover .dt {
  color: #fff
}
@media (max-width: 999px) {
  .main {
    padding: 20px 0
  }
  .list_case {
    margin: -5px
  }

  .list_case li {
    width: 50%;
    padding: 5px
  }

  .list_case li .dt {
    padding: 0 10px;
    line-height: 34px;
    font-size: 14px
  }
}
</style>
