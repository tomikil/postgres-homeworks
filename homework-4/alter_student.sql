
-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE student
(
	student_id serial,
	first_name varchar,
	last_name varchar,
	birthday date,
	phone varchar,

	CONSTRAINT pk_student_student_id PRIMARY KEY (student_id)
)

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE student ADD COLUMN middle_name varchar

-- 3. Удалить колонку middle_name
ALTER TABLE student DROP COLUMN middle_name

-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE student RENAME COLUMN birthday TO birth_date

-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE student ALTER COLUMN phone SET DATA TYPE varchar(32)

-- 6. Вставить три любых записи с автогенерацией идентификатора
INSERT INTO student (first_name, last_name, birth_date, phone) VALUES ('Ivan', 'Ivanov', '1990-05-15', '8-999-569-52-85');
INSERT INTO student (first_name, last_name, birth_date, phone) VALUES ('Petr', 'Petrov', '1985-03-23', '8-913-555-52-21');
INSERT INTO student (first_name, last_name, birth_date, phone) VALUES ('Sergei', 'Seregin', '1992-11-15', '8-906-569-75-85')

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE student RESTART IDENTITY