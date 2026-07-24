import { Link, NavLink } from "react-router-dom";
import { useState } from "react";
import { FaBars, FaTimes } from "react-icons/fa";

export default function Navbar() {
  const [open, setOpen] = useState(false);
  const links = [["/", "Home"], ["/about", "About"], ["/services", "Services"], ["/gallery", "Gallery"], ["/contact", "Contact"]];
  return (
    <header className="sticky top-0 z-50 border-b border-white/30 bg-white/85 shadow-sm backdrop-blur-xl">
      <nav className="max-w-7xl mx-auto flex justify-between items-center px-6 py-4">

        <Link to="/" className="leading-none"><span className="block text-2xl font-black tracking-tight text-blue-800">Maharaty</span><span className="text-[10px] font-bold tracking-[.22em] text-green-600">LASER CLINIC</span></Link>

        <ul className="hidden md:flex gap-7 text-sm font-semibold text-slate-600">
          {links.map(([to,label])=><li key={to}><NavLink className={({isActive})=>isActive?"text-blue-700":"hover:text-green-600 transition"} to={to}>{label}</NavLink></li>)}
        </ul>

        <div className="hidden md:block"><Link to="/booking" className="rounded-full bg-green-600 px-5 py-3 text-sm font-bold text-white shadow-lg shadow-green-100 hover:bg-green-700 transition">Book appointment</Link></div>
        <button aria-label="Open menu" className="text-blue-900 md:hidden" onClick={()=>setOpen(!open)}>{open?<FaTimes/>:<FaBars/>}</button>

      </nav>
      {open && <div className="border-t bg-white px-6 py-5 md:hidden"><div className="flex flex-col gap-4 font-semibold text-slate-700">{links.map(([to,label])=><Link onClick={()=>setOpen(false)} key={to} to={to}>{label}</Link>)}<Link onClick={()=>setOpen(false)} className="rounded-full bg-green-600 px-5 py-3 text-center text-white" to="/booking">Book appointment</Link></div></div>}
    </header>
  );
}
