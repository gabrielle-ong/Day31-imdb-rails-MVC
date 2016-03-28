# day31-lab-imdb2
### Fix IMDB...as a team! Independent Practice (15 mins)

In the independent practice sections, throughout the rest of the lesson and the following lab, you'll work with the student next to you to create a working IMDB application by adding code to an existing project and using Git/GitHub to collaborate.  You have been given most of the app, including the views, in the starter code. Your job, by the end of the day, is to make the following command work, without error:

`rake db:seed`

You will need to work your way through creating controllers and models, and then populating those models with the appropriate associations and methods. Once rake db:seed works, you'll click through every page of the application until all error messages are resolved.  Your application will look like this:

<p align="center">
<img src="http://i.imgur.com/Fqun13q.png"
</p>

To start:

- One student should create a Github Repo and push the starter code (from Slack) to it.
- Add the second student as a contributor to this repository
- The second student should clone the newly-forked repo, so they have a local copy and can start working

To practice using Git/GitHub as a team, you'll each take one model and build it on feature branches:

**Student 1** should create a new branch called `actor-movie-models` and fill in the Actor and `Movie` models:
  - Movies have and belong to many actors; they also have many reviews
  - Actors have and belong to many movies
  - The actor model should have an `age` method that returns the actors age by subtracting the actors `year_of_birth` from the `Time.now.year`

**Student 2** should create a new branch called `review-user-models` and fill in the Review and an User models:
  - Reviews belong to movies; they also belong to users
  - Users have many reviews
  - The user model should have a `full_name` method that returns an interpolated string with the user's `first_name` and `last_name`

Now, each student should `git push origin <branch name>`.
