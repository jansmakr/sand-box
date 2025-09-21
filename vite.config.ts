import build from '@hono/vite-build/cloudflare-pages'
import devServer from '@hono/vite-dev-server'
import adapter from '@hono/vite-dev-server/cloudflare'
import { defineConfig } from 'vite'

export default defineConfig({
  plugins: [
    build(),
    devServer({
      adapter,
      entry: 'src/index.tsx'
    })
  ],
  build: {
    rollupOptions: {
      // Service Worker 관련 경고 억제
      external: ['workbox-*'],
    }
  },
  // 개발 환경에서 Service Worker 비활성화
  define: {
    __SW_ENABLED__: JSON.stringify(process.env.NODE_ENV === 'production')
  }
})
