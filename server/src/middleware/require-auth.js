import { findSession } from '../services/auth.service.js';

export function bearerToken(req) {
  const [scheme, token] = (req.get('authorization') ?? '').split(' ');
  return scheme === 'Bearer' && token ? token : null;
}

/** Rejects with 401 unless the request carries a valid session token. */
export function requireAuth(req, res, next) {
  const session = findSession(bearerToken(req));
  if (!session) return res.status(401).json({ error: 'Sesja wygasła' });
  req.session = session;
  next();
}
