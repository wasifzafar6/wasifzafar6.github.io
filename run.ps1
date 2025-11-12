# PowerShell script to run Jekyll site locally
# Make sure Ruby and Jekyll are installed first

Write-Host "Installing/updating dependencies..." -ForegroundColor Yellow
bundle install

if ($LASTEXITCODE -eq 0) {
    Write-Host "`nStarting Jekyll server..." -ForegroundColor Green
    Write-Host "Site will be available at: http://localhost:4000" -ForegroundColor Cyan
    Write-Host "Press Ctrl+C to stop the server`n" -ForegroundColor Yellow
    bundle exec jekyll serve
} else {
    Write-Host "`nError: bundle install failed. Make sure Ruby and Bundler are installed." -ForegroundColor Red
    Write-Host "See SETUP_INSTRUCTIONS.md for installation steps." -ForegroundColor Yellow
}

