import { Router } from 'express';
import { listUpcomingAssignments } from '../services/assignment.service.js';

export const assignmentRoutes = Router();

// GET /assignments -> upcoming assignments, nearest due date first
assignmentRoutes.get('/assignments', (req, res) => {
  res.json(listUpcomingAssignments());
});

// GET /courses/:courseId/assignments -> same, for one course
assignmentRoutes.get('/courses/:courseId/assignments', (req, res) => {
  res.json(listUpcomingAssignments(req.params.courseId));
});
