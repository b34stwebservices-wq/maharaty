export default function Card({
  children,
  className = ""
}) {
  return (
    <div
      className={`bg-white rounded-2xl shadow-lg hover:shadow-xl transition-all duration-300 p-8 ${className}`}
    >
      {children}
    </div>
  );
}
