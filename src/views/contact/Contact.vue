<template>
  <div class="gg">
    <slot name="nb" :props="$store.getters.getPageNbanner" class="11"></slot>
    <slot name="crumb"></slot>
    <contact-process></contact-process>
    <contact-map></contact-map>
  </div>
</template>

<script>
import ContactProcess from './childremComps/ContactProcess'
import ContactMap from './childremComps/ContactMap'
export default {
  components: {
    ContactProcess,
    ContactMap
  },
  data () {
    return {
    }
  },
  mounted () {
    this.$store.commit('getPath', this.$route.path)
  }
}
</script>

<style>
.gg .nbanner .container {
  height: 600px !important;
}
@media (max-width:999px) {
  .gg .nbanner .container {
    height: 280px !important;
  }
}
</style>
