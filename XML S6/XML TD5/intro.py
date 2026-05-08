# Function to check if a number is prime
def is_prime(n):
    if n < 2:
        return False
    
    for i in range(2,n):
        if n % i == 0:
            return False
        
    return True

# Display the first 10 prime numbers
count = 0
number = 2

print("First 10 prime numbers:")

while count < 10:
    if is_prime(number):
        print(number)
        count += 1
    number += 1


# Create the dictionary
dict = {
    "nom": "firgani",
    "ville": "annaba",
    "site": "http://firgani.dz"
}

print("\nDictionary:")
print(dict)


# List containing the keys
keys_list = list(dict.keys())

print("\nList of keys:")
print(keys_list)


# List containing the values
values_list = list(dict.values())

print("\nList of values:")
print(values_list)


# List containing key-value pairs
items_list = list(dict.items())

print("\nList of key-value pairs:")
print(items_list)