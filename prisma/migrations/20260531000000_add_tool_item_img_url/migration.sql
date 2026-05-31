-- Add imgUrl column to ToolItem.
-- Uses IF NOT EXISTS so it is safe to apply even if the column was already
-- present (e.g. on databases that were set up via prisma db push rather than
-- via this migration).
ALTER TABLE "ToolItem" ADD COLUMN IF NOT EXISTS "imgUrl" TEXT;
