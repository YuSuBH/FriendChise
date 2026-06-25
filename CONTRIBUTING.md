# Contributing to FriendChise

Once again, thanks for helping improve FriendChise.

## 1. Start with an issue

Either pick an issue posted or submit an issue you wish to work on and wait for approval. Depending on the issue, we expect completion within 2 days before assigning the issue to someone else.

If you are looking for ideas, see [Ideas for Contributing](https://friendchise.app/doc/contributing/ideas-for-contribution).

## 2. Follow the exact setup steps

[Quick Start](https://friendchise.app/doc/development/quick-start) has a video if you wish.

### 2.1 Fork and clone the repo

```bash
git clone https://github.com/IvanTran-2001/FriendChise.git
cd FriendChise
```

### 2.2 Start a local Postgres database

Use Docker if you want the quickest setup. The same Postgres container image works on macOS, Linux, and Windows through Docker Desktop:

```bash
docker run --name friendchise-postgres \
	-e POSTGRES_USER=postgres \
	-e POSTGRES_PASSWORD=postgres \
	-e POSTGRES_DB=friendchise \
	-p 5432:5432 \
	-d postgres:16
```

If you are on Windows PowerShell or Windows Terminal, use this version:

```powershell
docker run --name friendchise-postgres `
  -e POSTGRES_USER=postgres `
  -e POSTGRES_PASSWORD=postgres `
  -e POSTGRES_DB=friendchise `
  -p 5432:5432 `
  -d postgres:16
```

### 2.3 Create `.env.local`

Create `.env.local` in the repo root with these values:

```env
DATABASE_URL=postgresql://postgres:postgres@localhost:5432/friendchise
AUTH_SECRET=your-generated-secret-here
AUTH_URL=http://localhost:3000
```

If you do not have an auth secret yet, generate one and copy and replace `your-generated-secret-here`

```bash
npx auth secret
```

### 2.4 Install, migrate, generate, and seed

Run these commands in order:

```bash
pnpm install
pnpm prisma migrate dev
pnpm prisma generate
pnpm seed
```
If you ever have an application error or out of sync rerun the whole thing especially after a huge update.

### 2.5 Start the app

```bash
pnpm dev
```

Then open [localhost:3000/signin](http://localhost:3000/signin) and use either:

## 3. Pull requests

- First of, everything should be in our dedicated [doc](https://friendchise.app/doc) 
- Keep PRs focused on one change when possible.
- Update docs if huge change or worth mentioning to help other developers
- Avoid unrelated refactors in the same PR. Just make a different PR.

## 4. Congrats

You have pretty muchly all the baseline setup. Good luck and thanks for contributing.
