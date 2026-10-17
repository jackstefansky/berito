import { Router } from 'express';
import { requireAuth } from '../middleware/require-auth.js';
import { affairRoutes } from './affair.routes.js';
import { announcementRoutes } from './announcement.routes.js';
import { assignmentRoutes } from './assignment.routes.js';
import { authRoutes } from './auth.routes.js';
import { gradeRoutes } from './grade.routes.js';
import { scheduleRoutes } from './schedule.routes.js';
import { studentRoutes } from './student.routes.js';

export const routes = Router();

// Public (auth.routes guards the endpoints that need a token itself).
routes.use('/auth', authRoutes);

// Everything below requires a valid session token.
routes.use(requireAuth);
routes.use('/students', studentRoutes);
routes.use('/schedule', scheduleRoutes);
routes.use('/grades', gradeRoutes);
routes.use('/affairs', affairRoutes);
routes.use('/announcements', announcementRoutes);
routes.use(assignmentRoutes);
