@echo off
echo ========================================
echo FINAL COLLEGE DASHBOARD TEST
echo ========================================
echo.

echo Testing college authentication...
powershell -Command "try { $body = @{username='collage'; password='collage@123'} | ConvertTo-Json; $response = Invoke-RestMethod -Uri 'http://localhost:3000/api/auth/login' -Method POST -Body $body -ContentType 'application/json'; Write-Host 'College Login: ✅ OK - Role:' $response.role -ForegroundColor Green } catch { Write-Host 'College Login: ❌ ERROR' -ForegroundColor Red }"

echo.
echo Testing college dashboard...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/dashboard/collage' -UseBasicParsing -TimeoutSec 5; Write-Host 'College Dashboard: ✅ OK - Status:' $response.StatusCode -ForegroundColor Green } catch { Write-Host 'College Dashboard: ❌ ERROR' -ForegroundColor Red }"

echo.
echo Testing college navigation pages...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/users' -UseBasicParsing -TimeoutSec 5; Write-Host 'Admin Users: ✅ OK' -ForegroundColor Green } catch { Write-Host 'Admin Users: ❌ ERROR' -ForegroundColor Red }"

powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/opportunities' -UseBasicParsing -TimeoutSec 5; Write-Host 'Admin Opportunities: ✅ OK' -ForegroundColor Green } catch { Write-Host 'Admin Opportunities: ❌ ERROR' -ForegroundColor Red }"

powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/events' -UseBasicParsing -TimeoutSec 5; Write-Host 'Admin Events: ✅ OK' -ForegroundColor Green } catch { Write-Host 'Admin Events: ❌ ERROR' -ForegroundColor Red }"

powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/audit' -UseBasicParsing -TimeoutSec 5; Write-Host 'Admin Audit: ✅ OK' -ForegroundColor Green } catch { Write-Host 'Admin Audit: ❌ ERROR' -ForegroundColor Red }"

echo.
echo ========================================
echo COLLEGE DASHBOARD TEST COMPLETE
echo ========================================
echo.
echo ✅ All tests should show OK for full functionality
echo.
echo To test manually:
echo 1. Go to: http://localhost:3000/login
echo 2. Login with: collage / collage@123
echo 3. Should redirect to college dashboard
echo 4. Test navigation links in the navbar
echo.
echo College Dashboard Features:
echo - Institution Analytics
echo - Fundraising Campaigns
echo - User Management Access
echo - Event Management Access
echo - Audit Logs Access
echo.
pause
