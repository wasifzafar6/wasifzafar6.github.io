# How to Run the Jekyll Site Locally

## Prerequisites Installation (Windows)

### Step 1: Install Ruby
1. Download RubyInstaller from: https://rubyinstaller.org/downloads/
2. Download the **Ruby+Devkit** version (recommended: Ruby 3.1.x or 3.2.x)
3. Run the installer and check "Add Ruby executables to your PATH"
4. At the end of installation, it will open a command prompt - run the command it suggests (usually `ridk install`)
5. Restart your terminal/PowerShell after installation

### Step 2: Verify Installation
Open a new PowerShell/Command Prompt and run:
```powershell
ruby --version
gem --version
```

### Step 3: Install Jekyll and Bundler
```powershell
gem install jekyll bundler
```

### Step 4: Install Site Dependencies
Navigate to the project directory and run:
```powershell
bundle install
```

## Running the Site Locally

### Option 1: Using the provided script
```powershell
.\run.sh
```
(Note: On Windows, you may need to use Git Bash or WSL to run .sh files)

### Option 2: Manual commands
```powershell
bundle install
bundle exec jekyll serve
```

### Option 3: Direct Jekyll command (if bundle is not needed)
```powershell
jekyll serve
```

## Access the Site
Once running, you'll see output like:
```
Server address: http://127.0.0.1:4000/
Server running... press ctrl-c to stop.
```

Open your browser and go to: **http://localhost:4000** or **http://127.0.0.1:4000**

## Troubleshooting

### If you get "bundle: command not found"
- Make sure Ruby is installed and added to PATH
- Restart your terminal after installation

### If you get Jekyll errors
- Try: `bundle update`
- Check that all dependencies are installed: `bundle install`

### If port 4000 is already in use
- Use a different port: `bundle exec jekyll serve --port 4001`

### Alternative: Use Docker (if you have Docker installed)
```powershell
docker run --rm -it -v ${PWD}:/srv/jekyll -p 4000:4000 jekyll/jekyll:latest jekyll serve
```

