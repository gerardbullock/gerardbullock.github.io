Gerard Bullock
gbullock@thesitegenius.com | @thesitegenius.com
# 🔗 Guide: Connecting Your Portfolio to GitHub

## ✅ What I Just Did

Your portfolio cards now have GitHub repository links! Here's what changed:

### **Current Setup**
- **Project cards** → Click to open GitHub repository (new tab)
- **App cards** → Click to open the app (new tab)

### **GitHub URLs Added (Update These!)**

1. **Sales Performance Dashboard**
   - Current: `https://github.com/gerardbullock/sales-dashboard`
   - Update to your actual repo

2. **Customer Churn Prediction**
   - Current: `https://github.com/gerardbullock/customer-churn-prediction`
   - Update to your actual repo

3. **Marketing Campaign ROI Analysis**
   - Current: `https://github.com/gerardbullock/marketing-roi-analysis`
   - Update to your actual repo

4. **Financial Performance Tracker**
   - Current: `https://github.com/gerardbullock/financial-performance-tracker`
   - Update to your actual repo

5. **Inventory Optimization Model**
   - Current: `https://github.com/gerardbullock/inventory-optimization`
   - Update to your actual repo

6. **HR Analytics & Workforce Planning**
   - Current: `https://github.com/gerardbullock/hr-analytics`
   - Update to your actual repo

7. **Interactive Analytics Dashboard Design**
   - Current: `https://github.com/gerardbullock/analytics-dashboard-design`
   - Update to your actual repo

---

## 📝 Step-by-Step: Update GitHub Links

### **Method 1: Edit HTML File Directly**

1. Open `portfolio-improved.html` in a text editor
2. Search for `data-github-url="https://github.com/gerardbullock/`
3. Replace each URL with your actual GitHub repository URL
4. Save the file

**Example:**
```html
<!-- Before -->
<article class="card" data-github-url="https://github.com/gerardbullock/sales-dashboard">

<!-- After (with your actual repo) -->
<article class="card" data-github-url="https://github.com/YOUR-USERNAME/your-actual-repo-name">
```

### **Method 2: Use Find & Replace**

1. Open `portfolio-improved.html`
2. Find: `gerardbullock`
3. Replace with: `your-actual-github-username`
4. Then update individual repo names as needed

---

## 🚀 How to Create GitHub Repositories

### **Option A: Create Repos for Existing Projects**

If you already have project code:

1. Go to https://github.com/new
2. Create a new repository (e.g., "sales-dashboard")
3. Add a README.md describing the project
4. Push your existing code:
```bash
cd your-project-folder
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/REPO-NAME.git
git push -u origin main
```

### **Option B: Create Placeholder Repos**

If you don't have the projects yet:

1. Create the repository on GitHub
2. Add a README with project description
3. Add a "Coming Soon" or "Work in Progress" badge
4. Update your portfolio when projects are ready

**Example README.md:**
```markdown
# Sales Performance Dashboard

📊 Interactive Tableau dashboard tracking KPIs, revenue trends, and regional performance.

## Features
- Real-time KPI monitoring
- Regional performance analysis
- Drill-down capabilities
- Executive-level insights

## Tech Stack
- Tableau
- Power BI
- SQL

## Status
🚧 Work in Progress - Full project documentation coming soon!

## Preview
[View Live Demo](your-demo-link-here)
```

---

## 🎯 Best Practices for GitHub Projects

### **1. Professional README**
Each repo should have:
- Project title and description
- Screenshots/GIFs
- Features list
- Technologies used
- Installation instructions
- Usage examples
- Results/impact metrics

### **2. Organize Your Code**
```
your-project/
├── README.md
├── data/              # Sample data
├── notebooks/         # Jupyter notebooks
├── src/               # Source code
├── visualizations/    # Charts, dashboards
├── requirements.txt   # Dependencies
└── LICENSE
```

### **3. Add Visuals**
- Screenshots of dashboards
- Visualizations
- GIFs showing functionality
- Architecture diagrams

### **4. Include Documentation**
- How to run the project
- Data sources
- Methodology
- Results and insights

### **5. Professional Touches**
- Add badges (Python version, license, etc.)
- Include a LICENSE file (MIT is popular)
- Add `.gitignore` for your language
- Pin important repos to your profile

---

## 🔧 Alternative: Link to Live Demos

Instead of GitHub, you can link to:

### **Tableau Public**
```html
data-github-url="https://public.tableau.com/app/profile/your-profile/viz/your-viz"
```

### **Power BI**
```html
data-github-url="https://app.powerbi.com/view?r=YOUR_REPORT_ID"
```

### **Google Colab Notebooks**
```html
data-github-url="https://colab.research.google.com/drive/YOUR_NOTEBOOK_ID"
```

### **Kaggle Notebooks**
```html
data-github-url="https://www.kaggle.com/code/yourusername/your-notebook"
```

---

## 📊 Portfolio Project Ideas

If you need to create projects for your portfolio:

### **Quick Wins (1-2 days each)**

1. **COVID-19 Data Analysis Dashboard**
   - Source: Johns Hopkins University dataset
   - Tools: Python + Tableau
   - Show: Time series analysis, geographic visualization

2. **Customer Segmentation Analysis**
   - Source: Kaggle e-commerce dataset
   - Tools: Python (K-means clustering)
   - Show: RFM analysis, customer personas

3. **Sales Forecasting Model**
   - Source: Walmart sales dataset
   - Tools: Python (Prophet, ARIMA)
   - Show: Predictive accuracy, seasonal patterns

4. **SQL Query Portfolio**
   - Source: Sample database (AdventureWorks)
   - Tools: SQL + documentation
   - Show: Complex queries, optimization

5. **Power BI Financial Dashboard**
   - Source: Sample financial data
   - Tools: Power BI + DAX
   - Show: P&L, variance analysis, KPIs

---

## 🎨 Make Your GitHub Profile Stand Out

### **1. Create a Profile README**
Create a repository named your-username/your-username to add a profile README

### **2. Pin Your Best Repos**
Pin 6 repositories on your GitHub profile (your portfolio projects!)

### **3. Add a Custom Status**
Show you're open to opportunities

### **4. Complete Your Profile**
- Professional photo
- Bio mentioning data analytics
- Location
- Link to your portfolio website
- LinkedIn

---

## ✅ Testing Your Links

After updating the URLs:

1. Open `portfolio-improved.html` in a browser
2. Click each project card
3. Verify it opens the correct GitHub repository
4. Make sure all links work

---

## 🚨 Troubleshooting

**Links not working?**
- Check for typos in URLs
- Ensure repos are public (not private)
- Verify GitHub username is correct

**Want different behavior?**
- Keep modal preview AND add GitHub button
- Add both "View Code" and "Live Demo" links
- Show project details in modal, GitHub link as button

Let me know if you want me to implement any of these alternatives!

---

## 📞 Need Help?

Common requests:
- "Add a 'View Code' button to each card"
- "Show both modal AND GitHub link"
- "Link to Tableau Public instead"
- "Add LinkedIn project links"
- "Create sample GitHub repos"

Just ask and I'll help you implement it!
