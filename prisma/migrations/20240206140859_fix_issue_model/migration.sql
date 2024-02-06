-- DropForeignKey
ALTER TABLE "Issue" DROP CONSTRAINT "Issue_assignedToUserId_fkey";

-- AlterTable
ALTER TABLE "Issue" ALTER COLUMN "title" SET DATA TYPE VARCHAR(255),
ALTER COLUMN "assignedToUserId" SET DATA TYPE VARCHAR(255);

-- AddForeignKey
ALTER TABLE "Issue" ADD CONSTRAINT "Issue_assignedToUserId_fkey" FOREIGN KEY ("assignedToUserId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;
