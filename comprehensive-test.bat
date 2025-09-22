@echo off
echo ========================================
echo COMPREHENSIVE ALUMNI PLATFORM TEST
echo ========================================
echo.

echo Testing all main pages...
echo.

echo 1. Main page...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000' -UseBasicParsing -TimeoutSec 5; Write-Host 'Main page: OK' -ForegroundColor Green } catch { Write-Host 'Main page: ERROR' -ForegroundColor Red }"

echo 2. Login page...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/login' -UseBasicParsing -TimeoutSec 5; Write-Host 'Login page: OK' -ForegroundColor Green } catch { Write-Host 'Login page: ERROR' -ForegroundColor Red }"

echo 3. Dashboard redirect...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/dashboard' -UseBasicParsing -TimeoutSec 5; Write-Host 'Dashboard redirect: OK' -ForegroundColor Green } catch { Write-Host 'Dashboard redirect: ERROR' -ForegroundColor Red }"

echo 4. Alumni directory...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/alumni' -UseBasicParsing -TimeoutSec 5; Write-Host 'Alumni directory: OK' -ForegroundColor Green } catch { Write-Host 'Alumni directory: ERROR' -ForegroundColor Red }"

echo 5. Opportunities page...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/opportunities' -UseBasicParsing -TimeoutSec 5; Write-Host 'Opportunities page: OK' -ForegroundColor Green } catch { Write-Host 'Opportunities page: ERROR' -ForegroundColor Red }"

echo 6. Events page...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/events' -UseBasicParsing -TimeoutSec 5; Write-Host 'Events page: OK' -ForegroundColor Green } catch { Write-Host 'Events page: ERROR' -ForegroundColor Red }"

echo 7. Messages page...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/messages' -UseBasicParsing -TimeoutSec 5; Write-Host 'Messages page: OK' -ForegroundColor Green } catch { Write-Host 'Messages page: ERROR' -ForegroundColor Red }"

echo.
echo Testing admin pages...
echo.

echo 8. Admin users...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/users' -UseBasicParsing -TimeoutSec 5; Write-Host 'Admin users: OK' -ForegroundColor Green } catch { Write-Host 'Admin users: ERROR' -ForegroundColor Red }"

echo 9. Admin opportunities...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/opportunities' -UseBasicParsing -TimeoutSec 5; Write-Host 'Admin opportunities: OK' -ForegroundColor Green } catch { Write-Host 'Admin opportunities: ERROR' -ForegroundColor Red }"

echo 10. Admin events...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/events' -UseBasicParsing -TimeoutSec 5; Write-Host 'Admin events: OK' -ForegroundColor Green } catch { Write-Host 'Admin events: ERROR' -ForegroundColor Red }"

echo 11. Admin audit...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/admin/audit' -UseBasicParsing -TimeoutSec 5; Write-Host 'Admin audit: OK' -ForegroundColor Green } catch { Write-Host 'Admin audit: ERROR' -ForegroundColor Red }"

echo.
echo ========================================
echo COMPREHENSIVE TEST COMPLETE
echo ========================================
echo.
echo All pages should show OK for full functionality.
echo If any show ERROR, those need to be fixed.
echo.
echo Demo Accounts:
echo Alumni:  alumni / alumni@123
echo Student: students / students@123
echo Admin:   admin / admin@123
echo College: collage / collage@123
echo.
pause
