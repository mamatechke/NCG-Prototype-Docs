# GitHub Pages Deployment Guide

## 🚀 Quick Start

The visual documentation repository is ready for GitHub Pages deployment. Follow these steps:

### 1. Create GitHub Repository
```bash
# Create a new repository on GitHub named "Prototype_docs"
# Or push to an existing organization repository
```

### 2. Add Remote and Push
```bash
cd /home/tich/Documents/WorldBank/Prototype_docs

# Add your GitHub repository as remote
git remote add origin https://github.com/[username]/Prototype_docs.git

# Push to GitHub
git push -u origin gh-pages
```

### 3. Enable GitHub Pages
1. Go to your repository on GitHub
2. Click **Settings** → **Pages**
3. Under "Build and deployment", select:
   - **Source**: Deploy from a branch
   - **Branch**: `gh-pages`
   - **Folder**: `/ (root)`
4. Click **Save**

### 4. Access Your Documentation
Your documentation will be available at:
`https://[username].github.io/Prototype_docs/`

## 📁 Repository Structure

```
Prototype_docs/
├── index.html                 # Main visual documentation
├── api-docs.html             # API documentation
├── README.md                 # Repository information
├── capture_screenshots.sh    # Screenshot automation script
└── screenshots/              # All captured screenshots
    ├── user-facing/         # Citizen interface (6 screenshots)
    ├── admin-dashboard/     # Admin interface (4 screenshots)
    └── mobile/              # Mobile views (3 screenshots)
```

## 🔄 Updating Documentation

### After Application Changes
1. **Update Screenshots**:
   ```bash
   # Ensure Rails app is running
   cd /home/tich/Documents/WorldBank/Prototype
   rails server -p 3000 -d
   
   # Capture new screenshots
   cd ../Prototype_docs
   ./capture_screenshots.sh
   ```

2. **Commit and Deploy**:
   ```bash
   git add .
   git commit -m "Update screenshots - $(date +%Y-%m-%d)"
   git push origin gh-pages
   ```

### Manual Updates
- Edit `index.html` for content changes
- Edit `api-docs.html` for API documentation updates
- Add new screenshots to appropriate folders
- Update the README as needed

## 🎨 Customization Options

### Add Custom CSS
Add a `<style>` block to the `<head>` section of `index.html`:
```html
<style>
  .custom-style {
    /* Your custom styles */
  }
</style>
```

### Add New Sections
1. Add new section in HTML:
```html
<section id="new-section" class="py-16">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <h2 class="text-2xl font-bold text-gray-900 mb-8">New Section</h2>
    <!-- Content here -->
  </div>
</section>
```

2. Update navigation:
```html
<a href="#new-section" class="text-gray-700 hover:text-primary-600">New Section</a>
```

### Brand Customization
Update the Tailwind configuration in the `<script>` tag:
```javascript
tailwind.config = {
  theme: {
    extend: {
      colors: {
        primary: {
          50: '#your-color-50',
          500: '#your-color-500',
          600: '#your-color-600',
          700: '#your-color-700',
        }
      }
    }
  }
}
```

## 📊 Analytics Integration

### Google Analytics
Add to `<head>` section of `index.html`:
```html
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

### Plausible Analytics
Add to `<head>` section:
```html
<script defer data-domain="your-domain.com" src="https://plausible.io/js/script.js"></script>
```

## 🔒 Security Considerations

- All content is static and served from GitHub Pages
- No server-side processing required
- Screenshots are static images
- No sensitive data should be included in screenshots
- Ensure admin interface screenshots don't display sensitive information

## 🚨 Troubleshooting

### Common Issues

1. **404 Errors**
   - Ensure you're pushing to the `gh-pages` branch
   - Check GitHub Pages settings in repository

2. **Images Not Loading**
   - Verify screenshot paths are correct
   - Check file case sensitivity
   - Ensure images are committed to the repository

3. **Styling Issues**
   - Tailwind CSS is loaded via CDN - no build step required
   - Check browser console for CSS errors
   - Verify HTML structure is correct

### Debug Mode
Add this to `index.html` for debugging:
```html
<script>
  // Debug mode - logs navigation clicks
  document.addEventListener('click', function(e) {
    if (e.target.tagName === 'A') {
      console.log('Navigation clicked:', e.target.href);
    }
  });
</script>
```

## 📈 Performance Optimization

### Image Optimization
Screenshots are automatically compressed by Chrome headless. For additional optimization:
```bash
# Install imagemagick if needed
sudo apt-get install imagemagick

# Optimize all images
find screenshots/ -name "*.png" -exec convert {} -quality 85 -strip {} \;
```

### Lazy Loading
Images are already configured with lazy loading using the `loading="lazy"` attribute.

## 🤝 Contributing

For team collaboration:
1. Fork the repository
2. Create feature branches
3. Submit pull requests
4. Use descriptive commit messages
5. Update documentation with significant changes

---

**Deployment Status**: ✅ Ready for GitHub Pages  
**Last Updated**: $(date)  
**Repository**: /home/tich/Documents/WorldBank/Prototype_docs