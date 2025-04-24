# Example of handling exceptions in Python

def divide_numbers(a, b):
    try:
        result = a / b
    except ZeroDivisionError:
        print("Error: Cannot divide by zero.")
        return None
    except TypeError:
        print("Error: Both arguments must be numbers.")
        return None
    else:
        return result
    finally:
        print("Execution completed.")

# Test cases
print(divide_numbers(10, 2))  # Should print 5.0
print(divide_numbers(10, 0))  # Should handle division by zero
print(divide_numbers(10, "a"))  # Should handle type error