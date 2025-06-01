<template>
    <v-data-iterator :items="recipes" :search="search">
        <template #header>
            <v-card>
                <v-text-field v-model="search" prepend-inner-icon="mdi-magnify" label="Search" hide-details variant="solo" clearable/>
            </v-card>
        </template>
        <template #default=props>
            <v-card v-for="recipe in props.items" :key="recipe.id" class="mt-2">
                <v-card-title>{{ recipe.raw.name }}</v-card-title>
                <v-card-text>
                    <v-list>
                        <v-list-item v-for="ingredient in recipe.raw.ingredients">
                            {{ ingredient.qty }} {{ ingredient.ingredient }}
                        </v-list-item>
                    </v-list>
                    <!-- <span v-for="ingredient in recipe.raw.ingredients">
                        {{ ingredient.qty }} {{ ingredient.ingredient }}
                    </span> -->
                </v-card-text>
            </v-card>
        </template>
    </v-data-iterator>
</template>

<script>
  export default {
    data() {
        return {
            search: null,
            recipes: [
                {
                    name: 'Tea recipe', 
                    ingredients: [
                        {qty: '1 tsp', ingredient: 'sugar'},
                        {qty: '1 bag', ingredient: 'tea'},
                        {qty: '300 ml', ingredient: 'boiling water'},
                        {qty: 'optional', ingredient: 'milk'},
                    ],
                },
                {
                    name: 'Coffee recipe',
                    ingredients: [
                        {qty: '2 tsp', ingredient: 'sugar'},
                        {qty: '2 tsp', ingredient: 'coffee'},
                        {qty: '300 ml', ingredient: 'boiling water'},
                        {qty: 'optional', ingredient: 'milk'},
                    ]
                },
                {
                    name: 'Hot chocolate recipe',
                    ingredients: [
                        {qty: '4 tbsp', ingredient: 'cocoa'},
                        {qty: '300 ml', ingredient: 'hot milk'},
                        {qty: '2 tsp', ingredient: 'sugar'},
                    ]
                }
            ],
        }
    },

  }
</script>