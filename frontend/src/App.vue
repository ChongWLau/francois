<template>
  <v-app>
    <v-app-bar height="125" color="primary">
      <img src="@/assets/francois_logo_no_bg.png" width="125" height="125" />
      <v-toolbar-title class="text-h2">Francois</v-toolbar-title>
      <v-btn to="/" text color="orange">Home</v-btn>
      <v-btn to="/about" text color="orange">About</v-btn>
    </v-app-bar>

    <v-main>
      <v-container>
        <v-row>
          <v-col col="12">
            <router-view />
          </v-col>
        </v-row>
      </v-container>
    </v-main>
  </v-app>
</template>

<script >

</script>
