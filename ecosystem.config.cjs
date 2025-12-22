module.exports = {
  apps: [
    {
      name: 'carejoa-webapp',
      script: 'npm',
      args: 'run dev',
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
