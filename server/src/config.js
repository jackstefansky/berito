export const config = {
  port: Number(process.env.PORT ?? 3000),
  dbPath: process.env.DB_PATH ?? 'berito.db',
  // Artificial latency for testing loading states: DELAY_MS=300 npm start
  delayMs: Number(process.env.DELAY_MS ?? 0),
};
