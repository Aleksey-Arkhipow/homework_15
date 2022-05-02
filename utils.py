import sqlite3


def get_data(id):
    with sqlite3.connect("animal.db") as con:
        cur = con.cursor()
        query = f"""
        SELECT animals_new.name, animal_type.name, animal_breed.name, 
        animals_new.date_of_birth, main_color.name
        FROM animals_new 
        INNER JOIN animal_type on animals_new.animal_type_id = animal_type.id
        INNER join animal_breed on animals_new.breed_id = animal_breed.id
        INNER join main_color  on animals_new.main_color_id = main_color.id
        Where "index" = '{id}'
        """
        cur.execute(query)
        data = cur.fetchall()
        animal = []
        for i in data:

            animal_data = {
                "name": i[0],
                "type": i[1],
                "breed": i[2],
                "date_of_birth": i[3],
                "main_color": i[4]
            }
        animal.append(animal_data)
        return animal


print(get_data(25658))
