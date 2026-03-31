FROM node:18-alpine                     

WORKDIR /app

COPY package*.json ./                                             

RUN npm ci --only=production

COPY . .

# Do NOT hardcode secrets                       
# Use runtime environment variables instead


 #Remove unnecessary packages                                # ⚠ issue

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser.                                                 
                                                             # ⚠ issue

EXPOSE 3000
                                                             # ⚠ issue
 
CMD ["node", "server.js"]