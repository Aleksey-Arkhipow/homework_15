CREATE table animal_type(
    id integer primary key autoincrement,
    name varchar(20)
);

CREATE table animal_breed(
    id integer primary key autoincrement,
    name varchar(30)
);

CREATE table main_color(
    id   integer primary key autoincrement,
    name varchar(30)
);

CREATE table second_color(
    id integer primary key autoincrement,
    name varchar(30)
);

CREATE table animal_outcome_subtype(
    id integer primary key autoincrement,
    name varchar(20)
);

CREATE table animal_outcome_type(
    id integer primary key autoincrement,
    name varchar(20)
);

CREATE table animal_outcome_month(
    id integer primary key autoincrement,
    name varchar(20)
);

CREATE table animal_outcome_year(
    id integer primary key autoincrement,
    name varchar(20)
);

CREATE table animals_new(
    "index" integer primary key autoincrement,
    age_upon_outcome varchar(20),
    animal_id varchar(20),
    name varchar(50),
    date_of_birth varchar(50),
    animal_type_id integer,
    breed_id integer,
    main_color_id integer,
    second_color_id integer,
    outcome_subtype_id integer,
    outcome_type_id integer,
    outcome_month_id integer,
    outcome_year_id integer,
    FOREIGN KEY (animal_type_id) REFERENCES animal_type(id),
    FOREIGN KEY (breed_id) REFERENCES animal_breed(id),
    FOREIGN KEY (main_color_id) REFERENCES main_color(id),
    FOREIGN KEY (second_color_id) REFERENCES second_color(id),
    FOREIGN KEY (outcome_subtype_id) REFERENCES animal_outcome_subtype(id),
    FOREIGN KEY (outcome_type_id) REFERENCES animal_outcome_type(id),
    FOREIGN KEY (outcome_month_id) REFERENCES animal_outcome_month(id),
    FOREIGN KEY (outcome_year_id) REFERENCES animal_outcome_year(id)
);

