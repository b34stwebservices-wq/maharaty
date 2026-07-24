export default function SectionTitle({
  title,
  subtitle
}) {
  return (
    <div className="text-center mb-16">

      <h2 className="text-4xl lg:text-5xl font-bold text-blue-800">
        {title}
      </h2>

      {subtitle && (
        <p className="text-gray-600 mt-4 max-w-2xl mx-auto">
          {subtitle}
        </p>
      )}

    </div>
  );
}
