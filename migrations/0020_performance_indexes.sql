-- Migration: Performance optimization indexes
-- Created: 2026-01-17
-- Description: Add indexes for common query patterns

-- Index for location-based queries (sido, sigungu)
CREATE INDEX IF NOT EXISTS idx_facilities_sido_sigungu 
ON facilities(sido, sigungu);

-- Index for facility type filtering
CREATE INDEX IF NOT EXISTS idx_facilities_type 
ON facilities(facility_type);

-- Index for location coordinate queries
CREATE INDEX IF NOT EXISTS idx_facilities_location 
ON facilities(latitude, longitude);

-- Index for phone number lookups
CREATE INDEX IF NOT EXISTS idx_facilities_phone 
ON facilities(phone);

-- Index for facility_details lookups
CREATE INDEX IF NOT EXISTS idx_facility_details_facility_id 
ON facility_details(facility_id);

-- Index for facility_reviews lookups (if table exists)
CREATE INDEX IF NOT EXISTS idx_facility_reviews_facility_id 
ON facility_reviews(facility_id);
