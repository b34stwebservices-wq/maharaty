import { Link } from "react-router-dom";
import { motion } from "framer-motion";
import services from "../data/services.json";
import imageLinks from "../data/gallery.json";
import { Container, SectionTitle } from "./ui";

export default function Services({ limit }) {
  return <section className="py-24 bg-slate-50"><Container>
    <SectionTitle title="Our Treatments" subtitle="Thoughtful, professional skin care designed around your goals." />
    <div className="grid sm:grid-cols-2 lg:grid-cols-3 gap-6">
      {services.slice(0, limit).map((service, i) => <motion.div key={service.slug} initial={{ opacity: 0, y: 24 }} whileInView={{ opacity: 1, y: 0 }} viewport={{ once: true }} transition={{ delay: i * .07 }} className="group overflow-hidden rounded-3xl bg-white shadow-sm ring-1 ring-slate-100 hover:-translate-y-1 hover:shadow-xl transition">
        <div className="h-44 overflow-hidden"><img src={imageLinks.services[service.slug].src} alt={imageLinks.services[service.slug].alt} className="h-full w-full object-cover transition duration-700 group-hover:scale-110" /></div>
        <div className="p-7"><span className="text-2xl text-green-600">{service.icon}</span><h3 className="mt-3 text-xl font-bold text-blue-950">{service.name}</h3><p className="mt-2 text-sm leading-6 text-slate-500">{service.short}</p><Link className="mt-5 inline-block font-semibold text-blue-700 hover:text-green-600" to={`/services/${service.slug}`}>Explore treatment →</Link></div>
      </motion.div>)}
    </div>
    {limit && <div className="mt-10 text-center"><Link to="/services" className="inline-flex rounded-full border-2 border-blue-700 px-6 py-3 font-semibold text-blue-700 hover:bg-blue-700 hover:text-white transition">View all treatments</Link></div>}
  </Container></section>;
}
