module.exports = {
  apps: [
    {
      name: 'carejoa-webapp',
      script: 'npx',
      args: 'wrangler pages dev dist --d1=carejoa-production --local --ip 0.0.0.0 --port 3000',
      env: {
        NODE_ENV: 'development',
        PORT: 3000,
        // Wrangler 환경 변수 (.dev.vars 내용)
        ADMIN_PASSWORD: '5874',
        KAKAO_REST_API_KEY: '1e58eebb2e1696dfe08aa1084119abd7',
        KAKAO_REDIRECT_URI: 'https://3000-ifvffj98inm1alivckh29-2e1b9533.sandbox.novita.ai/api/auth/kakao/callback'
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
