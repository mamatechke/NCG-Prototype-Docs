# NairobiTalks Visual Documentation

This repository contains the visual documentation for the NairobiTalks citizen engagement platform, hosted on GitHub Pages.

## 📖 Overview

This documentation provides a comprehensive visual guide to the NairobiTalks application, including:

- **User Interface Screenshots**: Complete walkthrough of citizen-facing features
- **Admin Dashboard Screenshots**: Administrative interface and management tools
- **Mobile Views**: Responsive design demonstrations
- **Feature Documentation**: Detailed descriptions of platform capabilities

## 🚀 Live Demo

Visit the live documentation at:  
`https://[username].github.io/WorldBank/Prototype_docs/`

## 📁 Repository Structure

```
Prototype_docs/
├── index.html                 # Main documentation page
├── screenshots/               # Captured screenshots
│   ├── user-facing/          # Citizen interface screenshots
│   ├── admin-dashboard/      # Admin interface screenshots
│   └── mobile/               # Mobile view screenshots
├── capture_screenshots.sh    # Automation script for screenshots
├── assets/                   # Static assets (CSS, JS, images)
└── README.md                 # This file
```

## 🛠 Technology Stack

- **HTML5**: Semantic markup for accessibility
- **Tailwind CSS**: Modern utility-first CSS framework
- **Vanilla JavaScript**: Interactive features and smooth scrolling
- **GitHub Pages**: Static site hosting
- **Chrome Headless**: Automated screenshot capture

## 📱 Responsive Design

The documentation is fully responsive and works seamlessly on:
- Desktop computers (1200px+)
- Tablets (768px-1199px)
- Mobile devices (320px-767px)

## 🖼️ Screenshot Categories

### User-Facing Interface
- Landing page and welcome screens
- Authentication (login/sign up)
- Community ideas browsing
- Submission forms
- Planning documents

### Admin Dashboard
- Administrative landing page
- Submissions management
- User management
- Analytics and reporting

### Mobile Views
- Responsive design demonstrations
- Touch interface examples

## 🔧 Updating Screenshots

To update screenshots after application changes:

1. **Start the Rails application**:
   ```bash
   cd /path/to/NairobiTalks
   rails server -p 3000 -d
   ```

2. **Run the screenshot script**:
   ```bash
   cd /path/to/Prototype_docs
   ./capture_screenshots.sh
   ```

3. **Commit and push changes**:
   ```bash
   git add .
   git commit -m "Update screenshots - $(date +%Y-%m-%d)"
   git push origin gh-pages
   ```

## 🎨 Customization

### Adding New Screenshots
1. Capture new screenshots using the automation script
2. Add them to the appropriate category folder
3. Update `index.html` to include the new screenshots

### Modifying Styles
- Edit the Tailwind configuration in the `<script>` tag of `index.html`
- Add custom CSS classes or override existing styles

### Adding New Sections
1. Create a new section in `index.html`
2. Add corresponding navigation link
3. Update the table of contents if needed

## 🔍 SEO and Accessibility

The documentation includes:
- Semantic HTML5 markup
- Proper heading hierarchy
- Alt text for all images
- Keyboard navigation support
- Screen reader friendly structure
- Meta tags for search engines

## 📊 Analytics

To add analytics tracking:

1. Add your tracking script to the `<head>` section of `index.html`
2. Update the configuration with your tracking ID
3. Deploy changes to GitHub Pages

## 🚀 Deployment

This site is automatically deployed using GitHub Pages:

1. **Branch**: `gh-pages`
2. **Source**: Deploy from a branch
3. **Root directory**: `/ (root)`

Changes pushed to the `gh-pages` branch are automatically published.

## 🤝 Contributing

To contribute to this documentation:

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/new-section`
3. Make your changes
4. Commit changes: `git commit -m 'Add new section'`
5. Push to branch: `git push origin feature/new-section`
6. Open a Pull Request

## 📄 License

This documentation is part of the NairobiTalks project and is licensed under the MIT License.

## 🔗 Related Resources

- [Main Application Repository](https://github.com/mamatechafrica/NairobiTalks-NCG)
- [Technical Documentation](../Prototype/doc/NairobiTalks_Client_Documentation.md)
- [API Documentation](./api-docs.html)

---

*Last updated: $(date +%Y-%m-%d)*  
*Maintained by: Nairobi County Government Development Team*