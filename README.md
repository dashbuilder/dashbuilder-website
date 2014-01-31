dashbuilder-website
===================

Sources for the website http://www.dashbuilder.org

# How to build with Awestruct

Follow the instructions of Awestruct's [getting started guide](http://awestruct.org/getting_started/).

First set up your environment correctly:

    $ curl -L https://get.rvm.io | bash -s stable --ruby=1.9.3
    $ gem install awestruct bundler
    $ rake setup

Then build the website (before and after your changes):

    $ rake clean build
    $ firefox _site/index.html


