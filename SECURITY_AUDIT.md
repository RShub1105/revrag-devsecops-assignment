## Dockerfile Issues
1. Issue: Using node:latest  
Fix: Changed to node:18-alpine  
Reason: Prevents unexpected updates and reduces vulnerabilities.

2. Issue: Hardcoded secrets  
Fix: Removed and used environment variables  
Reason: Secrets should not be stored in images.


## CI/CD Issues

1. Issue: Secrets in YAML  
Fix: Moved to GitHub Secrets  
Reason: Prevents credential leakage.

## Trivy Scan

Added scan after build to stop vulnerable images from being deployed.