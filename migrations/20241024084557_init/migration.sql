-- CreateTable
CREATE TABLE "users" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "created_at" DATETIME NOT NULL,
    "email" TEXT NOT NULL,
    "role" TEXT NOT NULL,
    "password_hash" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "apartments" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "created_at" DATETIME,
    "title" TEXT NOT NULL,
    "square_meter" REAL,
    "price" DECIMAL NOT NULL,
    "number_of_rooms" INTEGER,
    "description" TEXT,
    "country" TEXT,
    "listed" BOOLEAN NOT NULL,
    "realtor_id" TEXT
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");
