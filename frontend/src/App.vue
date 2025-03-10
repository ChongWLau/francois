<template>
  <!-- <img alt="Vue logo" src="./assets/logo.png">
  <HelloWorld msg="Welcome to Your Vue.js App"/> -->
  <v-app>

  </v-app>
</template>

<script>
import { markRaw } from 'vue';
import LayoutDefault from '@/common/layouts/LayoutDefault.vue';
// import HelloWorld from './components/HelloWorld.vue'
import Home from './components/Home.vue';

export default {
  name: 'App',
  components: {
    HelloWorld,
    Home,
  },
  data: () => ({
    layout: markRaw(LayoutDefault),
    ready: false,
  }),
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
