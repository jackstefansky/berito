import { Router } from 'express';
import { getClass, listUpcomingClasses } from '../services/schedule.service.js';

export const scheduleRoutes = Router();

// GET /schedule -> all upcoming classes, soonest first
scheduleRoutes.get('/', (req, res) => {
  res.json(listUpcomingClasses());
});

// GET /schedule/:id -> one class
scheduleRoutes.get('/:id', (req, res) => {
  const found = getClass(req.params.id);
  if (!found) return res.status(404).json({ error: 'Nie znaleziono zajęć' });
  res.json(found);
});
