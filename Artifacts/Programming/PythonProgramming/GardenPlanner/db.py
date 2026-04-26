# db.py
import sqlite3

def connect():
    return sqlite3.connect("Garden.sqlite")

def create_table():
    conn = connect()
    cur = conn.cursor()
    cur.execute('''
        CREATE TABLE IF NOT EXISTS plants (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            plant_type TEXT,
            season TEXT,
            location TEXT,
            notes TEXT
        )
    ''')
    conn.commit()
    conn.close()

# Create Crop table to track Vegetables, Fruit, and Herbs

def create_crop_table():
    conn = connect()
    cur = conn.cursor()
    cur.execute('''
        CREATE TABLE IF NOT EXISTS crops (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            category TEXT CHECK(category IN ('Vegetable', 'Fruit')),
            notes TEXT
        )
    ''')
    conn.commit()
    conn.close()

# Create Landscape table to track non crop plants

def create_landscape_table():
    conn = connect()
    cur = conn.cursor()
    cur.execute('''
        CREATE TABLE IF NOT EXISTS landscape (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            category TEXT CHECK(category IN ('Shrub', 'Flower', 'Grass_Sedge', 'Vine')),
            notes TEXT
        )
    ''')
    conn.commit()
    conn.close()

# Create Native table to track Native plants

def create_native_table():
    conn = connect()
    cur = conn.cursor()
    cur.execute('''
        CREATE TABLE IF NOT EXISTS native_plants (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT
        )
    ''')
    conn.commit()
    conn.close()

# Insert Plant into plant table 

def insert_plant(name, plant_type, season, location, notes):
    conn = connect()
    cur = conn.cursor()
    cur.execute('''INSERT INTO plants (name, plant_type, season, location, notes)
                   VALUES (?, ?, ?, ?, ?)''', (name, plant_type, season, location, notes))
    conn.commit()
    conn.close()

# Insert Crop into Crop table

def insert_crop(name, category, notes):
    conn = connect()
    cur = conn.cursor()
    cur.execute('''INSERT INTO crops (name, category, notes) VALUES (?, ?, ?)''', (name, category, notes))
    conn.commit()
    conn.close()

# Insert plant into Landscape Table

def insert_landscape(name, category, notes):
    conn = connect()
    cur = conn.cursor()
    cur.execute('''INSERT INTO landscape (name, category, notes) VALUES (?, ?, ?)''', (name, category, notes))
    conn.commit()
    conn.close()

# Insert plant into Native table

def insert_native(name):
    conn = connect()
    cur = conn.cursor()
    cur.execute('''INSERT INTO native_plants (name) VALUES (?)''', (name,))
    conn.commit()
    conn.close()

# Select all plants to view

def select_all_plants():
    conn = connect()
    cur = conn.cursor()
    cur.execute("SELECT * FROM plants")
    result = cur.fetchall()
    conn.close()
    return result

# Select all plants by season to view

def select_plants_by_season(season):
    conn = connect()
    cur = conn.cursor()
    cur.execute("SELECT * FROM plants WHERE season = ?", (season,))
    result = cur.fetchall()
    conn.close()
    return result

# Select all plants by type to view

def select_plants_by_type(plant_type):
    conn = connect()
    cur = conn.cursor()
    cur.execute("SELECT * FROM plants WHERE plant_type = ?", (plant_type,))
    result = cur.fetchall()
    conn.close()
    return result

# Select all Native plants to view

def select_native_plants():
    conn = connect()
    cur = conn.cursor()
    cur.execute("SELECT name FROM native_plants")
    result = cur.fetchall()
    conn.close()
    return result

# Select all plants by Location to view

def select_plants_by_location(location):
    conn = connect()
    cur = conn.cursor()
    cur.execute("SELECT * FROM plants WHERE location = ?", (location,))
    result = cur.fetchall()
    conn.close()
    return result
