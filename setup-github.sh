#!/bin/bash

set -e

echo "Creating labels..."

# Type labels
gh label create "type/feature"    --color "0075CA" --force
gh label create "type/test"       --color "008672" --force
gh label create "type/docs"       --color "E4E669" --force
gh label create "type/chore"      --color "CCCCCC" --force
gh label create "type/data"       --color "D93F0B" --force
gh label create "type/experiment" --color "6F42C1" --force

# Milestone labels
gh label create "milestone/v0.1" --color "EDEDED" --force
gh label create "milestone/v0.2" --color "EDEDED" --force
gh label create "milestone/v0.3" --color "EDEDED" --force
gh label create "milestone/v0.4" --color "EDEDED" --force
gh label create "milestone/v0.5" --color "EDEDED" --force
gh label create "milestone/v0.6" --color "EDEDED" --force
gh label create "milestone/v0.7" --color "EDEDED" --force
gh label create "milestone/v0.8" --color "EDEDED" --force
gh label create "milestone/v0.9" --color "EDEDED" --force
gh label create "milestone/v1.0" --color "EDEDED" --force
gh label create "milestone/v1.1" --color "EDEDED" --force
gh label create "milestone/v1.2" --color "EDEDED" --force

# Status labels
gh label create "status/in-progress" --color "FBCA04" --force
gh label create "status/blocked"     --color "B60205" --force

echo "Creating milestones..."

REPO="pietervanbrakel/network-intrusion-detection-system"

gh api "repos/$REPO/milestones" --method POST -f title="V0.1 Foundation"        || true
gh api "repos/$REPO/milestones" --method POST -f title="V0.2 Traffic Capture"   || true
gh api "repos/$REPO/milestones" --method POST -f title="V0.3 pcap Extraction"   || true
gh api "repos/$REPO/milestones" --method POST -f title="V0.4 Flow Engineering"  || true
gh api "repos/$REPO/milestones" --method POST -f title="V0.5 Data Processing"   || true
gh api "repos/$REPO/milestones" --method POST -f title="V0.6 Classical Models"  || true
gh api "repos/$REPO/milestones" --method POST -f title="V0.7 Deep Models"       || true
gh api "repos/$REPO/milestones" --method POST -f title="V0.8 Model Comparison"  || true
gh api "repos/$REPO/milestones" --method POST -f title="V0.9 MLflow"            || true
gh api "repos/$REPO/milestones" --method POST -f title="V1.0 API"               || true
gh api "repos/$REPO/milestones" --method POST -f title="V1.1 Deployment"        || true
gh api "repos/$REPO/milestones" --method POST -f title="V1.2 Agent"             || true

echo "Done."