#!/bin/bash

set -e

echo "Creating CTA component..."

cat > src/components/CTA.jsx <<'EOF'
import { motion } from "framer-motion";
import {
  FaWhatsapp,
  FaPhoneAlt,
  FaArrowRight
} from "react-icons/fa";

import {
  Container,
  Button
} from "./ui";

export default function CTA(){

  return(

    <section className="py-24 bg-gradient-to-r from-blue-900 via-blue-700 to-green-600 overflow-hidden">

      <Container>

        <motion.div

          initial={{opacity:0,y:40}}
          whileInView={{opacity:1,y:0}}
          viewport={{once:true}}
          transition={{duration:.7}}

          className="text-center text-white"

        >

          <span className="inline-block bg-white/20 px-5 py-2 rounded-full mb-6">

            Professional Skin Care

          </span>

          <h2 className="text-4xl lg:text-6xl font-black">

            Ready To Transform

            <br/>

            Your Skin?

          </h2>

          <p className="mt-8 max-w-3xl mx-auto text-lg text-blue-100">

            Whether you're struggling with acne, skin tags,
            stretch marks, scars or looking for skin rejuvenation,
            our experienced team is ready to help you achieve
            healthy, glowing skin.

          </p>

          <div className="flex flex-wrap justify-center gap-5 mt-12">

            <a
              href="https://wa.me/260975350704"
              target="_blank"
              rel="noreferrer"
            >

              <Button variant="secondary">

                <FaWhatsapp className="inline mr-2"/>

                Chat on WhatsApp

              </Button>

            </a>

            <a href="tel:0975350704">

              <Button variant="white">

                <FaPhoneAlt className="inline mr-2"/>

                Call Now

              </Button>

            </a>

          </div>

        </motion.div>

      </Container>

      <div className="absolute hidden lg:block w-96 h-96 rounded-full bg-white/10 blur-3xl -left-20 bottom-0"></div>

      <div className="absolute hidden lg:block w-80 h-80 rounded-full bg-green-300/20 blur-3xl right-0 top-0"></div>

    </section>

  );

}
EOF

echo "Updating Home.jsx..."

cat > src/pages/Home.jsx <<'EOF'
import Hero from "../components/Hero";
import Services from "../components/Services";
import WhyChoose from "../components/WhyChoose";
import Statistics from "../components/Statistics";
import Branches from "../components/Branches";
import CTA from "../components/CTA";

export default function Home(){

  return(

    <>

      <Hero/>

      <Services/>

      <WhyChoose/>

      <Statistics/>

      <Branches/>

      <CTA/>

    </>

  );

}
EOF

echo ""
echo "======================================"
echo "CTA Installed Successfully"
echo "======================================"
echo ""
echo "Next:"
echo "Premium Footer"
echo "Testimonials"
echo "Gallery"
echo ""