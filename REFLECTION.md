During this assignment, I used AI LLM tools to understand common DevSecOps security issues and best practices, especially around Dockerfile hardening and CI/CD security. AI helped me identify risks like using the `latest` base image, hardcoded secrets, and insecure flags such as `--privileged`. It also guided me in structuring a secure pipeline and integrating a vulnerability scanner like Trivy.


However, I relied on my own judgment when deciding how to prioritize fixes and keep the solution practical. For example, I chose a lightweight base image (`node:18-alpine`) instead of more complex alternatives, and ensured that the pipeline remained simple while still improving security. I also decided where to place the Trivy scan so that it prevents vulnerable images from being deployed.

In some cases, AI suggestions were either too generic or overly complex for this scenario. I had to simplify them and ensure they matched the requirements of the assignment. I also made sure I understood each change instead of directly copying it.

Overall, AI was a helpful assistant for the projects, but I made the final decisions to ensure the solution was secure, clear, and aligned with real-world practices.
