import { readFileSync } from 'node:fs';
import { fileURLToPath } from 'node:url';
import swaggerUi from 'swagger-ui-express';
import { parse } from 'yaml';

const spec = parse(
  readFileSync(fileURLToPath(new URL('../openapi.yaml', import.meta.url)), 'utf8'),
);

/** Swagger UI at `/docs`, raw spec at `/openapi.json`. Public. */
export function mountDocs(app) {
  app.get('/openapi.json', (req, res) => res.json(spec));
  app.use('/docs', swaggerUi.serve, swaggerUi.setup(spec, { swaggerOptions: { persistAuthorization: true } }));
}
