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
# Clone the repository
git clone https://github.com/Youssefbakrey/sql-injection-lab.git
cd sql-injection-lab

# Start the lab
make up

# View logs
make logs
