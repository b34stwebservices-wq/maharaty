import { Routes, Route } from "react-router-dom";

import MainLayout from "../layouts/MainLayout";

import Home from "../pages/Home";
import About from "../pages/About";
import Services from "../pages/Services";
import Gallery from "../pages/Gallery";
import Contact from "../pages/Contact";
import Booking from "../pages/Booking";
import NotFound from "../pages/NotFound";
import ServiceDetails from "../pages/ServiceDetails";

export default function AppRouter(){

return(

<Routes>

<Route path="/" element={<MainLayout><Home/></MainLayout>} />

<Route path="/about" element={<MainLayout><About/></MainLayout>} />

<Route path="/services" element={<MainLayout><Services/></MainLayout>} />
<Route path="/services/:slug" element={<MainLayout><ServiceDetails/></MainLayout>} />

<Route path="/gallery" element={<MainLayout><Gallery/></MainLayout>} />

<Route path="/contact" element={<MainLayout><Contact/></MainLayout>} />

<Route path="/booking" element={<MainLayout><Booking/></MainLayout>} />

<Route path="*" element={<MainLayout><NotFound/></MainLayout>} />

</Routes>

);

}
