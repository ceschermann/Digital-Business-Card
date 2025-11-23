# Copilot Instructions for AI Agents

## Project Overview
- **Frontend:** React (Vite/CRA), Tailwind CSS (optional)
- **Backend:** Node.js, Express
- **Database:** [Specify: PostgreSQL/MongoDB]
- **Purpose:** [Brief app description needed]

## Architecture & Patterns
- **Separation of Concerns:** Business logic lives in backend service layer, not controllers or frontend components.
- **State Management:** Use Context API, Redux, or Zustand for global state.
- **API Communication:** Use strict typing (TypeScript interfaces preferred) for API responses.

## Security Protocols (CRITICAL)
- **Secrets:** Never expose backend secrets to frontend. Use `.env` files and access via `process.env` (Node) or `import.meta.env` (Vite).
- **Proxies:** Frontend must use Node.js proxy endpoints for third-party APIs.
- **Passwords:** Always hash before storing (bcrypt/argon2).
- **Auth:** Use HttpOnly, Secure cookies for session/JWT. Avoid localStorage for sensitive tokens.
- **Validation:** Validate all backend input (Zod/Joi recommended). Sanitize to prevent SQL Injection/XSS.

## Testing & QA
- **Unit Testing:** Jest or Vitest
- **Integration Testing:** Supertest (Node APIs)
- **Component Testing:** React Testing Library
- **Requirements:**
  - All new features require tests
  - Mock network requests in frontend tests
  - Backend: Test business logic functions
  - Frontend: Test rendering and user events

## Coding Conventions
- **Naming:** CamelCase for variables/functions, PascalCase for React components/classes
- **Comments:** Only for complex logic
- **Async/Await:** Preferred over `.then()`
- **Error Handling:** Use centralized middleware in Node.js

## Forbidden Patterns
- Never use `eval()`
- Avoid `any` in TypeScript unless necessary
- Never commit `.env` files

## Developer Workflow
1. Create/Edit files
2. ALWAYS run build/test commands after changes
3. Fix errors automatically
4. Ask user before committing to GitHub

## Deployment
- Use `fly deploy` for deployment
- If deployment fails, read logs and suggest fixes

## Communication
- Always explain *why* changes are made
- Be clear and encouraging
- Ask for help if stuck

---
**Reference:** See `.clinerules` for full rules and context.
