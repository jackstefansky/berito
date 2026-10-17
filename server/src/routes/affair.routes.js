import { Router } from 'express';
import { listAffairs } from '../services/affair.service.js';

export const affairRoutes = Router();

// GET /affairs -> things to take care of, most urgent first
affairRoutes.get('/', (req, res) => {
  res.json(listAffairs());
});
