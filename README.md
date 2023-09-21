# Test-task

# Requirements

•	Images carousel: when user swipe left or right, list content should change accordingly. The images carousel can handle any number of images.

•	The list: when user scrolls up the whole page should scroll with it. The list can handle any number of items.
P.S. images and list content can be local or loaded from the internet.

•	Search: Search bar should pin top when it reaches screen top. When user enter text, it should filter the labels in the list based on the user input.

•	Don’t use third party libraries.

***

# Expected result
<img width="256" alt="image" src="https://github.com/LDrevych/Test-task/assets/105346496/209f66de-48c2-446a-a319-b29d7e329d3c">

# Explanation of requirements from the executive

1.  Images carousel: when user swipe left or right, list content should change accordingly. The images carousel can handle any number of images.
    
    A carousel containing random data was created to display content. This amount of random data is generated every time in a different way, that is, this list can contain as much content as you want, and the amount of content changes every time, for more information, see ContentViewModel
    Every time the user swipes, the content content changes according to the selected item, which will make a new list of the best movies.

Clarification: When you go to the ViewModel do not be surprised + 1 to the value of the current page. This is doable so you don't get an error from the API

2.  The list: when the user scrolls up the whole page should scroll with it. The list can handle any number of items.
P.S. Images and list content can be local or loaded from the internet.

    The list contains the content of any number of models we receive from the network(but we restrict in amount of data that we receive from the endpoint).

3.  Search: The search bar should pin top when it reaches the screen top. When a user enters text, it should filter the labels in the list based on the user input.
    
    When the user scrolls the content, the search foams to the top. Also, the content is filtered when the user types the title of the movie

# Time 

This time only covers of adding code to the project and also doesn't include time for updating README.md and video recording 
<img width="1512" alt="Screenshot 2023-08-25 at 13 35 39" src="https://github.com/LDrevych/Test-task/assets/105346496/928ce903-5a00-40b7-9b8e-41a9e57731c8">

Total time base on current time: 1:52 

# Result 
Due to an issue with Github which can only upload videos less than 10MB records from the Simulator will be published into Google Drive 
[Demo of work](https://drive.google.com/file/d/1QIgBqPBYGRTWJwtbL5-KGHaLPdq0uvGc/view?usp=sharing)

