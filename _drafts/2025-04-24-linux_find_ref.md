---
title: linux/find reference
date: 2025-04-24
tags: linux
layout: default-foundation-20210515
---

# Linux `find` Command Reference

This reference provides examples of common and advanced usage of the `find` command for file discovery and filtering.

## 🔍 Basic Usage

### List all files (relative paths, current directory and below)
```bash
find . -type f
```

### Limit search depth to 4 levels
```bash
find . -maxdepth 4 -type f
```

### Use absolute paths
```bash
find "$(pwd)" -type f
```

## 🎯 Filtering by Name or Extension

### Files with a specific extension (e.g., `.txt`)
```bash
find . -type f -name '*.txt'
```

### Case-insensitive match (e.g., `.JPG`, `.jpg`, `.Jpg`)
```bash
find . -type f -iname '*.jpg'
```

### Match multiple extensions using regex
```bash
find . -regextype posix-extended -regex '.*\.(jpg|png|gif)$'
```

## ⏱️ Filtering by Time

### Files modified in the last 7 days
```bash
find . -type f -mtime -7
```

### Files accessed more than 30 days ago
```bash
find . -type f -atime +30
```

### Files changed within the last 2 hours
```bash
find . -type f -mmin -120
```

## 📦 Filtering by Size

### Files larger than 100MB
```bash
find . -type f -size +100M
```

### Files smaller than 1KB
```bash
find . -type f -size -1k
```

## 🔧 Executing Commands

### Delete all `.tmp` files
```bash
find . -type f -name '*.tmp' -delete
```

### Print filename and file size
```bash
find . -type f -exec ls -lh {} \;
```

### Move all `.log` files to archive/
```bash
find . -type f -name '*.log' -exec mv {} archive/ \;
```

## 🔐 Permissions and Ownership

### Files not owned by current user
```bash
find . -type f ! -user $(whoami)
```

### Files with 777 permissions
```bash
find . -type f -perm 0777
```

## 🧪 Combine Conditions

### `.txt` files modified in the last 5 days
```bash
find . -type f -name '*.txt' -mtime -5
```

### Files not matching `.log` or `.bak`
```bash
find . -type f ! -name '*.log' ! -name '*.bak'
```

---

_This markdown is designed to be a portable cheat sheet for working with the `find` command efficiently._
