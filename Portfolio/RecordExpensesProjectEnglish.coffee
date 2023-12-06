#Users must be able to record their expenses, indicating the amount spent and a brief description.
#Expenses must be registered in catgories.
#Impriment a feature that allows users to view a summary of their expenses, grouped by category.

#Logic

#Define data structures
model Expenses:
    construction(amount, description, category):
        Expense.amount = amount
        Expense.description = description
        Expense.category = category

#Initializing of lists to store expenses
expenseDictionary = {}

#Side comment: I have some issues with understanding how to make maps/dictionaries sometimes.

#Function to record expenses
function recordExpense():
    #Get User input
    amount = input("Enter the amount spent: ")
    description = input("Enter a brief description: ")
    category = input("Enter the category: ")

    expense = Expense(amount, description, category)

    #Create an instance of Expense
    newExpense = Expense(amount, description, category)

    #Add the expense to the list
    expense.add(newExpence)

    #Create a new category in expenseDictionary if needed
    if: category is not in expensesDictionary:
        expensesDictionary [category] = [] #Creation of a new category if it doesnt already exist
    expensesDictionary [category].append(expense)
    
    print:("Expense recorded successfully, User!\n")

#Function to view a summary of expenses by category
function viewExpensesSummary():
    print("Expense Summary: ")
    for: category, items in expensesDictionary.items():
        print("Category: {category}")
        for: item in items:
            print:("Amount: {item.amount}, Description: {item.description}")
        print("-------------------------")

#Execution

#Menu for User interaction
while:
    True:
        #Display the menu of options
        print("""
        1 - Record Expenses
        2 - View Expense SUmmary
        3 - Exit
        """
        )
        #Collect Users choice
        choice = input("Pick an option, User: ")

        #Execution of the Users option
        if: choice == 1:
            recordExpense()
        else:
            if:choice == 2:
                viewExpenseSUmmary()
        else:
            if: choice == 3:
            print("You will now Exit the program, User. Bye!")
            #Exit the program
            break

#The program has ended.