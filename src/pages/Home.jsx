import Hero from "../components/Hero";
import Services from "../components/Services";
import WhyChoose from "../components/WhyChoose";
import Statistics from "../components/Statistics";
import Branches from "../components/Branches";
import CTA from "../components/CTA";
import Testimonials from "../components/Testimonials";
import FAQ from "../components/FAQ";
import Gallery from "../components/Gallery";

export default function Home(){

  return(

    <>

      <Hero/>

      <Services limit={6}/>

      <WhyChoose/>

      <Statistics/>

      <Gallery/>

      <Branches/>

      <Testimonials/>

      <FAQ/>

      <CTA/>

    </>

  );

}
