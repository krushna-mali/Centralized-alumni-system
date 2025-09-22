@echo off
echo.
echo ========================================
echo   PUNJAB GOVERNMENT ALUMNI SYSTEM
echo        DEPLOYMENT SCRIPT
echo ========================================
echo.

echo [1/5] Checking project status...
if not exist "package.json" (
    echo ERROR: package.json not found!
    pause
    exit /b 1
)

echo [2/5] Installing dependencies...
call npm install
if errorlevel 1 (
    echo ERROR: Failed to install dependencies!
    pause
    exit /b 1
)

echo [3/5] Running build test...
call npm run build
if errorlevel 1 (
    echo ERROR: Build failed! Please fix errors before deployment.
    pause
    exit /b 1
)

echo [4/5] Checking for git repository...
if not exist ".git" (
    echo Initializing git repository...
    git init
    git add .
    git commit -m "Initial commit - Punjab Government Alumni System"
)

echo [5/5] Deployment ready!
echo.
echo ========================================
echo          DEPLOYMENT OPTIONS
echo ========================================
echo.
echo 1. VERCEL (Recommended)
echo    - Visit: https://vercel.com
echo    - Sign up with GitHub
echo    - Import this repository
echo    - Deploy automatically
echo.
echo 2. NETLIFY
echo    - Visit: https://netlify.com
echo    - Drag 'out' folder after build
echo    - Get instant live URL
echo.
echo 3. GITHUB PAGES
echo    - Push to GitHub
echo    - Enable Pages in settings
echo    - Use gh-pages branch
echo.
echo ========================================
echo.
echo Your project is ready for deployment!
echo.
echo Next steps:
echo 1. Push to GitHub: git remote add origin YOUR_REPO_URL
echo 2. git push -u origin main
echo 3. Deploy on Vercel/Netlify
echo.
echo For detailed instructions, see DEPLOYMENT_GUIDE.md
echo.
pause
