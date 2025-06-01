#!/bin/bash

# deployment.sh - Deploy SSO Infrastructure
set -e

echo "🚀 Starting SSO Infrastructure Deployment..."

# Create directory structure
echo "📁 Creating directory structure..."
mkdir -p nginx/conf.d
mkdir -p authelia
mkdir -p prometheus
mkdir -p loki
mkdir -p promtail
mkdir -p grafana/provisioning/datasources
mkdir -p grafana/provisioning/dashboards
mkdir -p ssl

# Generate password hashes for users (you need to install authelia CLI or use online generator)
echo "🔐 Note: You need to generate proper password hashes for users_database.yml"
echo "   Use: docker run --rm authelia/authelia:latest authelia crypto hash generate argon2 --password 'yourpassword'"

# Set proper permissions
echo "🔧 Setting permissions..."
sudo chown -R 1000:1000 ./grafana
chmod -R 755 ./nginx
chmod -R 755 ./authelia

# Generate SSL certificates (self-signed for testing)
echo "🔒 Generating self-signed SSL certificates..."
if [ ! -f ./ssl/server.crt ]; then
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -keyout ./ssl/server.key \
        -out ./ssl/server.crt \
        -subj "/C=IN/ST=<your state here>/L=<yourlocation here>/O=SRE/CN=ec2-52.66.251.211.ap-south-1.compute.amazonaws.com"
fi

# Check if Docker and Docker Compose are installed
echo "🐳 Checking Docker installation..."
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    exit 1
fi

if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

# Pull all images
echo "📥 Pulling Docker images..."
docker-compose pull

# Start services
echo "🚀 Starting services..."
docker-compose up -d

# Wait for services to be ready
echo "⏳ Waiting for services to start..."
sleep 30

# Check service status
echo "🔍 Checking service status..."
docker-compose ps

# Show service URLs
echo "🌐 Services are available at:"
echo "  - Authelia (SSO): http://ec2-52-66-251-211.ap-south-1.compute.amazonaws.com/authelia/"
echo "  - Gitea: http://ec2-52-66-251-211.ap-south-1.compute.amazonaws.com/gitea/"
echo "  - Grafana: http://ec2-52-66-251-211.ap-south-1.compute.amazonaws.com/grafana/"
echo "  - Prometheus: http://ec2-52-66-251-211.ap-south-1.compute.amazonaws.com/prometheus/"

echo ""
echo "🔑 Default credentials:"
echo "  - Admin user: admin / admin123"
echo "  - Regular user: user1 / user123"
echo ""
echo "📝 Next steps:"
echo "  1. Generate proper password hashes for users"
echo "  2. Update JWT, session, and encryption secrets"
echo "  3. Configure proper SSL certificates"
echo "  4. Set up proper SMTP for notifications"
echo ""
echo "✅ Deployment completed!"
