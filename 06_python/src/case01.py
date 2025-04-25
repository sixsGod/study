class Book:
    def __init__(self, title, author, copies):
        self.title = title
        self.author = author
        self.copies = copies

    def __str__(self):
        return f"'{self.title}' by {self.author} ({self.copies} copies available)"


class Library:
    def __init__(self):
        self.books = []

    def add_book(self, book):
        self.books.append(book)
        print(f"Book '{book.title}' added to the library.")

    def remove_book(self, title):
        for book in self.books:
            if book.title == title:
                self.books.remove(book)
                print(f"Book '{title}' removed from the library.")
                return
        print(f"Book '{title}' not found in the library.")

    def display_books(self):
        if not self.books:
            print("No books available in the library.")
        else:
            print("Books available in the library:")
            for book in self.books:
                print(book)

    def borrow_book(self, title):
        for book in self.books:
            if book.title == title and book.copies > 0:
                book.copies -= 1
                print(f"You have borrowed '{title}'.")
                return
        print(f"Book '{title}' is not available.")

    def return_book(self, title):
        for book in self.books:
            if book.title == title:
                book.copies += 1
                print(f"You have returned '{title}'.")
                return
        print(f"Book '{title}' does not belong to this library.")


# Example usage
if __name__ == "__main__":
    library = Library()

    book1 = Book("1984", "George Orwell", 3)
    book2 = Book("To Kill a Mockingbird", "Harper Lee", 2)

    library.add_book(book1)
    library.add_book(book2)

    library.display_books()

    library.borrow_book("1984")
    library.display_books()

    library.return_book("1984")
    library.display_books()

    library.remove_book("To Kill a Mockingbird")
    library.display_books()