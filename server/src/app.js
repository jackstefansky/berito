import express from 'express';
import { mountDocs } from './docs.js';
import { delay } from './middleware/delay.js';
import { routes } from './routes/index.js';

export const app = express();

app.use(express.json());
mountDocs(app);
app.use(delay);
app.use(routes);
