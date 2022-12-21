## College assigment web app.

# General description: *Weichan Wrestling*.
This is the result of a integrated web with, mainly, django.
The purpose is to help with the online presence of an Olympic wrestling club. The wrestling is a sport that recieves and shapes to anyone, and it is practice in a wide range of ages.
That is why, when the oportunity to help a developing club in Santiago de Chile came to us in a college class, we take it. We hope that this web helps a sports club to grow and to the people to introduce themselves or they children to a solid and historic sport.

----------------------------------------------------------------------------------

## Elements:
- Front End:
  - Navbar:
    - Menu.
  - Body:
    - Intro section.
    - About us section.
    - Hours and locations section.
    - News section.
  - Footer.
- Back End:
  - Data base model.
  - Django admin.

----------------------------------------------------------------------------------

# Navbar.
<image src="/photos/firstNavbar.png" alt="navbar">

In this image we can see the main elements on the navbar: at the left the name of the wrestling club and at the right a logo with display a menu when clicked, as it shows in the following image.

<image src="/photos/secondNavbar.png" alt="navbar">

Both the left letters as every item in the menu are anchor links, to make the navigation throught this one page app more effective.

# Body.
## Intro section.
<image src="/photos/firstBlock.png" alt="navbar">

Here we can see the first block of the page. It shows a photo of the adults group of the club (soon a more extenden gallery) and a brief description of the club.

## About us section.
<image src="/photos/secondBlock.png" alt="navbar">

This part is dedicated to the mision and vision of the club. Along with this it is the official logo.

## Hours and location section.
<image src="/photos/thirdBlock.png" alt="navbar">

Here we can distinguish thre main element: a brief introduction, a column of cards and a schedule image.
- The introduction gives an idea of what are we seeing here.
- In each of the cards in the column we can see a division of the Weichan club. Here we can find the age category, the hours, the location and the form to register to every one of them.
- The image at the right side shows an excel to give graphic visualization of the info contained in the differents card.

## News section.
<image src="/photos/fourthBlock.png" alt="navbar">

As seen above, here we can distinguish three main elements: a brief introduction, a column with boxes and an informative image.
- The introduction gives an idea of what are we seeing here.
- In each element of the column we can observe a title and a date. With this boxes the page shows a summarized list of the announcements that, for example, the couch of the club needs to give.
- The image gives information about pre programmed activities.
  
## Footer.
<image src="/photos/footer.png" alt="navbar">
  
Here is how the end of the page looks like, it supposed to have links to the social media of the club and contact information.
  
----------------------------------------------------------------------------------
  
# Data base model.
<image src="/photos/dbWrestling.png" alt="navbar">
  
Here is how the data base was design to fullfil the basic data storage that a wrestling club in development needs. A couple of this tables are displayed to the front end.
The idea it is to give to the club as much freedom as possible about the modification of the displayed info. That why some tables may appear useful for just one register.
  
# Django admin.
For the back end, the default django admin was implemented. As a solid tool to help with this web app developtment wich had a little bit less than 6 months to being ready to launch in his initial versión.
