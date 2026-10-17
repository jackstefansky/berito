import express from 'express';
import { delay } from './middleware/delay.js';
import { routes } from './routes/index.js';

export const app = express();

app.use(express.json());
app.use(delay);
app.use(routes);
