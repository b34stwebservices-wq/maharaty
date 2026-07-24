#!/bin/bash

set -e

echo "Creating Branches component..."

cat > src/components/Branches.jsx <<'EOF'
import {
  FaPhoneAlt,
  FaMapMarkerAlt,
  FaWhatsapp
} from "react-icons/fa";

import {
  Container,
  SectionTitle,
  Card,
  Button
} from "./ui";

const branches = [
  {
    city: "Kabwata",
    address: "Kabwata, Lusaka",
    phone: "0975350704",
    whatsapp: "260975350704"
  },
  {
    city: "Ibex Hill",
    address: "Ibex Hill, Lusaka",
    phone: "0975030296",
    whatsapp: "260975030296"
  },
  {
    city: "Ndola",
    address: "Ndola",
    phone: "0962792069",
    whatsapp: "260962792069"
  },
  {
    city: "Kitwe",
    address: "Kitwe",
    phone: "0960692864",
    whatsapp: "260960692864"
  },
  {
    city: "Livingstone",
    address: "Livingstone",
    phone: "0770231300",
    whatsapp: "260770231300"
  },
  {
    city: "Solwezi",
    address: "Solwezi",
    phone: "0966562528",
    whatsapp: "260966562528"
  }
];

export default function Branches() {

  return (

    <section className="py-24 bg-gray-50">

      <Container>

        <SectionTitle
          title="Visit Our Branches"
          subtitle="Convenient locations across Zambia."
        />

        <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">

          {branches.map((branch,index)=>(

            <Card
              key={index}
              className="flex flex-col justify-between"
            >

              <div>

                <div className="w-16 h-16 rounded-full bg-blue-100 flex items-center justify-center">

                  <FaMapMarkerAlt className="text-3xl text-blue-700"/>

                </div>

                <h3 className="text-2xl font-bold mt-6">

                  {branch.city}

                </h3>

                <p className="text-gray-600 mt-3">

                  {branch.address}

                </p>

                <div className="flex items-center gap-2 mt-5 text-blue-700 font-semibold">

                  <FaPhoneAlt/>

                  {branch.phone}

                </div>

              </div>

              <div className="flex gap-3 mt-8">

                <a
                  href={`tel:${branch.phone}`}
                  className="flex-1"
                >
                  <Button className="w-full">
                    Call
                  </Button>
                </a>

                <a
                  href={`https://wa.me/${branch.whatsapp}`}
                  target="_blank"
                  rel="noreferrer"
                  className="flex-1"
                >
                  <Button
                    variant="secondary"
                    className="w-full"
                  >
                    <FaWhatsapp className="inline mr-2"/>
                    WhatsApp
                  </Button>
                </a>

              </div>

            </Card>

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
import Branches from "../components/Branches";

export default function Home(){

  return(

    <>

      <Hero/>

      <Services/>

      <WhyChoose/>

      <Statistics/>

      <Branches/>

    </>

  );

}
EOF

echo ""
echo "✅ Branches section installed."