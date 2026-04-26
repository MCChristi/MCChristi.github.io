# ui.py
from planner import *

def display_menu():
    print("\n Garden Planner Menu")
    print("1. Add New Plant")
    print("2. View All Plantings")
    print("3. View By Season")
    print("4. View By Type")
    print("5. View Native Plants")
    print("6. View By Location")
    print("7. Exit")

def main():
    init_db()
    while True:
        display_menu()
        choice = input("Choose an option: ")

        if choice == '1':
            add_new_plant()
        elif choice == '2':
            view_all_plants()
        elif choice == '3':
            view_by_season()
        elif choice == '4':
            view_by_type()
        elif choice == '5':
            view_native_plants()
        elif choice == '6':
            view_by_location()
        elif choice == '7':
            print("Goodbye and happy gardening!")
            break
        else:
            print("Invalid choice, try again.")

if __name__ == '__main__':
    main()
