#!/bin/bash

# Screenshot automation script for NairobiTalks documentation
# This script captures screenshots of key pages and interfaces

SCREENSHOT_DIR="/home/tich/Documents/WorldBank/Prototype_docs/screenshots"
BASE_URL="http://localhost:3000"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Create directories for organized screenshots
mkdir -p "$SCREENSHOT_DIR/user-facing"
mkdir -p "$SCREENSHOT_DIR/admin-dashboard"
mkdir -p "$SCREENSHOT_DIR/mobile"

echo "📸 Starting screenshot capture for NairobiTalks documentation..."

# Function to take a screenshot with specific dimensions
take_screenshot() {
    local url="$1"
    local filename="$2"
    local width="${3:-1200}"
    local height="${4:-800}"
    local wait_time="${5:-2}"
    
    echo "Capturing: $filename"
    google-chrome --headless \
                  --disable-gpu \
                  --window-size="${width},${height}" \
                  --screenshot="$SCREENSHOT_DIR/$filename" \
                  --virtual-time-budget=5000 \
                  --run-all-compositor-stages-before-draw \
                  --no-sandbox \
                  --disable-dev-shm-usage \
                  "$url"
    sleep "$wait_time"
}

# Wait for server to be ready
echo "⏳ Waiting for Rails server..."
sleep 3

# 1. Landing Page (User-facing)
take_screenshot "$BASE_URL/" "user-facing/01_landing_page.png" 1200 800

# 2. Community Ideas Page
take_screenshot "$BASE_URL/community_ideas" "user-facing/02_community_ideas.png" 1200 800

# 3. Create a test user session for authenticated pages
# For now, capture the login/signup pages
take_screenshot "$BASE_URL/users/sign_in" "user-facing/03_login_page.png" 1200 800

take_screenshot "$BASE_URL/users/sign_up" "user-facing/04_signup_page.png" 1200 800

# 4. Submission Forms
take_screenshot "$BASE_URL/submissions/new" "user-facing/05_submission_form.png" 1200 800

# 5. Planning Documents
take_screenshot "$BASE_URL/planning_documents" "user-facing/06_planning_documents.png" 1200 800

# 6. Admin Dashboard (might require authentication)
take_screenshot "$BASE_URL/admin" "admin-dashboard/01_admin_landing.png" 1200 800

take_screenshot "$BASE_URL/admin/dashboard" "admin-dashboard/02_dashboard.png" 1200 800

# 7. Admin Submissions Management
take_screenshot "$BASE_URL/admin/submissions" "admin-dashboard/03_submissions_management.png" 1200 800

# 8. Admin Users Management
take_screenshot "$BASE_URL/admin/users" "admin-dashboard/04_users_management.png" 1200 800

# 9. Mobile Views (iPhone dimensions)
take_screenshot "$BASE_URL/" "mobile/01_landing_page_mobile.png" 375 667
take_screenshot "$BASE_URL/community_ideas" "mobile/02_community_ideas_mobile.png" 375 667
take_screenshot "$BASE_URL/admin" "mobile/03_admin_landing_mobile.png" 375 667

echo "✅ Screenshot capture completed!"
echo "📁 Screenshots saved to: $SCREENSHOT_DIR"
echo ""
echo "📊 Summary:"
echo "   User-facing pages: $(ls -1 "$SCREENSHOT_DIR/user-facing" | wc -l)"
echo "   Admin dashboard: $(ls -1 "$SCREENSHOT_DIR/admin-dashboard" | wc -l)"
echo "   Mobile views: $(ls -1 "$SCREENSHOT_DIR/mobile" | wc -l)"
echo ""
echo "🌐 You can now view these in the HTML documentation"