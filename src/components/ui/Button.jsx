export default function Button({
  children,
  variant = "primary",
  className = "",
  ...props
}) {

  const variants = {
    primary:
      "bg-blue-700 hover:bg-blue-800 text-white",

    secondary:
      "bg-green-600 hover:bg-green-700 text-white",

    outline:
      "border-2 border-blue-700 text-blue-700 hover:bg-blue-700 hover:text-white",

    white:
      "bg-white text-blue-700 hover:bg-gray-100"
  };

  return (
    <button
      className={`px-6 py-3 rounded-full font-semibold transition-all duration-300 shadow-md hover:scale-105 ${variants[variant]} ${className}`}
      {...props}
    >
      {children}
    </button>
  );
}
