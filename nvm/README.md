# npm "all local" installs

this project encapsulates dotfiles around JS, trying to separate the logic from the data-objects.

installing npm into a globally callable container, spun up at start-time;

questions: 
  what are the necessary npm scripts that need to be run from inside a callable docker-container?

## npm start (pseudo-global)
if local .npmrc with package.json exists
  dont scaffold application with npm scripts
   pseudoglobal dependencies: local dependencies
    if not
      create lcoal dependencies with a containerization starttegy

default system: add default component, where component is the first abstracted folder level down, without 
  |
  |-component
    |-element
    |-element
  |-
  
else 
  scaffold javascript application (accepting flags as yo input)
      create-react-app
      create-preact-app
      nodejs-application
    npm init -y (with defaulting projectname as foldername etc)
    npm scripts {
      npm start to run a 
    }

spinning up a whole project to dir with own dockerization
checking fodlre content and analyze with currently active developer environment.


  yo: 
