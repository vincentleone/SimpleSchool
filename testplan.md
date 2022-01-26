# Test Plan
## Description

Our test plan will consist of two parts. The first being testing the individual elements of our product, such as class creation, account preferences, and many other features. We will also be testing each UI control to ensure a professional style remains. Abnormal testing will be used to try to break certain features or inputs. The second part of testing will  be creating sample data to utilize the app the same way our customers would (creating accounts, joining classes, posting to the calendar, etc.). This will ensure that the product is easy and functional for our customers and that it can handle the full load of what our customer needs. 

## Test Case Descriptions

**UI Testing**\
**UI1.1: UI Test 1**\
UI1.2: This test will ensure that the login window is formatted correctly.\
UI1.3: The test will be creating and logging into the user's account.\
UI1.4: Inputs: Selecting login\
UI1.5: Outputs: A successful login\
UI1.6: Normal\
UI1.7: Whitebox\
UI1.8: Functional\
UI1.9: Integration\
UI1.10: Results: User able to be logged in.\
**UI2.1: UI Test 2**\
UI2.2: This test will ensure that the calendar item entry is functional.\
UI2.3: The test will be adding entries of each type to the calendar.\
UI2.4: Inputs: Selecting item entry\
UI2.5: Output: A successful calendar item entry\
UI2.6: Normal\
UI2.7: Whitebox\
UI2.8: Functional\
UI2.9: Integration\
UI2.10: Results: Item entered.\
**UI3.1: UI Test 3**\
UI3.2: This test will ensure that the Add Class functionality works correctly.\
UI3.3: The test will be adding entries to the Class list\
UI3.4: Inputs: Class information entry \
UI3.5: Output: A successful class entry\
UI3.6: Normal\
UI3.7: Whitebox\
UI3.8: Functional\
UI3.9: Integration\
UI3.10: Results: Class Entered\
**UI4.1: UI Test 4**\
UI4.2: This test will ensure that the calendar item entry is able to handle abnormal test cases.\
UI4.3: The test will be adding entries of each type to the calendar.\
UI4.4: Inputs: Selecting item entry\
UI4.5: Output: A successful calendar item entry\
UI4.6: Abnormal\
UI4.7: Whitebox\
UI4.8: Functional\
UI4.9: Integration\
UI4.10: Results: Item entered.\
**UI5.1: UI Test 5**\
UI5.2: This test will ensure that the Add Class functionality is able to handle abnormal test cases.\
UI5.3: The test will be adding entries to the Class list\
UI5.4: Inputs: Class information entry\
UI5.5: Output: A successful class entry\
UI5.6: Abnormal\
UI5.7: Whitebox\
UI5.8: Functional\
UI5.9: Integration\
UI5.10: Results: Class Entered\

**Database Testing**
**DB.1.1: DB Test 1**\
DB1.2: This test will ensure that a user is added to the database when created.\
DB1.3: The test will be checking for an user entry in the database.\
DB1.4: Inputs: User creation\
DB1.5: Outputs: Successful entry\
DB1.6: Normal\
DB1.7: Whitebox\
DB1.8: Functional\
DB1.9: Unit\
DB1.10: Results: User added to database.\
**DB.2.1: DB Test 2**\
DB2.2: This test will ensure that a calendar item entry is added to the database when created.\
DB2.3: The test will be checking for a calendar item entry in the database.\
DB2.4: Inputs: Calendar item creation\
DB2.5: Outputs: Successful entry\
DB2.6: Normal\
DB2.7: Whitebox\
DB2.8: Functional\
DB2.9: Unit\
DB2.10: Results: Calendar item added to database.\
**DB.3.1: DB Test 3**\
DB3.2: This test will ensure that a class is added to the database when created.\
DB3.3: The test will be checking for a class in the database.\
DB3.4: Inputs: Class creation\
DB3.5: Outputs: Class entry\
DB3.6: Normal\
DB3.7: Whitebox\
DB3.8: Functional\
DB3.9: Unit\
DB3.10: Results: Class added to database.\

**Full System User Testing**


**Test Case Matrix**
| Test | Normal/Abnormal | Whitebox/Blackbox | Functional/Performance | Unit/Integration |
| ------ | ------ | ------ | ------ | ------ |
| UI1 | Normal | Whitebox | Functional | Integration |
| UI2 | Normal | Whitebox | Functional | Integration |
| UI3 | Normal | Whitebox | Functional | Integration |
| UI4 | Abnormal | Whitebox | Functional | Integration |
| UI5 | Abnormal | Whitebox | Functional | Integration |
| DB1 | Normal | Whitebox | Functional | Integration |
| DB2 | Normal | Whitebox | Functional | Integration |
| DB3 | Normal | Whitebox | Functional | Integration |
