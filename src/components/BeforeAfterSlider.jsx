import { useState } from "react";
import { FaArrowsAltH } from "react-icons/fa";

export default function BeforeAfterSlider({ comparison }) {
  const [position, setPosition] = useState(50);

  return <div className="overflow-hidden rounded-3xl bg-slate-100 shadow-lg">
    <div className="relative aspect-[4/3] select-none overflow-hidden">
      <img src={comparison.after.src} alt={comparison.after.alt} className="absolute inset-0 h-full w-full object-cover" />
      <img src={comparison.before.src} alt={comparison.before.alt} className="absolute inset-0 h-full w-full object-cover" style={{ clipPath: `inset(0 ${100 - position}% 0 0)` }} />
      <div className="pointer-events-none absolute inset-y-0 w-0.5 bg-white shadow-lg" style={{ left: `${position}%` }}>
        <span className="absolute left-1/2 top-1/2 grid h-11 w-11 -translate-x-1/2 -translate-y-1/2 place-items-center rounded-full bg-white text-blue-800 shadow-lg"><FaArrowsAltH /></span>
      </div>
      <span className="absolute left-4 top-4 rounded-full bg-blue-950/85 px-3 py-1 text-xs font-bold text-white">BEFORE</span>
      <span className="absolute right-4 top-4 rounded-full bg-green-600/90 px-3 py-1 text-xs font-bold text-white">AFTER</span>
      <input aria-label={`Compare before and after: ${comparison.title}`} className="absolute inset-0 z-10 h-full w-full cursor-ew-resize appearance-none bg-transparent opacity-0" type="range" min="0" max="100" value={position} onChange={(event) => setPosition(Number(event.target.value))} />
    </div>
    <div className="flex items-center justify-between px-6 py-4"><h3 className="font-bold text-blue-950">{comparison.title}</h3><span className="text-sm text-slate-500">Drag to compare</span></div>
  </div>;
}
