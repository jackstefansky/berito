import { Router } from 'express';
import { getStudent } from '../services/student.service.js';

export const studentRoutes = Router();

// GET /students/me -> the signed-in student
studentRoutes.get('/me', (req, res) => {
  const student = getStudent(req.session.userId);
  if (!student) return res.status(404).json({ error: 'Nie znaleziono studenta' });
  res.json(student);
});
