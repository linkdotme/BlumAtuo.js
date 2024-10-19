@echo off

:: 1. چک کردن نصب Node.js
where node >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo Node.js is not installed. Please install Node.js from https://nodejs.org/
    pause
    goto end
)

:: 2. چک کردن نصب npm
where npm >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
    echo npm is not installed. Please install npm with Node.js.
    pause
    goto end
)

echo Node.js and npm are installed.

:: 3. چک کردن نصب پکیج‌های node_modules
IF NOT EXIST "node_modules" (
    echo node_modules folder not found. Installing packages...
    npm install
    IF %ERRORLEVEL% NEQ 0 (
        echo Failed to install npm packages. Please check the errors.
        pause
        goto end
    )
) ELSE (
    echo node_modules already exists. Skipping installation.
)

:: 4. اجرای پروژه
echo Starting the project...
npm start
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to start the project.
    pause
    goto end
)

:end
pause
