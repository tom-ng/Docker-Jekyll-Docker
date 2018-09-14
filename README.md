# STC-Jekyll-Docker

A docker wrapper for Jekyll, configured to be run with STC website (compatibility with other Jekyll-related projects are not tested).

## How to install
1. Install [Docker Toolbox](https://docs.docker.com/toolbox/) (Install everything on the checkbox part)
1. Run `Docker Quickstart Terminal`
1. In the terminal, navigate to user profile with `cd ~`
1. Run `git clone https://github.com/tom-ng/STC-Jekyll-Docker.git`
1. Enter `STC-Jekyll-Docker`
1. Fork and set up the [repo](https://github.com/sunwaytechclub/sunwaytechclub-site) of sunwaytechclub website, tutorial to do so [here](https://help.github.com/articles/fork-a-repo/)
1. To run, simply type `docker-compose up -d` in `STC-Jekyll-Docker` folder

## How to develop STC website
1. Run `Docker Quickstart Terminal`
1. Navigate to `STC-Jekyll-Docker`
1. `docker-compose up -d`
1. Edit contents in `sunwaytechclub-website`
1. You can see changes you made after a reload on browser
1. Push and request PR after committing the changes, ask a friend if you aren't sure how.
1. Website is available to view from `192.168.99.100`

## How to exit from Docker or the container gracefully (properly)
1. Run `docker-compose down` in `STC-Jekyll-Docker` directory
1. Exit the terminal

Further documentations on how to operate Git and developing STC website will be listed in that repo/trello.
