
/*
ALTER TABLE "dept_manager" DROP CONSTRAINT "fk_dept_manager_dept_no";

ALTER TABLE "dept_manager" DROP CONSTRAINT "fk_dept_manager_emp_no";

ALTER TABLE "employees" DROP CONSTRAINT "fk_employees_emp_title_id";

ALTER TABLE "dept_emp" DROP CONSTRAINT "fk_dept_emp_emp_no";

ALTER TABLE "dept_emp" DROP CONSTRAINT "fk_dept_emp_dept_no";

ALTER TABLE "salaries" DROP CONSTRAINT "fk_salaries_emp_no";
*/

drop table if exists "departments";

create table if not exists "departments" (
    "id"  SERIAL  NOT NULL,
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY ("id"),
    UNIQUE ("dept_no")
);

drop table if exists "dept_manager";

create table if not exists "dept_manager" (
    "id"  SERIAL  NOT NULL,
    "dept_no" varchar   NOT NULL,
    "emp_no" bigint   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY ("id"),
    UNIQUE (dept_no,emp_no)
);

drop table if exists "employees";

create table if not exists "employees" (
    "id"  SERIAL  NOT NULL,
    "emp_no" bigint   NOT NULL,
    "emp_title_id" varchar   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" char(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY ("id"),
    UNIQUE (emp_no)
);

drop table if exists "dept_emp";

create table if not exists "dept_emp" (
    "id"  SERIAL  NOT NULL,
    "emp_no" bigint   NOT NULL,
    "dept_no" varchar   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY ("id" ),
    UNIQUE(emp_no,dept_no)
);

drop table if exists "titles";

create table if not exists "titles" (
    "id"  SERIAL  NOT NULL,
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY ("id"),
    UNIQUE (title_id)
);

drop table if exists "salaries";

create table if not exists "salaries" (
    "id"  SERIAL  NOT NULL,
    "emp_no" bigint   NOT NULL,
    "salary" float   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY ("id"),
    UNIQUE (emp_no)
);

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");