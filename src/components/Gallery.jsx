import { Link } from "react-router-dom";
import { motion } from "framer-motion";
import gallery from "../data/gallery.json";
import { Container, SectionTitle } from "./ui";

export default function Gallery() {
  return <section className="bg-white py-24"><Container>
    <SectionTitle title="Before & After Gallery" subtitle="A glimpse into the care, confidence and healthy-skin journeys we support." />
    <div className="grid grid-cols-2 gap-4 md:grid-cols-4">
      {gallery.gallery.slice(0, 4).map(({ src, alt }, i) => <motion.div key={`gallery-preview-${i}-${src}`} initial={{ opacity: 0, scale: .96 }} whileInView={{ opacity: 1, scale: 1 }} viewport={{ once: true }} transition={{ delay: i * .08 }} className={`group relative overflow-hidden rounded-2xl ${i === 0 ? "md:col-span-2 md:row-span-2" : ""}`}>
        <img className={`w-full object-cover transition duration-700 group-hover:scale-110 ${i === 0 ? "h-72 md:h-full" : "h-36 md:h-52"}`} src={src} alt={alt} />
        <div className="absolute inset-0 bg-gradient-to-t from-blue-950/50 to-transparent opacity-0 transition group-hover:opacity-100" />
      </motion.div>)}
    </div>
    <div className="mt-10 text-center"><Link to="/gallery" className="inline-block rounded-full border-2 border-blue-700 px-6 py-3 font-bold text-blue-700 transition hover:bg-blue-700 hover:text-white">View full gallery</Link></div>
  </Container></section>;
}
