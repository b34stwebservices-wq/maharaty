#!/bin/bash

set -e

echo "🚀 Setting up Maharaty Laser Clinic..."

#########################################
# Install Dependencies
#########################################

echo "📦 Installing dependencies..."

npm install \
react-router-dom \
framer-motion \
react-icons \
swiper \
axios \
emailjs-com

npm install -D \
tailwindcss \
@tailwindcss/vite \
autoprefixer

#########################################
# Create Folder Structure
#########################################

echo "📁 Creating folders..."

mkdir -p src/assets/{images,icons,gallery,services,testimonials,team}
mkdir -p src/components
mkdir -p src/pages
mkdir -p src/layouts
mkdir -p src/router
mkdir -p src/data
mkdir -p src/hooks
mkdir -p src/context
mkdir -p src/utils
mkdir -p src/styles
mkdir -p src/services
mkdir -p src/config

#########################################
# Components
#########################################

touch src/components/{Navbar,Hero,Services,ServiceCard,AboutPreview,WhyChoose,Statistics,Gallery,GalleryCard,Testimonials,TestimonialCard,FAQ,Branches,BranchCard,Footer,ContactCTA,BookingForm,FloatingWhatsapp,ScrollToTop,Loader}.jsx

#########################################
# Pages
#########################################

touch src/pages/{Home,About,Services,ServiceDetails,Gallery,Booking,Contact,NotFound}.jsx

#########################################
# Layouts
#########################################

touch src/layouts/MainLayout.jsx

#########################################
# Router
#########################################

touch src/router/AppRouter.jsx

#########################################
# Data
#########################################

touch src/data/{services,testimonials,branches,faqs,gallery}.js

#########################################
# Hooks
#########################################

touch src/hooks/{useCounter,useScrollTop}.js

#########################################
# Context
#########################################

touch src/context/AppContext.jsx

#########################################
# Utils
#########################################

touch src/utils/{constants,helpers}.js

#########################################
# Services
#########################################

touch src/services/api.js

#########################################
# Config
#########################################

touch src/config/siteConfig.js

#########################################
# Styles
#########################################

touch src/styles/{globals,animations}.css

#########################################
# Assets
#########################################

touch src/assets/logo.png
touch src/assets/favicon.png

touch src/assets/images/{hero,about,contact}.jpg

touch src/assets/services/{acne,moles,chemical-peel,skin-tags,scars,stretch-marks,warts,facials}.jpg

#########################################
# Remove Default Files
#########################################

rm -f src/App.css
rm -f src/index.css
rm -f src/assets/react.svg

#########################################
# Tailwind Config
#########################################

cat > src/styles/theme.css <<'EOF'
@import "tailwindcss";

:root{
  --primary:#0B4EA2;
  --secondary:#55B938;
  --dark:#083A7A;
  --light:#F8FAFC;
}
EOF

#########################################
# Starter Files
#########################################

cat > src/App.jsx <<'EOF'
function App() {
  return <h1>Maharaty Laser Clinic</h1>;
}

export default App;
EOF

cat > src/main.jsx <<'EOF'
import React from "react";
import ReactDOM from "react-dom/client";
import "./styles/theme.css";
import App from "./App";

ReactDOM.createRoot(document.getElementById("root")).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
EOF

#########################################
# Git Ignore
#########################################

cat > .gitignore <<'EOF'
node_modules
dist
.vscode
.env
EOF

#########################################
# Done
#########################################

echo ""
echo "✅ Setup Complete!"
echo ""
echo "Project structure:"
echo ""

find src -type d | sort

#echo ""
#echo "Run:"
#echo "npm run dev"
#echo ""