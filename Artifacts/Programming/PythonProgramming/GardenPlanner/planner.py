# planner.py

from db import *

# Adding a new plant to the database

def add_new_plant():
    name = input("Plant name: ")
    plant_type = input("Plant type (e.g., Vegetable, Herb, Flower): ")
    season = input("Season (Spring, Summer, Fall, Winter): ")
    location = input("Location in garden (e.g., Raised Bed, Landscape): ")
    notes = input("Any notes: ")
    is_native_input = input("Is this a native plant? (True/False): ").strip().capitalize()
    is_native = True if is_native_input == 'True' else False

    insert_plant(name, plant_type, season, location, notes)

    if plant_type in ['Vegetable', 'Fruit']:
        insert_crop(name, plant_type, notes)
    elif plant_type in ['Shrub', 'Flower', 'Grass_Sedge', 'Vine']:
        insert_landscape(name, plant_type, notes)

    if is_native:
        insert_native(name)

    print("Plant added!")

# View all plants that have been entered into the database

def view_all_plants():
    plants = select_all_plants()

    if not plants:
        print("No plants found.")
        return

    # Print header
    print(f"{'ID':<3} {'Name':<30} {'Type':<15} {'Season':<10} {'Location':<20} {'Notes':<40}")
    print("-" * 120)

    # Print rows
    for plant in plants:
        plant_id, name, plant_type, season, location, notes, *_ = plant
        print(f"{plant_id:<3} {name:<30} {plant_type:<15} {season:<10} {location:<20} {notes or '':<40}")

# View all plants by Season

def view_by_season():
    season = input("Enter season to filter by: ")
    plants = select_plants_by_season(season)

    if not plants:
        print("No plants found for that season.")
        return

    print(f"{'ID':<3} {'Name':<30} {'Type':<15} {'Season':<10} {'Location':<20} {'Notes':<40}")
    print("-" * 120)

    for plant in plants:
        plant_id, name, plant_type, season, location, notes, *_ = plant
        print(f"{plant_id:<3} {name:<30} {plant_type:<15} {season:<10} {location:<20} {notes or '':<40}")

# View all plants by type
        
def view_by_type():
    plant_type = input("Enter type to filter by: ")
    plants = select_plants_by_type(plant_type)

    if not plants:
        print("No plants found for that season.")
        return

    print(f"{'ID':<3} {'Name':<30} {'Type':<15} {'Season':<10} {'Location':<20} {'Notes':<40}")
    print("-" * 120)

    for plant in plants:
        plant_id, name, plant_type, season, location, notes, *_ = plant
        print(f"{plant_id:<3} {name:<30} {plant_type:<15} {season:<10} {location:<20} {notes or '':<40}")

# View all Native plants

def view_native_plants():
    natives = select_native_plants()

    if not natives:
        print("No native plants found.")
        return

    print("\nNative Plants:")
    for plant in natives:
        print(f"- {plant[0]}")

# View all plants by Location

def view_by_location():
    location = input("Enter location to filter by: ")
    plants = select_plants_by_location(location)

    if not plants:
        print("No plants found for that season.")
        return

    print(f"{'ID':<3} {'Name':<30} {'Type':<15} {'Season':<10} {'Location':<20} {'Notes':<40}")
    print("-" * 120)

    for plant in plants:
        plant_id, name, plant_type, season, location, notes, *_ = plant
        print(f"{plant_id:<3} {name:<30} {plant_type:<15} {season:<10} {location:<20} {notes or '':<40}")

def init_db():
    create_table()
    create_crop_table()
    create_landscape_table()
    create_native_table()

