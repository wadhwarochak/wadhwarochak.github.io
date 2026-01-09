#!/bin/bash

# Script: push_to_github.sh
# Purpose: Commit and push recent changes to GitHub

# Exit on any error
set -e


words=(
  "Resilience"
  "Focus"
  "Discipline"
  "Momentum"
  "Consistency"
  "Courage"
  "Clarity"
  "Growth"
  "Perseverance"
  "Drive"
  "Excellence"
  "Integrity"
  "Adaptability"
  "Commitment"
  "Determination"
  "Innovation"
  "Dedication"
  "Patience"
  "Strength"
  "Vision"
  "Purpose"
  "Passion"
  "Confidence"
  "Endurance"
  "Ambition"
  "Progress"
  "Mastery"
  "Agility"
  "Wisdom"
  "Focusability"
  "Stability"
  "Tenacity"
  "Balance"
  "Mindset"
  "Accountability"
  "Ownership"
  "Execution"
  "Precision"
  "Reliability"
)


random_word="${words[RANDOM % ${#words[@]}]}"


# Get commit message from argument or use default
#COMMIT_MSG=${1:-"Updated recent changes"}
# COMMIT_MSG=${1:-"Updated on - $(date +'%d-%b')"}
#COMMIT_MSG=${1:-"$random_word - $(date +'%d-%b')"}
COMMIT_MSG=${1:-"$random_word - $(date +'%d')"}


# Add all modified and new files
git add .

# Commit changes
git commit -m "$COMMIT_MSG"

# Push to the current branch
git push

echo "✅ Changes pushed successfully with message: '$COMMIT_MSG'"