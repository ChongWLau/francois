<template>
    <v-app-bar>
        <template #extension>
            <v-tabs>
                <div v-if="tabs.length > 1">
                    <v-tab v-for="tab in tabs" :key="tab.label" :to="tab.to" :value="tab.label">
                        {{ tab.label }}
                    </v-tab>
                </div>
                <div v-else>
                    <v-tab v-for="tab in tabs" :key="tab.label" :to="tab.to">
                        {{ tab.label }}
                    </v-tab>
                </div>
            </v-tabs>
        </template>
    </v-app-bar>
</template>

<script>
export default {
  computed: {
    tabs() {
      return this.$store.state.navigation.tabs;
    },
  },
};
</script>