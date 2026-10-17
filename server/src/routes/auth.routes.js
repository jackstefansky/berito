import { Router } from 'express';
import { bearerToken, requireAuth } from '../middleware/require-auth.js';
import { login, logout } from '../services/auth.service.js';

export const authRoutes = Router();

// POST /auth/login {email, password} -> {token, userId, email}
authRoutes.post('/login', (req, res) => {
  const { email, password } = req.body ?? {};
  if (typeof email !== 'string' || typeof password !== 'string') {
    return res.status(400).json({ error: 'Email i hasło są wymagane' });
  }
  const result = login(email, password);
  if (!result) return res.status(401).json({ error: 'Nieprawidłowy email lub hasło' });
  res.json(result);
});

// GET /auth/session (Bearer) -> {userId, email}
authRoutes.get('/session', requireAuth, (req, res) => {
  res.json(req.session);
});

// POST /auth/logout (Bearer) -> 204
authRoutes.post('/logout', (req, res) => {
  const token = bearerToken(req);
  if (token) logout(token);
  res.status(204).end();
});
