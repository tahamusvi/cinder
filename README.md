# 🚀 Cinder Base Image

A lightweight Docker base image that compiles Meta's performance-optimized Python fork (**Cinder**) from source with JIT enabled. 

Designed to serve as a high-performance, ready-to-use foundation for Django and other CPU-bound Python applications, eliminating the need for 15+ minute compilation times in your application builds.

**Usage:**
```dockerfile
FROM cinder-base:latest
