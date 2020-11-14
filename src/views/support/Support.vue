<template>
  <div>
    <slot name="nb" :props="$store.getters.getPageNbanner" ></slot>
    <slot name="crumb"></slot>
    <div class="service">
      <div class="container">
        <service></service>
        <div class="line_height60"></div>
        <service-idea></service-idea>
        <service-advantage></service-advantage>
        <service-system></service-system>
        <service-process></service-process>
      </div>
    </div>
  </div>
</template>

<script>
import Service from './childrenComps/Service'
import ServiceIdea from './childrenComps/ServiceIdea'
import ServiceAdvantage from './childrenComps/ServiceAdvantage'
import ServiceSystem from './childrenComps/ServiceSystem'
import ServiceProcess from './childrenComps/ServiceProcess'
export default {
  components: {
    Service,
    ServiceIdea,
    ServiceAdvantage,
    ServiceSystem,
    ServiceProcess
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
.service {
  padding: 35px 0;
}

@media (max-width: 999px) {
  .service {
  padding: 20px 0;
  }
  .line_height60 {
    height: 20px;
  }
}
</style>
