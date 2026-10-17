import { Router } from 'express';
import { listGrades } from '../services/grade.service.js';

export const gradeRoutes = Router();

// GET /grades -> the signed-in student's grades, newest first
gradeRoutes.get('/', (req, res) => {
  res.json(listGrades(req.session.userId));
});
