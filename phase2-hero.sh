#!/bin/bash

set -e

echo "======================================"
echo " Creating Premium Hero Section"
echo "======================================"

mkdir -p src/components

####################################################
# Hero.jsx
####################################################

cat > src/components/Hero.jsx <<'EOF'
import { motion } from "framer-motion";
import { FaArrowRight, FaCheckCircle } from "react-icons/fa";
import { Button, Container, Badge } from "./ui";

export default function Hero() {
  return (
    <section className="relative min-h-screen flex items-center overflow-hidden bg-gradient-to-br from-blue-900 via-blue-700 to-blue-500">

      <div className="absolute inset-0 bg-black/20"></div>

      <Container className="relative z-10 grid lg:grid-cols-2 gap-16 items-center">

        <motion.div
          initial={{opacity:0,x:-50}}
          animate={{opacity:1,x:0}}
          transition={{duration:.8}}
        >

          <Badge>
            Zambia's Trusted Laser Clinic
          </Badge>

          <h1 className="mt-6 text-5xl lg:text-7xl font-black text-white leading-tight">
            Reveal Your
            <span className="block text-green-400">
              Natural Beauty
            </span>
          </h1>

          <p className="mt-8 text-xl text-blue-100 max-w-xl">
            Advanced laser treatments, chemical peels,
            acne solutions and skin rejuvenation delivered
            by trained professionals.
          </p>

          <div className="flex flex-wrap gap-4 mt-10">

            <Button variant="secondary">
              Book Appointment
            </Button>

            <Button variant="white">
              Our Services
              <FaArrowRight className="inline ml-2"/>
            </Button>

          </div>

          <div className="grid grid-cols-2 gap-6 mt-14">

            <div className="flex items-center gap-3">
              <FaCheckCircle className="text-green-400 text-xl"/>
              <span className="text-white">
                Safe Procedures
              </span>
            </div>

            <div className="flex items-center gap-3">
              <FaCheckCircle className="text-green-400 text-xl"/>
              <span className="text-white">
                Modern Equipment
              </span>
            </div>

            <div className="flex items-center gap-3">
              <FaCheckCircle className="text-green-400 text-xl"/>
              <span className="text-white">
                Experienced Staff
              </span>
            </div>

            <div className="flex items-center gap-3">
              <FaCheckCircle className="text-green-400 text-xl"/>
              <span className="text-white">
                Affordable Treatments
              </span>
            </div>

          </div>

        </motion.div>

        <motion.div
          initial={{opacity:0,x:50}}
          animate={{opacity:1,x:0}}
          transition={{duration:.8}}
          className="relative"
        >

          <img
            src="https://images.unsplash.com/photo-1515377905703-c4788e51af15?w=900"
            alt="Clinic"
            className="rounded-3xl shadow-2xl"
          />

          <div className="absolute -bottom-8 -left-8 bg-white rounded-2xl p-6 shadow-xl">

            <h3 className="text-4xl font-bold text-blue-700">
              5000+
            </h3>

            <p className="text-gray-600">
              Happy Clients
            </p>

          </div>

          <div className="absolute -top-8 -right-8 bg-green-600 rounded-2xl p-6 shadow-xl text-white">

            <h3 className="text-4xl font-bold">
              6
            </h3>

            <p>Branches</p>

          </div>

        </motion.div>

      </Container>

    </section>
  );
}
EOF

####################################################
# Update Home.jsx
####################################################

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

echo ""
echo "======================================"
echo " Hero Installed Successfully"
echo "======================================"
echo ""
echo "Next:"
echo "./phase2-sections.sh"
echo ""
