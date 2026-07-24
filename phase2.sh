#!/bin/bash

set -e

echo "======================================"
echo "  Maharaty Clinic - Phase 2A UI"
echo "======================================"

mkdir -p src/components/ui

#####################################
# Button
#####################################

cat > src/components/ui/Button.jsx <<'EOF'
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
EOF

#####################################
# Container
#####################################

cat > src/components/ui/Container.jsx <<'EOF'
export default function Container({ children, className = "" }) {
  return (
    <div className={`max-w-7xl mx-auto px-6 lg:px-10 ${className}`}>
      {children}
    </div>
  );
}
EOF

#####################################
# Card
#####################################

cat > src/components/ui/Card.jsx <<'EOF'
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
EOF

#####################################
# Section Title
#####################################

cat > src/components/ui/SectionTitle.jsx <<'EOF'
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
EOF

#####################################
# Badge
#####################################

cat > src/components/ui/Badge.jsx <<'EOF'
export default function Badge({ children }) {
  return (
    <span className="inline-block px-4 py-1 rounded-full bg-green-100 text-green-700 font-semibold text-sm">
      {children}
    </span>
  );
}
EOF

#####################################
# StatCard
#####################################

cat > src/components/ui/StatCard.jsx <<'EOF'
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
EOF

#####################################
# Index Export
#####################################

cat > src/components/ui/index.js <<'EOF'
export { default as Button } from "./Button";
export { default as Card } from "./Card";
export { default as Container } from "./Container";
export { default as SectionTitle } from "./SectionTitle";
export { default as Badge } from "./Badge";
export { default as StatCard } from "./StatCard";
EOF

echo ""
echo "======================================"
echo " Phase 2A Complete"
echo "======================================"
echo ""
echo "Created:"
echo ""
echo "src/components/ui/"
echo "  Button.jsx"
echo "  Card.jsx"
echo "  Container.jsx"
echo "  SectionTitle.jsx"
echo "  Badge.jsx"
echo "  StatCard.jsx"
echo "  index.js"
echo ""