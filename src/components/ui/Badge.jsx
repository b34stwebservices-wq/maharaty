export default function Badge({ children }) {
  return (
    <span className="inline-block px-4 py-1 rounded-full bg-green-100 text-green-700 font-semibold text-sm">
      {children}
    </span>
  );
}
