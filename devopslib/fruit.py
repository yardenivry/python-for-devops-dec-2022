from random import choices


def fruit():
    fruits = ["apple", "cherry", "melon"]
    return choices(fruits)[0]


def meal(beverage):
    my_fruit = fruit()
    print(f"your fruit is {my_fruit} and your beverage is {beverage}")
    if my_fruit == "cherry":
        return f"your meal is a {my_fruit} and {beverage}"
    # return complete_meal
    return f"your meal is steak and {beverage}"
    # return alternative_meal
