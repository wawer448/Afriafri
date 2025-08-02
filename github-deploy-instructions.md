# GitHub Deployment Instructions

## Step 1: Create a Personal Access Token (PAT)

1. Go to https://github.com/settings/tokens
2. Click "Generate new token" → "Generate new token (classic)"
3. Give it a name (e.g., "ecospatial-deploy")
4. Select scopes: `repo` (all repo permissions)
5. Click "Generate token"
6. **COPY THE TOKEN NOW** (you won't see it again!)

## Step 2: Push to GitHub

Use one of these methods:

### Method A: Using Token in URL (Quick method)
```bash
cd /Users/misocho/Playground/waweru/ecospatial-website
git remote remove origin
git remote add origin https://YOUR_TOKEN@github.com/wawer448/Afriafi.git
git push -u origin main
```

### Method B: When Prompted (More secure)
```bash
cd /Users/misocho/Playground/waweru/ecospatial-website
git remote remove origin
git remote add origin https://github.com/wawer448/Afriafi.git
git push -u origin main
```
When prompted:
- Username: your GitHub username (wawer448)
- Password: paste your Personal Access Token (not your GitHub password)

## Step 3: Enable GitHub Pages

1. Go to https://github.com/wawer448/Afriafi
2. Click "Settings" tab
3. Scroll to "Pages" section
4. Source: Deploy from a branch
5. Branch: main, folder: / (root)
6. Click Save

Your site will be live at: https://wawer448.github.io/Afriafi/

## Alternative: Use GitHub Desktop

1. Download GitHub Desktop: https://desktop.github.com/
2. Sign in with your GitHub account
3. Add existing repository: /Users/misocho/Playground/waweru/ecospatial-website
4. Publish repository to GitHub

## Security Note

After pushing, remove the token from the remote URL:
```bash
git remote set-url origin https://github.com/wawer448/Afriafi.git
```