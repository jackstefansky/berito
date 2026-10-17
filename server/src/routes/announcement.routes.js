import { Router } from 'express';
import { listAnnouncements } from '../services/announcement.service.js';

export const announcementRoutes = Router();

// GET /announcements -> newest first
announcementRoutes.get('/', (req, res) => {
  res.json(listAnnouncements());
});
