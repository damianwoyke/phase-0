**How does tracking and adding changes make developers' lives easier?**

  Tracking and adding changes creates a non destructive workflow, one which is much eaiser to go back to past versions and fix any bugs.

**What is a commit?**

  A commit is a way of saving.

**What are the best practices for commit messages?**

  Use imperative present tense. keep message short but descript of changes made.

**What does the HEAD^ argument mean?**

  Revert back to the closest commit.

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**

Once you make the change the three stages would be to add, commit, and then push. To add a file, check to see if anyfiles need to be added by typing "git status" then take the file you want to add and type "git add <file>" The second step is to commit/save the file/s, to do that type "git commit -m "message"".
Once you have that done, you'll want to push the changes to GitHub and to do that you type "git push origin <branch>".


**Write a handy cheatsheet of the commands you need to commit your changes?**

  * git checkout branch_name -- move to branch
  * git checkout -b new_branch_name -- create then move to branch
  * git status -- check status
  * git add file_name -- add the worked on file to be commited
  * git commit -m -- commit/save the work and add message.

**What is a pull request and how do you create and merge one?**

Once you push the branch to GitHub, a row of information will show up where you can press "Compare and pull request" once you click on this, you can see the origin file and the changes just made. Once reviewing you can merge the changes.


**Why are pull requests preferred when working with teams?**

  The pull request lets teams know when code is ready for review and it stops people from breaking the master code for everyone else.