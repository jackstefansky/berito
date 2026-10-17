import { config } from '../config.js';

/** Delays every response by `DELAY_MS`; a no-op when it is 0. */
export function delay(req, res, next) {
  if (config.delayMs > 0) setTimeout(next, config.delayMs);
  else next();
}
