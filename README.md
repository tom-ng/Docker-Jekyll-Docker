# STC-Jekyll-Docker

A docker wrapper for Jekyll, configured to be run with STC website (compatibility with other Jekyll-related projects are not tested).

If you're using **Linux** or **MacOS**, use [`RVM`](https://rvm.io/) directly.

## Prerequisite
1. Virtualization is enabled (Instructions to check [here](https://www.shaileshjha.com/how-to-find-out-if-intel-vt-x-or-amd-v-virtualization-technology-is-supported-in-windows-10-windows-8-windows-vista-or-windows-7-machine/))
	* If virtualization is not enabled, ask a friend
1. Docker Toolbox is installed [download link](https://docs.docker.com/toolbox/toolbox_install_windows/)

## How to install
1. Run `Docker Quickstart Terminal`
1. In the terminal, navigate to user profile with `cd ~`
1. Run `git clone https://github.com/tom-ng/STC-Jekyll-Docker.git`
1. Enter STC-Jekyll-Docker folder with `cd STC-Jekyll-Docker`
1. Fork and set up the [repo](https://github.com/sunwaytechclub/sunwaytechclub-site) of sunwaytechclub website, tutorial to do so [here](https://help.github.com/articles/fork-a-repo/)
1. Go into the repo with `cd sunwaytechclub-site`
1. Checkout the `source-dev` branch by running `git checkout source-dev`
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
