import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}"
  ],
  theme: {
    extend: {
      colors: {
        brand: {
          50: "#fef6ee",
          100: "#fde8d7",
          200: "#facaaa",
          300: "#f7a976",
          400: "#f38a49",
          500: "#ef6b22",
          600: "#dd4f14",
          700: "#b83a13",
          800: "#922f16",
          900: "#762814"
        }
      }
    }
  },
  plugins: []
};

export default config;
