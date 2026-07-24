import {
  FaFacebookF,
  FaInstagram,
  FaWhatsapp,
  FaPhoneAlt,
  FaEnvelope,
  FaMapMarkerAlt,
  FaArrowUp
} from "react-icons/fa";

import { Link } from "react-router-dom";
import { Container } from "./ui";

export default function Footer() {

  const year = new Date().getFullYear();

  return (

    <footer className="bg-slate-950 text-white">

      <Container>

        <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-12 py-20">

          <div>

            <h2 className="text-3xl font-black text-green-400">

              Maharaty

            </h2>

            <p className="mt-6 text-gray-400 leading-7">

              Professional laser and skin care clinic offering
              advanced cosmetic treatments in Zambia.

            </p>

            <div className="flex gap-4 mt-8">

              <a
                href="#"
                className="w-11 h-11 rounded-full bg-blue-700 flex items-center justify-center hover:scale-110 transition"
              >
                <FaFacebookF/>
              </a>

              <a
                href="#"
                className="w-11 h-11 rounded-full bg-pink-600 flex items-center justify-center hover:scale-110 transition"
              >
                <FaInstagram/>
              </a>

              <a
                href="https://wa.me/260975350704"
                className="w-11 h-11 rounded-full bg-green-600 flex items-center justify-center hover:scale-110 transition"
              >
                <FaWhatsapp/>
              </a>

            </div>

          </div>

          <div>

            <h3 className="text-xl font-bold">

              Quick Links

            </h3>

            <ul className="space-y-3 mt-6 text-gray-400">

              <li><Link to="/">Home</Link></li>

              <li><Link to="/about">About</Link></li>

              <li><Link to="/services">Services</Link></li>

              <li><Link to="/gallery">Gallery</Link></li>

              <li><Link to="/contact">Contact</Link></li>

            </ul>

          </div>

          <div>

            <h3 className="text-xl font-bold">

              Treatments

            </h3>

            <ul className="space-y-3 mt-6 text-gray-400">

              <li>Acne Treatment</li>

              <li>Chemical Peel</li>

              <li>Mole Removal</li>

              <li>Skin Tag Removal</li>

              <li>Stretch Marks</li>

              <li>Scar Treatment</li>

            </ul>

          </div>

          <div>

            <h3 className="text-xl font-bold">

              Contact

            </h3>

            <div className="space-y-5 mt-6">

              <div className="flex gap-3">

                <FaMapMarkerAlt className="text-green-400 mt-1"/>

                <span className="text-gray-400">

                  Lusaka & Multiple Branches, Zambia

                </span>

              </div>

              <div className="flex gap-3">

                <FaPhoneAlt className="text-green-400 mt-1"/>

                <span className="text-gray-400">

                  +260 975 350 704

                </span>

              </div>

              <div className="flex gap-3">

                <FaEnvelope className="text-green-400 mt-1"/>

                <span className="text-gray-400">

                  maharatylaserclinic@gmail.com

                </span>

              </div>

            </div>

          </div>

        </div>

      </Container>

      <div className="border-t border-slate-800">

        <Container>

          <div className="flex flex-col md:flex-row justify-between items-center py-8">

            <p className="text-gray-500">

              © {year} Maharaty Laser Clinic. All Rights Reserved.

            </p>

            <button

              onClick={() =>
                window.scrollTo({
                  top:0,
                  behavior:"smooth"
                })
              }

              className="mt-6 md:mt-0 w-12 h-12 rounded-full bg-blue-700 hover:bg-green-600 transition flex items-center justify-center"

            >

              <FaArrowUp/>

            </button>

          </div>

        </Container>

      </div>

    </footer>

  );

}
