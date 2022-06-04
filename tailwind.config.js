module.exports = {
  content: ['./index.html', './src/**/*.{vue,js,ts,jsx,tsx}'],
  theme: {
    extend: {
      transitionProperty: { height: 'height' },
    },
  },
  variants: {
    height: ['hover', 'focus', 'responsive'],
  },
};
