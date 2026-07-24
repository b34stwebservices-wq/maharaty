#!/bin/bash

set -e

echo "Creating WhyChoose component..."

cat > src/components/WhyChoose.jsx <<'EOF'
import { motion } from "framer-motion";
import {
  FaUserMd,
  FaShieldAlt,
  FaAward,
  FaClinicMedical,
  FaSmile,
  FaClock
} from "react-icons/fa";

import { Container, SectionTitle, Card } from "./ui";

const features = [
  {
    icon: FaUserMd,
    title: "Qualified Specialists",
    description:
      "Our experienced team provides safe and professional skincare treatments."
  },
  {
    icon: FaShieldAlt,
    title: "Safe Procedures",
    description:
      "Modern equipment and proven techniques for your safety."
  },
  {
    icon: FaAward,
    title: "Affordable Prices",
    description:
      "Premium treatments at prices designed for everyone."
  },
  {
    icon: FaClinicMedical,
    title: "Modern Technology",
    description:
      "Latest laser equipment for better results."
  },
  {
    icon: FaSmile,
    title: "Happy Clients",
    description:
      "Thousands of satisfied clients across Zambia."
  },
  {
    icon: FaClock,
    title: "Quick Recovery",
    description:
      "Most treatments allow you to return to normal activities quickly."
  }
];

export default function WhyChoose() {

  return (

    <section className="py-24 bg-white">

      <Container>

        <SectionTitle
          title="Why Choose Maharaty?"
          subtitle="Professional laser and skincare treatments delivered with care, precision and modern technology."
        />

        <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">

          {features.map((item, index) => {

            const Icon = item.icon;

            return (

              <motion.div
                key={index}
                initial={{ opacity:0, y:40 }}
                whileInView={{ opacity:1, y:0 }}
                viewport={{ once:true }}
                transition={{ duration:.5, delay:index*.1 }}
              >

                <Card className="text-center h-full">

                  <div className="w-20 h-20 mx-auto rounded-full bg-blue-100 flex items-center justify-center">

                    <Icon className="text-4xl text-blue-700"/>

                  </div>

                  <h3 className="text-2xl font-bold mt-6">

                    {item.title}

                  </h3>

                  <p className="text-gray-600 mt-4">

                    {item.description}

                  </p>

                </Card>

              </motion.div>

            );

          })}

        </div>

      </Container>

    </section>

  );

}
EOF

echo "Updating Home page..."

cat > src/pages/Home.jsx <<'EOF'
import Hero from "../components/Hero";
import Services from "../components/Services";
import WhyChoose from "../components/WhyChoose";

export default function Home(){

  return(

    <>

      <Hero/>

      <Services/>

      <WhyChoose/>

    </>

  );

}
EOF

echo ""
echo "✅ WhyChoose installed."