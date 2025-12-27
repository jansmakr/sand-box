-- Migration: Add partner user type
-- Created: 2024-12-27
-- Description: Add partner support tables (users table already has hospital_manager and welfare_manager types)

-- Note: users table already has user_type with 'hospital_manager' and 'welfare_manager'
-- We will use these existing types instead of adding a new 'partner' type

-- Create index for partner lookups (hospital_manager and welfare_manager)
CREATE INDEX IF NOT EXISTS idx_users_hospital_manager ON users(user_type) WHERE user_type = 'hospital_manager';
CREATE INDEX IF NOT EXISTS idx_users_welfare_manager ON users(user_type) WHERE user_type = 'welfare_manager';

-- Create partner_referrals table for tracking patient/resident referrals
CREATE TABLE IF NOT EXISTS partner_referrals (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  partner_id INTEGER NOT NULL,
  patient_name TEXT NOT NULL,
  patient_age INTEGER,
  patient_condition TEXT,
  referral_type TEXT NOT NULL, -- hospital_discharge, welfare_service
  target_facility_type TEXT,
  preferred_region_sido TEXT,
  preferred_region_sigungu TEXT,
  urgency_level TEXT DEFAULT 'normal', -- urgent, normal, low
  special_requirements TEXT,
  status TEXT DEFAULT 'pending', -- pending, matched, completed, cancelled
  matched_facility_id INTEGER,
  matched_at DATETIME,
  completed_at DATETIME,
  notes TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (partner_id) REFERENCES users(id) ON DELETE CASCADE,
  FOREIGN KEY (matched_facility_id) REFERENCES users(id) ON DELETE SET NULL
);

-- Create indexes for partner referrals
CREATE INDEX IF NOT EXISTS idx_partner_referrals_partner ON partner_referrals(partner_id);
CREATE INDEX IF NOT EXISTS idx_partner_referrals_status ON partner_referrals(status);
CREATE INDEX IF NOT EXISTS idx_partner_referrals_matched ON partner_referrals(matched_facility_id);
CREATE INDEX IF NOT EXISTS idx_partner_referrals_created ON partner_referrals(created_at);

-- Insert sample partner data for testing
INSERT INTO users (email, password_hash, name, phone, user_type, organization_name, department, position, is_approved, approval_date, created_at)
VALUES 
  ('hospital@test.com', '1234', '김병원', '02-1234-5678', 'hospital_manager', '서울대병원', '사회복지팀', '사회복지사', 1, datetime('now'), datetime('now')),
  ('welfare@test.com', '1234', '박복지', '02-3456-7890', 'welfare_manager', '강남구청', '복지과', '복지담당', 1, datetime('now'), datetime('now'))
ON CONFLICT(email) DO NOTHING;
