#!/bin/bash
# Execute all rating batch files
echo "🚀 Starting ratings import..."
BATCH_DIR="migrations/batches_ratings"
TOTAL=$(ls $BATCH_DIR/batch_*.sql | wc -l)
CURRENT=0

for file in $BATCH_DIR/batch_*.sql; do
  CURRENT=$((CURRENT + 1))
  echo "[$CURRENT/$TOTAL] Processing $(basename $file)..."
  npx wrangler d1 execute carejoa-production --local --file="$file" > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "  ✅ Success"
  else
    echo "  ⚠️  Some errors (continuing...)"
  fi
done

echo ""
echo "✅ Import complete!"
echo "📊 Checking results..."
npx wrangler d1 execute carejoa-production --local --command="SELECT COUNT(*) as total_facilities FROM facilities WHERE admin_sym IS NOT NULL"
npx wrangler d1 execute carejoa-production --local --command="SELECT COUNT(*) as total_ratings FROM facility_public_data"
npx wrangler d1 execute carejoa-production --local --command="SELECT grade_value, COUNT(*) as count FROM facility_public_data GROUP BY grade_value ORDER BY grade_value"
