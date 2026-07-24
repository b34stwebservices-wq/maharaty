import { useEffect, useState } from "react";
import { useInView } from "react-intersection-observer";
import { motion } from "framer-motion";

import { Container } from "./ui";
import stats from "../data/stats.json";

function AnimatedNumber({ end, suffix, start }) {
  const [value, setValue] = useState(0);

  useEffect(() => {
    if (!start) return;
    const startedAt = performance.now();
    const duration = 1800;
    let frame;
    const tick = (now) => {
      const progress = Math.min((now - startedAt) / duration, 1);
      setValue(Math.round(end * (1 - Math.pow(1 - progress, 3))));
      if (progress < 1) frame = requestAnimationFrame(tick);
    };
    frame = requestAnimationFrame(tick);
    return () => cancelAnimationFrame(frame);
  }, [end, start]);

  return <>{value}{suffix}</>;
}

export default function Statistics() {

  const { ref, inView } = useInView({
    triggerOnce: true,
    threshold: .3
  });

  return (

    <section
      ref={ref}
      className="relative overflow-hidden bg-gradient-to-br from-[#083A7A] via-[#0B4EA2] to-[#1672bd] py-24"
    >

      <Container>

        <div className="relative z-10 mx-auto max-w-2xl text-center">
          <p className="text-sm font-bold tracking-[.18em] text-green-300">MAHARATY BY THE NUMBERS</p>
          <h2 className="mt-3 text-4xl font-black text-white lg:text-5xl">Our Numbers</h2>
          <p className="mt-4 text-blue-100">Every smile represents another successful treatment.</p>
        </div>

        <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-8 mt-14">

          {stats.map((item,index)=>(

            <motion.div
              key={index}
              initial={{opacity:0,y:40}}
              whileInView={{opacity:1,y:0}}
              viewport={{once:true}}
              transition={{delay:index*.15}}
            >

              <div className="rounded-3xl border border-white/15 bg-white/10 p-8 text-center shadow-lg shadow-blue-950/10 backdrop-blur-sm">
                <h3 className="text-5xl font-black text-white">
                  <AnimatedNumber end={item.number} suffix={item.suffix} start={inView} />
                </h3>
                <p className="mt-3 font-medium text-blue-100">{item.label}</p>
              </div>

            </motion.div>

          ))}

        </div>

      </Container>

      <div className="absolute -left-24 -top-24 h-72 w-72 rounded-full bg-green-400/15 blur-3xl" />
      <div className="absolute -bottom-32 right-0 h-80 w-80 rounded-full bg-sky-300/20 blur-3xl" />

    </section>

  );

}
