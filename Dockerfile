FROM node:22.7.0-slim AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .

FROM node:22.7.0-slim AS final
RUN groupadd -r appuser && useradd -r -g appuser appuser
WORKDIR /app
COPY --from=builder --chown=appuser:appuser /app .
USER appuser
ENV NODE_ENV=production
EXPOSE 3000
CMD ["node", "./bin/www"]
