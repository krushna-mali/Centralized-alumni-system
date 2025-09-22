@echo off
echo ========================================
echo Testing Authentication Fix
echo ========================================
echo.

echo Testing login API...
powershell -Command "try { $body = @{username='admin'; password='admin@123'} | ConvertTo-Json; $response = Invoke-RestMethod -Uri 'http://localhost:3000/api/auth/login' -Method POST -Body $body -ContentType 'application/json'; Write-Host 'Login API: OK - Role:' $response.role -ForegroundColor Green } catch { Write-Host 'Login API: ERROR' -ForegroundColor Red }"

echo.
echo Testing dashboard pages...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/dashboard/admin' -UseBasicParsing -TimeoutSec 5; Write-Host 'Admin dashboard: OK' -ForegroundColor Green } catch { Write-Host 'Admin dashboard: ERROR' -ForegroundColor Red }"

powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/dashboard/collage' -UseBasicParsing -TimeoutSec 5; Write-Host 'College dashboard: OK' -ForegroundColor Green } catch { Write-Host 'College dashboard: ERROR' -ForegroundColor Red }"

powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/alumni' -UseBasicParsing -TimeoutSec 5; Write-Host 'Alumni directory: OK' -ForegroundColor Green } catch { Write-Host 'Alumni directory: ERROR' -ForegroundColor Red }"

powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/events' -UseBasicParsing -TimeoutSec 5; Write-Host 'Events page: OK' -ForegroundColor Green } catch { Write-Host 'Events page: ERROR' -ForegroundColor Red }"

echo.
echo ========================================
echo Authentication Fix Test Complete
echo ========================================
echo.
echo Now try logging in with:
echo Admin: admin / admin@123
echo College: collage / collage@123
echo.
pause
