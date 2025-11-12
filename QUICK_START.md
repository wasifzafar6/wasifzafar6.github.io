# Quick Start Guide

## First Time Setup (One-time only)

### 1. Install Ruby
- Download from: https://rubyinstaller.org/downloads/
- Choose **Ruby+Devkit** (latest stable version)
- Install and check "Add Ruby to PATH"
- When installer finishes, run the command it suggests (usually `ridk install`)
- **Restart your terminal/PowerShell**

### 2. Install Jekyll
Open PowerShell and run:
```powershell
gem install jekyll bundler
```

## Running the Site

### Method 1: Use PowerShell Script (Recommended)
```powershell
.\run.ps1
```

### Method 2: Manual Commands
```powershell
bundle install
bundle exec jekyll serve
```

### Method 3: If bundle is not needed
```powershell
jekyll serve
```

## View Your Site
Open your browser and go to: **http://localhost:4000**

The site will automatically reload when you make changes to files.

## Stop the Server
Press `Ctrl+C` in the terminal

## Troubleshooting

**"ruby: command not found"**
- Ruby is not installed or not in PATH
- Reinstall Ruby and make sure to check "Add Ruby to PATH"
- Restart your terminal

**"bundle: command not found"**
- Run: `gem install bundler`
- Restart terminal

**Port 4000 already in use**
- Use different port: `bundle exec jekyll serve --port 4001`

