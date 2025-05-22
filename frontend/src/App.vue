<template>
  <v-app>
    This is Francois! How can I help?
    <template v-if="ready">
      <component :is="layout">
        <template #header>
          <GlobalTabs />
        </template>
        <template #sidebar>
          <GlobalSidebar />
        </template>
      </component>
    </template>
  </v-app>
</template>

<script>
import { markRaw } from 'vue';
import LayoutDefault from '@/common/layouts/LayoutDefault.vue';
import GlobalTabs from '@/common/global/GlobalTabs.vue';
import GlobalSidebar from '@/common/global/GlobalSidebar.vue';

export default {
  name: 'App',
  components: {
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
