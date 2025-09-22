@echo off
echo ========================================
echo Checking Alumni Platform for Errors
echo ========================================
echo.

echo Testing server response...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000' -UseBasicParsing -TimeoutSec 5; Write-Host 'Main page: OK' -ForegroundColor Green } catch { Write-Host 'Main page: ERROR' -ForegroundColor Red }"

echo Testing login page...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/login' -UseBasicParsing -TimeoutSec 5; Write-Host 'Login page: OK' -ForegroundColor Green } catch { Write-Host 'Login page: ERROR' -ForegroundColor Red }"

echo Testing dashboard redirect...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/dashboard' -UseBasicParsing -TimeoutSec 5; Write-Host 'Dashboard redirect: OK' -ForegroundColor Green } catch { Write-Host 'Dashboard redirect: ERROR' -ForegroundColor Red }"

echo Testing alumni directory...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/alumni' -UseBasicParsing -TimeoutSec 5; Write-Host 'Alumni directory: OK' -ForegroundColor Green } catch { Write-Host 'Alumni directory: ERROR' -ForegroundColor Red }"

echo Testing admin users page...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/users' -UseBasicParsing -TimeoutSec 5; Write-Host 'Admin users: OK' -ForegroundColor Green } catch { Write-Host 'Admin users: ERROR' -ForegroundColor Red }"

echo.
echo ========================================
echo Error Check Complete
echo ========================================
echo.
echo If any pages show ERROR, there are issues to fix.
echo All pages should show OK for proper functionality.
echo.
pause
