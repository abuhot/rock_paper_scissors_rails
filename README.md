# Rock Paper Scissors

We are going to build a simple game. Users are allowed to choose Rock, Paper, or Scissors by visiting one of the following URLs:

 - [http://localhost:3000/rock](http://localhost:3000/rock)
 - [http://localhost:3000/paper](http://localhost:3000/paper)
 - [http://localhost:3000/scissors](http://localhost:3000/scissors)

And we will tell them whether they won or lost.

### Part 1

Add support for each URL one at a time. For each one,

 1. Complete the RCAV and display "Hi!" to prove that you did so. Make up whatever names you want for the controller and action.
 1. Now step back into the action and write some logic to determine whether the player won or lost. Put the computer move and the outcome into instance variables.
 1. In the view template, display the instance variables. Format it a little with some markup and some copy.

#### Optional

Once you have completed the above for all three URLs,

 1. On each page, add links to get to the other two pages (so that our users don't have to keep typing into the address bar).
 1. I dropped three images in the `public/assets/images` folder: `rock.png`, `paper.png`, and `scissors.png`. Therefore, they are available to use at [http://localhost:3000/assets/images/rock.png](http://localhost:3000/assets/images/rock.png), etc. Use the images on your pages as you see fit.
 1. I also dropped `bootstrap.css` in the `public/assets/css` folder. Link to it in `app/views/layouts/application.html.erb`, and use Bootstrap styles to make everything look nicer.


