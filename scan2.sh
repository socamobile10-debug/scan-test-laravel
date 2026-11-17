#!/bin/bash
set -e
cd "$(dirname "$0")/scan-test-laravel"
cp ../scan2-perubahan/.env .env
cp ../scan2-perubahan/.env.production .env.production
mkdir -p config && cp ../scan2-perubahan/config/aws.json config/aws.json
git rm -q database/dump.sql
git add -A && git add -f .env .env.production
git commit -qm "scan2: ganti DB_PASSWORD, hapus dump.sql, tambah aws.json"
git push -q
echo "Perubahan scan 2 sudah di-push."
