#!/bin/bash

# Manual script to test the repository sync locally
# Usage: ./scripts/test-sync.sh

echo "🔄 Testing repository sync..."

# Check if we have the required tools
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is required but not installed."
    exit 1
fi

if [ -z "$GITHUB_TOKEN" ]; then
    echo "⚠️  GITHUB_TOKEN environment variable not set."
    echo "You can create one at: https://github.com/settings/tokens"
    echo "It needs 'public_repo' permissions."
    read -p "Enter your GitHub token: " GITHUB_TOKEN
    export GITHUB_TOKEN
fi

# Create a test script
cat << 'EOF' > /tmp/test-sync.js
const https = require('https');
const fs = require('fs');

// Test with hardcoded repositories
const repos = ['elsonwu/jing-lang', 'elsonwu/git-rs'];
console.log('Testing with repositories:', repos);

async function fetchRepoInfo(repo) {
  return new Promise((resolve, reject) => {
    const options = {
      hostname: 'api.github.com',
      path: `/repos/${repo}`,
      method: 'GET',
      headers: {
        'User-Agent': 'GitHub-Profile-Sync-Test',
        'Authorization': `token ${process.env.GITHUB_TOKEN}`,
        'Accept': 'application/vnd.github.v3+json'
      }
    };

    const req = https.request(options, (res) => {
      let data = '';
      res.on('data', chunk => data += chunk);
      res.on('end', () => {
        if (res.statusCode === 200) {
          resolve(JSON.parse(data));
        } else {
          reject(new Error(`HTTP ${res.statusCode}: ${data}`));
        }
      });
    });

    req.on('error', reject);
    req.end();
  });
}

async function testSync() {
  for (const repo of repos) {
    try {
      console.log(`\n📦 Testing ${repo}...`);
      const repoInfo = await fetchRepoInfo(repo);
      console.log(`✅ ${repoInfo.name}: ${repoInfo.description}`);
      console.log(`   Language: ${repoInfo.language}, Stars: ${repoInfo.stargazers_count}`);
      if (repoInfo.topics && repoInfo.topics.length > 0) {
        console.log(`   Topics: ${repoInfo.topics.join(', ')}`);
      }
    } catch (error) {
      console.error(`❌ Error fetching ${repo}:`, error.message);
    }
  }
  
  console.log('\n🎉 Test completed! The GitHub Action should work correctly.');
}

testSync();
EOF

# Run the test
node /tmp/test-sync.js

# Cleanup
rm /tmp/test-sync.js

echo ""
echo "🚀 To run the actual sync:"
echo "   1. Push the workflow to GitHub"
echo "   2. Go to Actions tab in your repository"
echo "   3. Find 'Sync Repository Information' workflow"
echo "   4. Click 'Run workflow' to trigger manually"
