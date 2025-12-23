module.exports = {
  apps: [
    {
      name: 'carejoa-webapp',
      script: 'npx',
      args: 'wrangler pages dev dist --d1=carejoa-production --local --ip 0.0.0.0 --port 3000',
      env: {
        NODE_ENV: 'development',
        PORT: 3000
      },
      watch: false,
      instances: 1,
      exec_mode: 'fork',
      kill_timeout: 10000,
      wait_ready: false,
      autorestart: true
    }
  ]
}
