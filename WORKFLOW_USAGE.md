# 🚀 Enhanced GitHub Action Usage Guide

Your GitHub Action now supports **repository management** with input parameters! No more manual editing of the README.md file.

## 🎯 How to Use

### 1. **Add a New Repository**

1. Go to your repository: `https://github.com/elsonwu/elsonwu.github.io`
2. Click **Actions** tab
3. Find **"Sync Repository Information"** workflow
4. Click **"Run workflow"**
5. Fill in the parameters:
   - **Action**: `add-repo`
   - **Repository**: `elsonwu/your-new-repo` (format: owner/repo)
   - **Sync after change**: ✅ (default: true)
6. Click **"Run workflow"**

The action will:
- ✅ Add your repository to the list
- 🔄 Fetch repository information from GitHub API
- 📝 Update the README with project details
- 💾 Commit and push the changes automatically

### 2. **Remove a Repository**

Same steps as above, but:
- **Action**: `remove-repo`
- **Repository**: `elsonwu/repo-to-remove`

### 3. **Just Sync (Update existing projects)**

- **Action**: `sync` (default)
- Leave **Repository** field empty
- This updates all existing repositories with latest info

## 📋 What Each Action Does

| Action | Description | Repository Field | Auto-Sync |
|--------|-------------|------------------|-----------|
| `sync` | Update existing repositories with latest info | Not used | Always |
| `add-repo` | Add new repository to the list | Required | Optional |
| `remove-repo` | Remove repository from the list | Required | Optional |

## 🎛️ Parameters Explained

### **Action** (Required)
Choose what you want to do:
- `sync`: Update existing repositories
- `add-repo`: Add a new repository
- `remove-repo`: Remove a repository

### **Repository** (Optional)
- Format: `owner/repository-name`
- Examples: `elsonwu/jing-lang`, `elsonwu/my-new-project`
- Required only for `add-repo` and `remove-repo` actions

### **Sync after change** (Optional, default: true)
- When adding/removing repositories, should we also update the project information?
- `true`: Update the repository list AND sync project info
- `false`: Only update the repository list, don't fetch project details

## 🤖 Automatic Behavior

The workflow still runs automatically:
- **Daily at 2 AM UTC** (updates all existing projects)
- **When you push changes** to the workflow file

## 📱 Example Workflows

### **Adding Your New Python Project**
```
Action: add-repo
Repository: elsonwu/my-python-tool
Sync after change: ✅
```

Result: Adds the repo, fetches description, shows Python badge, includes stats.

### **Quick Repository List Update**
```
Action: add-repo
Repository: elsonwu/experimental-project
Sync after change: ❌
```

Result: Just adds to the list, no API calls (faster execution).

### **Spring Cleaning**
```
Action: remove-repo
Repository: elsonwu/old-project
Sync after change: ✅
```

Result: Removes the project and refreshes all remaining projects.

## 🎉 Benefits

- ✅ **No manual editing** of README.md required
- ✅ **One-click repository management** from GitHub UI
- ✅ **Automatic syncing** with GitHub API
- ✅ **Smart commit messages** based on the action
- ✅ **Flexible workflow** - sync with or without API calls

## 🔧 Advanced Usage

You can also trigger the workflow programmatically using GitHub CLI:

```bash
# Add a repository
gh workflow run "sync-repos.yml" \
  --field action=add-repo \
  --field repository=elsonwu/new-project \
  --field sync_after_change=true

# Remove a repository  
gh workflow run "sync-repos.yml" \
  --field action=remove-repo \
  --field repository=elsonwu/old-project

# Just sync existing repositories
gh workflow run "sync-repos.yml" \
  --field action=sync
```

---

🎊 **Your GitHub profile is now fully automated!** Just use the Actions tab to manage your featured projects.
