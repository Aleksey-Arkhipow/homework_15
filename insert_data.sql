INSERT into animal_breed (name)
SELECT DISTINCT breed from animals;

INSERT into animal_type (name)
SELECT DISTINCT animal_type from animals;

UPDATE animals
    SET color1 = TRIM(color1),
        color2 = TRIM(color2);

INSERT into main_color (name)
SELECT DISTINCT color1 from animals;

INSERT into second_color (name)
SELECT DISTINCT color2 from animals;

INSERT into animal_outcome_subtype (name)
SELECT DISTINCT outcome_subtype from animals;

INSERT into animal_outcome_type (name)
SELECT DISTINCT outcome_type from animals;

INSERT into animal_outcome_month (name)
SELECT DISTINCT outcome_month from animals;

INSERT into animal_outcome_year (name)
SELECT DISTINCT outcome_year from animals;




insert into animals_new (age_upon_outcome, animal_id, name, date_of_birth, animal_type_id, breed_id,
                          main_color_id, second_color_id, outcome_subtype_id, outcome_type_id,
                          outcome_month_id, outcome_year_id)
SELECT DISTINCT animals.age_upon_outcome, animals.animal_id, animals.name, animals.date_of_birth,
                          animal_type.id,
                          animal_breed.id,
                          main_color.id,
                          second_color.id,
                          animal_outcome_subtype.id,
                          animal_outcome_type.id,
                          animal_outcome_month.id, animal_outcome_year.id
from animals

LEFT JOIN animal_type on animal_type.name = animals.animal_type
LEFT JOIN animal_breed On animal_breed.name = animals.breed
LEFT JOIN main_color on main_color.name = animals.color1
LEFT JOIN second_color on second_color.name = animals.color2
LEFT JOIN animal_outcome_subtype on animal_outcome_subtype.name = animals.outcome_subtype
LEFT JOIN animal_outcome_type on animal_outcome_type.name = animals.outcome_type
LEFT JOIN animal_outcome_month on animal_outcome_month.name = animals.outcome_month
LEFT JOIN animal_outcome_year on animal_outcome_year.name = animals.outcome_year


;

-- INSERT INTO animals (id, name, date_of_birth, specie_id, breed_id, main_color_id, second_color_id)
-- SELECT DISTINCT animals_old.animal_id, animals_old.name, animals_old.date_of_birth, -- колонки из старой основной таблицы
--                 animal_species.id, -- колонка из второстепенной таблицы animal_species
--                 animal_breeds.id, -- колонки из второстепенной таблицы animal_breeds
--                 main_color.id, second_color.id -- колонки из второстепенной таблицы animal_colors
-- FROM animals_old
-- LEFT JOIN animal_breeds ON animal_breeds.breed = animals_old.breed
-- LEFT JOIN animal_species ON animal_species.specie = animals_old.animal_type
-- LEFT JOIN animal_colors main_color ON main_color.color = animals_old.color1
-- LEFT JOIN animal_colors second_color ON second_color.color = animals_old.color2;