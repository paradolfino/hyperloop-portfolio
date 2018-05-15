# Running Hyperloop in Cloud9

This is probably the easiest way to get started doing full stack development with Hyperloop if you don't already have
Rails setup on your machine. 

Even if you are an experienced Rails developer there are some advantages to doing your first experiments on cloud 9:

+ You will get a consistent setup, which will avoid any possible configuration problems between linux/mac/windows OS versions, etc.
+ Cloud9 supports co-development, so if you hit a snag it makes it even easier to get help from others.
+ Your development server can be accessed by others through your unique cloud9 url so you can immediately show people on other machines the Hyperloop multi-client synchronization.

Once you are comfortable with Hyperloop, transitioning your app back to your normal development environment is as easy as doing a git pull of your saved repo.

### Step 1: Get a Cloud9 account

Go to [Cloud 9's website](https://c9.io/?redirect=0) and signup for an account (you can use your github account for signup.)  You will have to supply a credit card, but to our knowledge Cloud9 can be trusted!

### Step 2: Create Your New Workspace

You will be invited to create your first workspace.  Cloud9 gives you one private workspace and any number of public workspaces.  We recommend you use the public option for your first experiments.

Put `git@github.com:ruby-hyperloop/rails-clone-and-go.git` into the field titled titled `Clone from Git or Mercurial URL (optional)`.

Select the "Ruby on Rails" template type, and click the [Create workspace] button.

### Step 3. Choose Your Branch
The Hyperloop clone and go repo has two branches: master and thin. If you are running on the default Cloud9 512MB workspace then you should switch the thin branch before proceeding. This will use a lot less resources (but will be using polling instead of ActionCable) for push communications. To checkout the thin branch run
```bash
git checkout thin
```
in the terminal (bash) window.

### Step 4: Run the Setup Script

Once your workspace is created you should see the readme displayed.  Just follow the directions and run

`./bin/setup` to complete the initialization process.

### Step 5: Fire Up The Server

Use the cloud9 run command (along the nav top bar) or run `bin/hyperloop` in a terminal window 

### Step 5: Visit the App

You can see the App running right in the IDE window by clicking on `preview` in the top nav bar,
or by pasting your unique cloud9 url into another browser window
