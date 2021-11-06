# Simple School Pages
This  document contains a list of all the pages that need to be created in order to satisfy our MVP.

|#|Page|Link to on Github|
|-|----|--------------|
|1|[Loading Screen](#loading-screen)||
|2|[Sign up page](#sign-up-page)||
|3|[Login Page](#login-page)||
|4|[Home Page](#home-page)||
|5|[Calendar View](#calendar-view)||
|6|[Class View List](#class-view-list)|
|7|[Class View](#class-view)||
|8|[Assignment View](#assignment-view)||
|9|[Update Calendar View](#update-calendar-view)||
|10|[Exam View](#exam-view)|

# Loading Screen
This screen is to be used as a placehold when there is slow network and page is taking longer to load than expected.

- should conatin a loading animation

# Sign up Page
This page is where the user will go to sign up for our service. 

**Required Inputs:**
- Username
    - Check to make sure user does not exist.
        - if exists, change input box border color to red
        - else, change input box border color to green
- school email
    - check to make sure email ends in ".edu"
    - if valid input, change box border color to green
    - if invalue input change box border color to red
- password
    - require strong password
    - if valid input, change input box border color to green
    - if invalue input change input box border color to red

# Login Page
This page is where the user will go to login. 

**Required Inputs:**
- Email
- Password
- Button to confirm credentials
    - After press:
        - If input is valid, redirect to Calendar View
        - else, display alert of invalid inputs and change input boxes border colors to red

# Home Page
This is the first page a user will see when they visit the websit. 

**Contains:**
- A button to redirect to sign up page
- A button to redirect to login page
- A description of what simple school is for and how it should be used
- A demo of Simple School
- If cookies determine that a user has previously signed in, then redirect to login Window


# Calendar View
This will be the Home page for logged in users. It will display a (maybe google) calendar with users selected classes added to it. 

**Should Display:**
- Users upcomming assignments 
    - user shall be able to click on assignment and redirect to Assignment View
    - Displayed as a tile on calendar
        - User shall reserve the right to hide shared calendar entries. (need to determine how to handle this case)
    - Each class shall be displayed as a different color. 
        - Color will be randomly generate based off class code 

- Users upcoming exams/quizzes
    - Displayed as a tile on calendar
        - User shall reserve the right to hide shared calendar entries. (need to determine how to handle this case)

- Update Calendar Button, which redirects to update calendar view
- Sidebar:
    - ability to select or deselect classes that you want to see on the calendar.



# Class View List

# Assignment View

# Exam View