<template>
  <slot name="global-sidebar"></slot>
  <slot name="global-header"></slot>

  <v-main>
    <v-container fluid class="pl-lg-7">
      <v-row>
        <v-col cols="12">
          <router-view />
        </v-col>
      </v-row>
    </v-container>
  </v-main>
</template>
