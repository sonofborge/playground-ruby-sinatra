# Ruby Sinatra Playground

A quick and dirty
[Sinatra](http://sinatrarb.com/)
boilerplate for quickly iterating on web app ideas in Ruby.

## Purpose

Sometimes you just want to try an idea out super quick,
and you don't need or want to spin up a whole
[Ruby on Rails](https://rubyonrails.org/)
application to do it.
This project provides a simple, unopinionated launch point to work out ideas in ruby,
whether it's design patterns,
api architecting,
or just faffing about because you have nothing else better to do.
;)

## Up and Running

Regardless of what method you choose below to run the application,
you will need to have
[Git](https://git-scm.com/)
installed on your system,
and you will need to run the following command:

1.  Clone the repo down to your system and change into the project directory.

    ```sh
    git clone https://github.com/sonofborge/ruby-sinatra-playground.git && \
    cd ruby-sinatra-playground
    ```

### The Docker Way

This method requires that you have
[Docker](https://docs.docker.com/)
and
[Docker Compose](https://docs.docker.com/compose/)
installed on your system.

1.  Run the following command to build and run the application.

    ```sh
    docker-compose up --build
    ```

1.  You should now be able to access the application at `localhost:5000`.

### The Local Way

This method requires that you have
[Ruby](https://www.ruby-lang.org/)
and the
[Bundler](https://bundler.io/)
gem installed on your system.
Please check the `.ruby-version` file for the version of ruby this project depends on.

1.  Install project dependencies with Bundler.

    ```sh
    bundle install
    ```

1.  Start the local web server.

    ```sh
    bundle exec shotgun config.ru -o 0.0.0.0 -p 5000
    ```

1.  You should now be able to access the application at `localhost:5000`.

## Notes

Auto-reloading of the
[Rack](https://github.com/rack/rack)
(Ruby webserver interface) is achieved with the
[Shotgun](https://github.com/rtomayko/shotgun)
gem,
so you don't have to restart the application server manually every time you make a code change.
