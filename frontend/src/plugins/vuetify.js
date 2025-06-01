import 'vuetify/styles'
import { createVuetify } from 'vuetify'
import * as components from 'vuetify/components'
import * as directives from 'vuetify/directives'

export default createVuetify({
  components,
  directives,
  theme: {
    defaultTheme: 'light',
    themes: {
      light: {
        colors: {
          primary: '#1B3168', // Navy
          secondary: '#D68B3C', // Orange
          accent: '#C4442A', // Red
          background: '#fff8e1',
          surface: '#FFFFFF',
          'on-surface': '#181818',
        }
      }
    }
  },
})