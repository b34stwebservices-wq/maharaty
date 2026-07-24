#!/bin/bash

set -e

echo "Creating Statistics component..."

cat > src/components/Statistics.jsx <<'EOF'
import CountUp from "react-countup";
import { useInView } from "react-intersection-observer";
import { motion } from "framer-motion";

import { Container, SectionTitle, StatCard } from "./ui";

const stats = [
  {
    number: 5000,
    suffix: "+",
    label: "Happy Clients"
  },
  {
    number: 15,
    suffix: "+",
    label: "Professional Treatments"
  },
  {
    number: 6,
    suffix: "",
    label: "Branches"
  },
  {
    number: 98,
    suffix: "%",
    label: "Client Satisfaction"
  }
];

export default function Statistics() {

  const { ref, inView } = useInView({
    triggerOnce: true,
    threshold: .3
  });

  return (

    <section
      ref={ref}
      className="py-24 bg-gradient-to-r from-blue-800 to-blue-600"
    >

      <Container>

        <SectionTitle
          title="Our Numbers"
          subtitle="Every smile represents another successful treatment."
        />

        <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-8 mt-14">

          {stats.map((item,index)=>(

            <motion.div
              key={index}
              initial={{opacity:0,y:40}}
              whileInView={{opacity:1,y:0}}
              viewport={{once:true}}
              transition={{delay:index*.15}}
            >

              <StatCard

                number={
                  inView
                  ? (
                    <>
                      <CountUp
                        end={item.number}
                        duration={2}
                      />
                      {item.suffix}
                    </>
                  )
                  : 0
                }

                label={item.label}

              />

            </motion.div>

          ))}

        </div>

      </Container>

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

export default function Home(){

  return(

    <>

      <Hero/>

      <Services/>

      <WhyChoose/>

      <Statistics/>

    </>

  );

}
EOF

echo ""
echo "✔ Statistics component installed."
echo ""
echo "If you haven't already:"
echo "npm install react-countup react-intersection-observer"