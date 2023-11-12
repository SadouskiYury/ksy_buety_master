// const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/assets/stylesheets/**/*.css',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Graphik', 'sans-serif'],
        ubuntu: ['Ubuntu','sans-serif']
      },
      colors: {
       'lilac': '#D3BBDD',
       'ivory': '#EFE7D3',
       'pewter': '#ECE3F0',
       'pinki': '#C8A2C8',
       'teal': '#317773'
     }
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require('tailwind-fontawesome')
  ]
}
