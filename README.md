# 🐍 SQL Injection Lab - Header Injection

![Lab Status](https://img.shields.io/badge/status-active-brightgreen)
![Docker](https://img.shields.io/badge/docker-ready-blue)
![PHP](https://img.shields.io/badge/php-8.2-purple)

SQL Injection lab for practicing HTTP Header injection vulnerabilities.

## 📋 Table of Contents
- [Features](#features)
- [Quick Start](#quick-start)
- [How to Exploit](#how-to-exploit)
- [Payload Examples](#payload-examples)
- [Screenshots](#screenshots)
- [Technologies](#technologies)

## ✨ Features
- 🔴 Vulnerable User-Agent injection
- 🟢 Secure input with Prepared Statements
- 📊 Real-time log viewer
- 🏴 Flag extraction challenge
- 🐳 Dockerized environment

## 🚀 Quick Start

### Prerequisites
- Docker & Docker Compose
- Python 3.8+ (for exploit script)

### Installation

```bash
docker --version
docker-compose --version

sudo apt update
sudo apt install docker.io docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER  # مهم عشان تشتغل بدون sudo

# أعد تشغيل الجهاز أو logout/login عشان التغييرات تتفعل

# 1. استنساخ المشروع من GitHub
git clone https://github.com/yourusername/sql-injection-lab.git
cd sql-injection-lab

# 2. أو لو معاك الملفات محلياً، انقلها للمجلد

# 1. بناء الصور (أول مرة أو عند التعديل)
make build
make up
http://localhost:8080

# 2. أو استخدم curl للتحقق
curl http://localhost:8080
