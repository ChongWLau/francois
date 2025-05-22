<template>
  <slot name="sidebar"></slot>
  <slot name="header"></slot>

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
