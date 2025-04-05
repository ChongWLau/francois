<template>
  <!-- <img alt="Vue logo" src="./assets/logo.png">
  <HelloWorld msg="Welcome to Your Vue.js App"/> -->
  <v-app>
    This is Francois!
    <component :is="layout">
      <template #header>
        <GlobalTabs />
      </template>
      <template #sidebar>
        <GlobalSidebar />
      </template>
    </component>
  </v-app>
</template>

<script>
import { markRaw } from 'vue';
import LayoutDefault from '@/common/layouts/LayoutDefault.vue';
import GlobalTabs from '@/common/global/GlobalTabs.vue';
import GlobalSidebar from '@/common/global/GlobalSidebar.vue';
// import HelloWorld from './components/HelloWorld.vue'

export default {
  name: 'App',
  components: {
    // HelloWorld,
    GlobalSidebar,
    GlobalTabs,
  },
  data: () => ({
    layout: markRaw(LayoutDefault),
    ready: false,
  }),
  created() {
    this.ready = true;
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
