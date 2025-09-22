@echo off
echo ========================================
echo Alumni Management Platform Setup
echo ========================================
echo.

echo Checking if Node.js is installed...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed!
    echo.
    echo Please install Node.js from: https://nodejs.org/
    echo Download the LTS version and run the installer.
    echo.
    pause
    exit /b 1
)

echo Node.js is installed! Proceeding with setup...
echo.

echo Step 1: Installing dependencies...
call npm install
if %errorlevel% neq 0 (
    echo ERROR: Failed to install dependencies!
    pause
    exit /b 1
)

echo.
echo Step 2: Seeding database with sample data...
call npm run seed
if %errorlevel% neq 0 (
    echo ERROR: Failed to seed database!
    pause
    exit /b 1
)

echo.
echo Step 3: Starting development server...
echo.
echo ========================================
echo Platform will be available at:
echo http://localhost:3000
echo ========================================
echo.
echo Demo Accounts:
echo Alumni:  alumni / alumni@123
echo Student: students / students@123
echo Admin:   admin / admin@123
echo College: collage / collage@123
echo.
echo Press Ctrl+C to stop the server
echo ========================================
echo.

call npm run dev
