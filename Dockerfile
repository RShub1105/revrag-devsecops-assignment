# This is stable and minimal image
FROM node:18-alpine

# Then Set working directory
WORKDIR /app

# Copy only dependency files first for (better caching + security)
COPY package*.json ./

# Install only production dependencies
RUN npm ci --only=production

# Then Copy rest of the app
COPY . .

# Create non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Switch to non-root user
USER appuser

# Expose only required port
EXPOSE 3000

# Start app
CMD ["node", "server.js"]
