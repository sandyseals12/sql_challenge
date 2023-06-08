CREATE TABLE "Department" (
    "dept_no" VARCHAR NOT NULL,
    "dept_name" VARCHAR NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY ("dept_no")
);

CREATE TABLE "Dept_emp" (
    "emp_ct" SERIAL NOT NULL,
    "emp_no" INT NOT NULL,
    "dept_no" VARCHAR NOT NULL,
    CONSTRAINT "pk_Dept_emp" PRIMARY KEY ("emp_ct"),
    CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY ("dept_no") REFERENCES "Department" ("dept_no")
);


CREATE TABLE "Dept_manager" (
    "manager_ID" SERIAL PRIMARY KEY,
    "dept_no" VARCHAR NOT NULL,
    "emp_no" INT NOT NULL
);

CREATE TABLE "Employees" (
    "emp_no" SERIAL NOT NULL,
    "emp_title_ID" VARCHAR NOT NULL,
    "birth_date" VARCHAR NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "sex" VARCHAR NOT NULL,
    "hire_date" VARCHAR NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY ("emp_no")
);

CREATE TABLE "Salaries" (
    "emp_no" SERIAL NOT NULL,
    "salary" INT NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY ("emp_no"),
    CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY ("emp_no") REFERENCES "Employees" ("emp_no")
);

CREATE TABLE "Titles" (
    "title_Id" VARCHAR NOT NULL,
    "title" VARCHAR NOT NULL,
    CONSTRAINT "pk_Titles" PRIMARY KEY ("title_Id")
);