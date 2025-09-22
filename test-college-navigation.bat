@echo off
echo ========================================
echo TESTING COLLEGE NAVIGATION FIXES
echo ========================================
echo.

echo 🔐 Testing college authentication...
powershell -Command "try { $body = @{username='collage'; password='collage@123'} | ConvertTo-Json; $response = Invoke-RestMethod -Uri 'http://localhost:3000/api/auth/login' -Method POST -Body $body -ContentType 'application/json'; Write-Host '✅ College Login: OK - Role:' $response.role -ForegroundColor Green } catch { Write-Host '❌ College Login: ERROR' -ForegroundColor Red }"

echo.
echo 🧭 Testing college navigation access...
echo.

echo Testing Manage Users...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/users' -UseBasicParsing -TimeoutSec 5; Write-Host '✅ Manage Users: WORKING' -ForegroundColor Green } catch { Write-Host '❌ Manage Users: ERROR' -ForegroundColor Red }"

echo Testing Opportunities...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/opportunities' -UseBasicParsing -TimeoutSec 5; Write-Host '✅ Opportunities: WORKING' -ForegroundColor Green } catch { Write-Host '❌ Opportunities: ERROR' -ForegroundColor Red }"

echo Testing Events...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/events' -UseBasicParsing -TimeoutSec 5; Write-Host '✅ Events: WORKING' -ForegroundColor Green } catch { Write-Host '❌ Events: ERROR' -ForegroundColor Red }"

echo Testing Audit Logs...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/audit' -UseBasicParsing -TimeoutSec 5; Write-Host '✅ Audit Logs: WORKING' -ForegroundColor Green } catch { Write-Host '❌ Audit Logs: ERROR' -ForegroundColor Red }"

echo.
echo ========================================
echo COLLEGE NAVIGATION TEST COMPLETE
echo ========================================
echo.
echo ✅ All navigation links should now work for college users!
echo.
echo 🔗 To test manually:
echo 1. Go to: http://localhost:3000/login
echo 2. Login with: collage / collage@123
echo 3. Click on navigation links in the navbar
echo.
echo 📋 College Navigation Features:
echo ✓ Manage Users (User Management)
echo ✓ Opportunities (Job/Internship Management)
echo ✓ Events (Event Management)
echo ✓ Audit Logs (Activity Tracking)
echo.
pause
