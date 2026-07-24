import Card from "./Card";

export default function StatCard({
  number,
  label
}) {
  return (
    <Card className="text-center">

      <h3 className="text-5xl font-bold text-blue-700">
        {number}
      </h3>

      <p className="mt-4 text-gray-600">
        {label}
      </p>

    </Card>
  );
}
