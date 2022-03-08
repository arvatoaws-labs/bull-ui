FROM ghcr.io/arvatoaws-labs/node:alpine

RUN npm i -g @bull-monitor/cli

ENTRYPOINT [
  'bull-monitor',
  '--redis-uri',
  '$REDIS_URI',
  '--queues',
  '$QUEUES',
  '--port',
  '$PORT',
  '--bullmq',
  '--host',
  '0.0.0.0'
]