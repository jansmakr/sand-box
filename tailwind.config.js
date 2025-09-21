/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./src/**/*.{js,ts,jsx,tsx}",
    "./public/**/*.{html,js}"
  ],
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#faf5ff',
          500: '#9333ea',
          600: '#7c3aed',
        },
        pink: {
          500: '#ec4899',
          600: '#db2777',
        }
      }
    },
  },
  plugins: [],
}