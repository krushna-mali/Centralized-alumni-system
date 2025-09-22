@echo off
echo ========================================
echo Testing Admin and College Dashboards
echo ========================================
echo.

echo Testing admin dashboard...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/dashboard/admin' -UseBasicParsing -TimeoutSec 5; Write-Host 'Admin dashboard: OK' -ForegroundColor Green } catch { Write-Host 'Admin dashboard: ERROR' -ForegroundColor Red }"

echo Testing college dashboard...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/dashboard/collage' -UseBasicParsing -TimeoutSec 5; Write-Host 'College dashboard: OK' -ForegroundColor Green } catch { Write-Host 'College dashboard: ERROR' -ForegroundColor Red }"

echo.
echo ========================================
echo Quick Fix Test Complete
echo ========================================
echo.
echo Login with these accounts to test:
echo Admin:   admin / admin@123
echo College: collage / collage@123
echo.
pause
