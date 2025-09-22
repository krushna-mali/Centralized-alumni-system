@echo off
echo ========================================
echo Testing Alumni Management Platform
echo ========================================
echo.

echo Checking if server is running on localhost:3000...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000' -UseBasicParsing -TimeoutSec 5; if ($response.StatusCode -eq 200) { Write-Host 'SUCCESS: Server is responding!' -ForegroundColor Green } else { Write-Host 'ERROR: Server returned status' $response.StatusCode -ForegroundColor Red } } catch { Write-Host 'ERROR: Server is not responding. Make sure npm run dev is running.' -ForegroundColor Red }"

echo.
echo ========================================
echo Test Instructions:
echo ========================================
echo.
echo 1. Open your browser and go to: http://localhost:3000
echo 2. You should see the Alumni Management Platform landing page
echo 3. Click "Access Platform" to go to login
echo 4. Try these demo accounts:
echo.
echo    Alumni:  alumni / alumni@123
echo    Student: students / students@123  
echo    Admin:   admin / admin@123
echo    College: collage / collage@123
echo.
echo 5. Each role should show a different dashboard
echo.
echo ========================================
echo.
pause
