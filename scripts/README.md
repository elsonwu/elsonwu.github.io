# Scripts

This directory contains utility scripts for managing the GitHub profile.

## test-sync.sh

Tests the repository synchronization locally before running it in GitHub Actions.

**Usage:**

```bash
export GITHUB_TOKEN="your_github_token_here"
./scripts/test-sync.sh
```

**Requirements:**

- Node.js installed
- GitHub Personal Access Token with `public_repo` permissions
- Create token at: <https://github.com/settings/tokens>

The script will test fetching repository information from the GitHub API and show you what data would be synced to your README.
