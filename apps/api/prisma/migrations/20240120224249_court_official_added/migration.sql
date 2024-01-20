/*
  Warnings:

  - Added the required column `courtOfficialId` to the `CourtDate` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "CourtDate" ADD COLUMN     "courtOfficialId" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "CourtOfficial" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "title" TEXT NOT NULL,

    CONSTRAINT "CourtOfficial_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "CourtDate" ADD CONSTRAINT "CourtDate_courtOfficialId_fkey" FOREIGN KEY ("courtOfficialId") REFERENCES "CourtOfficial"("id") ON DELETE CASCADE ON UPDATE CASCADE;
