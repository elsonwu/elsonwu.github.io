# Auto-Sync GitHub Profile Setup

This repository now features an **automatic repository synchronization system** that keeps your GitHub profile README up-to-date with the latest information from your projects.

## 🚀 How It Works

The system uses a GitHub Action that:

1. **Fetches Repository Data**: Uses GitHub API to get latest info from your repos
2. **Generates Content**: Creates rich project descriptions with badges, stats, and topics
3. **Updates README**: Replaces the auto-sync section with fresh content
4. **Commits Changes**: Automatically commits and pushes updates

## 📁 File Structure

```
.github/
├── workflows/
│   └── sync-repos.yml      # Main GitHub Action workflow
├── repos-config.json       # Configuration (future use)
scripts/
├── test-sync.sh            # Local testing script
└── README.md              # Scripts documentation
README.md                   # Your profile README with auto-sync markers
```

## 🔧 Adding New Repositories

To add a new repository to auto-sync:

1. Edit the repository list comment in `README.md`:
   ```html
   <!-- Repository list for auto-sync: elsonwu/jing-lang, elsonwu/git-rs, elsonwu/new-repo -->
   ```

2. The GitHub Action will automatically:
   - Detect the new repository
   - Fetch its information
   - Add it to the Featured Projects section
   - Generate appropriate badges and stats

## 🎯 What Gets Auto-Synced

For each repository, the system fetches and displays:

- ✅ **Repository name and link**
- ✅ **Description from GitHub**
- ✅ **Primary programming language with badge**
- ✅ **Star count with social badge**
- ✅ **Statistics** (stars, forks, issues)
- ✅ **Topics/tags as badges**
- ✅ **Language-specific emoji** (🦀 for Rust, 🐍 for Python, etc.)

## ⏱️ Sync Schedule

- **Automatic**: Daily at 2:00 AM UTC
- **Manual**: Can be triggered from GitHub Actions tab
- **On Push**: Runs when the workflow file is updated

## 🧪 Testing Locally

Before pushing changes, you can test the sync locally:

```bash
# Set your GitHub token (create at https://github.com/settings/tokens)
export GITHUB_TOKEN="your_token_here"

# Run the test script
./scripts/test-sync.sh
```

This will show you exactly what data would be fetched and how it would appear.

## 🔧 Customization Options

The system supports various customizations:

### Language Badges
- Automatically detects primary language
- Uses appropriate colors and logos
- Falls back to generic badge if language not recognized

### Emoji Mapping
- 🦀 Rust
- 🐍 Python  
- 🟨 JavaScript
- 🔷 TypeScript
- ☕ Java
- ⚡ C++
- 🐹 Go
- 📦 Generic fallback

### Statistics Display
- Shows stars, forks, and open issues
- Only displays non-zero values
- Formats numbers appropriately

## 🚧 Manual Workflow Trigger

To manually run the sync:

1. Go to your repository on GitHub
2. Click "Actions" tab
3. Find "Sync Repository Information" workflow
4. Click "Run workflow" button
5. Click "Run workflow" to confirm

## 🔍 Troubleshooting

### Common Issues

**Workflow not running:**
- Check that the workflow file is in `.github/workflows/`
- Verify the cron syntax is correct
- Ensure repository has Actions enabled

**API rate limits:**
- The workflow uses authenticated requests (higher limits)
- Runs are spaced out to avoid hitting limits
- Failed runs will be retried automatically

**Repository not found:**
- Check repository names are spelled correctly
- Ensure repositories are public or you have access
- Verify the repository list format in README.md

### Debugging

Check the Actions tab for detailed logs:
- API requests and responses
- Parsing and generation steps  
- Git operations and commits

## 🎨 Example Output

Here's what a synced repository section looks like:

```markdown
### 🦀 [elsonwu/jing-lang](https://github.com/elsonwu/jing-lang)

![Rust](https://img.shields.io/badge/Rust-000000?style=flat&logo=rust&logoColor=white)
[![Stars](https://img.shields.io/github/stars/elsonwu/jing-lang?style=social)](https://github.com/elsonwu/jing-lang)

Jing is a simple, extensible toy programming language implemented in Rust with its own virtual machine.

**Language**: Rust • **Stars**: 5 • **Forks**: 2 • **Issues**: 1

**Topics**: `rust` `learning-by-doing` `programming-language` `virtual-machine`
```

## 🚀 Future Enhancements

Planned improvements:
- [ ] Support for private repositories
- [ ] Custom project descriptions override
- [ ] Integration with repository releases
- [ ] Activity timeline from commits
- [ ] Language statistics across all repos
- [ ] Custom badge themes

## 📝 Contributing

To improve the auto-sync system:

1. **Test Changes**: Always run `./scripts/test-sync.sh` first
2. **Update Documentation**: Keep this README current
3. **Backward Compatibility**: Ensure changes don't break existing setups

---

> 🎉 **Congratulations!** Your GitHub profile now automatically stays up-to-date with your latest projects and achievements!
