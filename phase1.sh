#!/bin/bash

set -e

echo "======================================"
echo " Maharaty Clinic - Phase 1 Generator"
echo "======================================"

#######################################
# Create directories
#######################################

mkdir -p src/components
mkdir -p src/pages
mkdir -p src/layouts
mkdir -p src/router

#######################################
# MainLayout.jsx
#######################################

cat > src/layouts/MainLayout.jsx <<'EOF'
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";

export default function MainLayout({ children }) {
  return (
    <>
      <Navbar />
      <main>{children}</main>
      <Footer />
    </>
  );
}
EOF

#######################################
# Navbar.jsx
#######################################

cat > src/components/Navbar.jsx <<'EOF'
import { Link } from "react-router-dom";

export default function Navbar() {
  return (
    <header className="sticky top-0 z-50 bg-white shadow">
      <nav className="max-w-7xl mx-auto flex justify-between items-center px-6 py-4">

        <div className="text-2xl font-bold text-blue-700">
          Maharaty Clinic
        </div>

        <ul className="hidden md:flex gap-8">
          <li><Link to="/">Home</Link></li>
          <li><Link to="/about">About</Link></li>
          <li><Link to="/services">Services</Link></li>
          <li><Link to="/gallery">Gallery</Link></li>
          <li><Link to="/contact">Contact</Link></li>
        </ul>

        <button className="bg-green-600 text-white px-5 py-2 rounded-full hover:bg-green-700 transition">
          Book Now
        </button>

      </nav>
    </header>
  );
}
EOF

#######################################
# Hero.jsx
#######################################

cat > src/components/Hero.jsx <<'EOF'
export default function Hero() {
  return (
    <section className="bg-gradient-to-r from-blue-700 to-blue-500 text-white min-h-[80vh] flex items-center">
      <div className="max-w-7xl mx-auto px-6">

        <h1 className="text-6xl font-bold mb-6">
          Reveal Your
          <br />
          Natural Beauty
        </h1>

        <p className="text-xl max-w-xl mb-8">
          Professional Laser and Skin Care Treatments in Zambia.
        </p>

        <div className="flex gap-4">

          <button className="bg-green-600 px-6 py-3 rounded-full hover:bg-green-700">
            Book Appointment
          </button>

          <button className="border border-white px-6 py-3 rounded-full">
            Learn More
          </button>

        </div>

      </div>
    </section>
  );
}
EOF

#######################################
# Services.jsx
#######################################

cat > src/components/Services.jsx <<'EOF'
const services = [
"Acne Treatment",
"Chemical Peel",
"Mole Removal",
"Skin Tags",
"Stretch Marks",
"Facials"
];

export default function Services(){

return(

<section className="py-20 bg-gray-50">

<div className="max-w-7xl mx-auto">

<h2 className="text-4xl font-bold text-center mb-12">
Our Services
</h2>

<div className="grid md:grid-cols-3 gap-8">

{services.map(service=>(
<div
key={service}
className="bg-white rounded-xl shadow p-8 hover:shadow-xl transition"
>
<h3 className="text-xl font-semibold">
{service}
</h3>
</div>
))}

</div>

</div>

</section>

);

}
EOF

#######################################
# Footer.jsx
#######################################

cat > src/components/Footer.jsx <<'EOF'
export default function Footer(){

return(

<footer className="bg-blue-900 text-white py-10">

<div className="max-w-7xl mx-auto text-center">

<h2 className="text-2xl font-bold">
Maharaty Laser Clinic
</h2>

<p className="mt-4">
Healthy Skin. Beautiful Confidence.
</p>

<p className="mt-4 text-sm">
© 2026 Maharaty Laser Clinic Zambia
</p>

</div>

</footer>

);

}
EOF

#######################################
# Home.jsx
#######################################

cat > src/pages/Home.jsx <<'EOF'
import Hero from "../components/Hero";
import Services from "../components/Services";

export default function Home(){

return(

<>

<Hero/>

<Services/>

</>

);

}
EOF

#######################################
# Placeholder Pages
#######################################

for page in About Services Gallery Contact Booking NotFound
do
cat > src/pages/$page.jsx <<EOF
export default function $page(){
return(
<div className="max-w-7xl mx-auto py-20">
<h1 className="text-5xl font-bold">$page Page</h1>
</div>
);
}
EOF
done

#######################################
# AppRouter.jsx
#######################################

cat > src/router/AppRouter.jsx <<'EOF'
import { Routes, Route } from "react-router-dom";

import MainLayout from "../layouts/MainLayout";

import Home from "../pages/Home";
import About from "../pages/About";
import Services from "../pages/Services";
import Gallery from "../pages/Gallery";
import Contact from "../pages/Contact";
import Booking from "../pages/Booking";
import NotFound from "../pages/NotFound";

export default function AppRouter(){

return(

<Routes>

<Route path="/" element={<MainLayout><Home/></MainLayout>} />

<Route path="/about" element={<MainLayout><About/></MainLayout>} />

<Route path="/services" element={<MainLayout><Services/></MainLayout>} />

<Route path="/gallery" element={<MainLayout><Gallery/></MainLayout>} />

<Route path="/contact" element={<MainLayout><Contact/></MainLayout>} />

<Route path="/booking" element={<MainLayout><Booking/></MainLayout>} />

<Route path="*" element={<MainLayout><NotFound/></MainLayout>} />

</Routes>

);

}
EOF

#######################################
# App.jsx
#######################################

cat > src/App.jsx <<'EOF'
import { BrowserRouter } from "react-router-dom";
import AppRouter from "./router/AppRouter";

export default function App(){

return(

<BrowserRouter>
<AppRouter/>
</BrowserRouter>

);

}
EOF

echo ""
echo "======================================"
echo " Phase 1 Complete!"
echo "======================================"
echo ""
echo "Run:"
echo ""
echo "npm run dev"
echo ""