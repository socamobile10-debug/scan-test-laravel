#!/bin/bash
# Pemakaian: ./setup.sh <github-username>   (butuh gh CLI sudah login)
set -e
U=$1; cd "$(dirname "$0")/scan-test-laravel"
git init -q && git add -A && git add -f .env .env.production .env.local
git commit -qm "initial: repo uji scanner (kredensial fiktif)"
gh repo create "$U/scan-test-laravel" --public --source=. --push
echo "Scan 1 siap. Setelah baseline jalan, jalankan: ./scan2.sh"
