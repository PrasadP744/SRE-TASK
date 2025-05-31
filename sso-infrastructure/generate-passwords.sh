#!/bin/bash

# generate-passwords.sh - Generate password hashes for Authelia users
set -e

echo "🔐 Password Hash Generator for Authelia"
echo "======================================"

# Function to generate password hash
generate_hash() {
    local password=$1
    local username=$2
    
    echo "Generating hash for user: $username"
    docker run --rm authelia/authelia:latest authelia crypto hash generate argon2 --password "$password"
}

# Check if Docker is available
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    exit 1
fi

echo ""
echo "🔑 Generating password hashes..."
echo ""

# Generate hash for admin user
echo "Admin user (password: admin123):"
generate_hash "admin123" "admin"
echo ""

# Generate hash for user1
echo "User1 (password: user123):"
generate_hash "user123" "user1"
echo ""

# Generate hash for user2
echo "User2 (password: user123):"
generate_hash "user123" "user2"
echo ""

echo "🔒 Generating random secrets..."
echo ""

echo "JWT Secret:"
openssl rand -base64 32
echo ""

echo "Session Secret:"
openssl rand -base64 32
echo ""

echo "Encryption Key:"
openssl rand -base64 32
echo ""

echo "📝 Instructions:"
echo "1. Copy the generated hashes above"
echo "2. Replace the placeholder hashes in authelia/users_database.yml"
echo "3. Update the secrets in docker-compose.yml and authelia/configuration.yml"
echo "4. The format should be: \$argon2id\$v=19\$m=65536,t=1,p=8\$SALT\$HASH"
echo ""
echo "✅ Password generation completed!"
