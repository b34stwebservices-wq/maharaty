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
import features from "../data/why-choose.json";

const icons = { doctor: FaUserMd, shield: FaShieldAlt, award: FaAward, clinic: FaClinicMedical, smile: FaSmile, clock: FaClock };

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

            const Icon = icons[item.icon];

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
