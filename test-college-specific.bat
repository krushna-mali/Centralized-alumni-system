@echo off
echo ========================================
echo Testing College Dashboard Specifically
echo ========================================
echo.

echo Testing college login API...
powershell -Command "try { $body = @{username='collage'; password='collage@123'} | ConvertTo-Json; $response = Invoke-RestMethod -Uri 'http://localhost:3000/api/auth/login' -Method POST -Body $body -ContentType 'application/json'; Write-Host 'College Login API: OK - Role:' $response.role -ForegroundColor Green } catch { Write-Host 'College Login API: ERROR' -ForegroundColor Red; Write-Host $_.Exception.Message -ForegroundColor Red }"

echo.
echo Testing college dashboard access...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/dashboard/collage' -UseBasicParsing -TimeoutSec 10; Write-Host 'College Dashboard: OK - Status:' $response.StatusCode -ForegroundColor Green } catch { Write-Host 'College Dashboard: ERROR' -ForegroundColor Red; Write-Host $_.Exception.Message -ForegroundColor Red }"

echo.
echo Testing college analytics API...
powershell -Command "try { $response = Invoke-WebRequest -Uri 'http://localhost:3000/api/admin/analytics' -UseBasicParsing -TimeoutSec 5; Write-Host 'Analytics API: OK - Status:' $response.StatusCode -ForegroundColor Green } catch { Write-Host 'Analytics API: ERROR' -ForegroundColor Red; Write-Host $_.Exception.Message -ForegroundColor Red }"

echo.
echo ========================================
echo College Test Complete
echo ========================================
echo.
echo Try logging in with: collage / collage@123
echo.
pause
