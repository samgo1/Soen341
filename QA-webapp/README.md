# README

## Ruby-on-Rails

Rails is a web application development framework written in the Ruby language. It is designed to make programming web applications easier by making assumptions about what every developer needs to get started. It allows you to write less code while accomplishing more than many other languages and frameworks. Experienced Rails developers also report that it makes web application development more fun.

Rails is opinionated software. It makes the assumption that there is a "best" way to do things, and it's designed to encourage that way - and in some cases to discourage alternatives. If you learn "The Rails Way" you'll probably discover a tremendous increase in productivity. If you persist in bringing old habits from other languages to your Rails development, and trying to use patterns you learned elsewhere, you may have a less happy experience.

The Rails philosophy includes two major guiding principles:

* Don't Repeat Yourself: DRY is a principle of software development which states that "Every piece of knowledge must have a single, unambiguous, authoritative representation within a system." By not writing the same information over and over again, our code is more maintainable, more extensible, and less buggy.

* Convention Over Configuration: Rails has opinions about the best way to do many things in a web application, and defaults to this set of conventions, rather than require that you specify minutiae through endless configuration files.


Rails is a web-application framework that includes everything needed to create database-backed web applications according to the Model-View-Controller (MVC) pattern.

Understanding the MVC pattern is key to understanding Rails. MVC divides your application into three layers, each with a specific responsibility.

The Model layer represents your domain model (such as Account, Product, Person, Post, etc.) and encapsulates the business logic that is specific to your application. In Rails, database-backed model classes are derived from ActiveRecord::Base. Active Record allows you to present the data from database rows as objects and embellish these data objects with business logic methods. Although most Rails models are backed by a database, models can also be ordinary Ruby classes, or Ruby classes that implement a set of interfaces as provided by the Active Model module.

The Controller layer is responsible for handling incoming HTTP requests and providing a suitable response. Usually this means returning HTML, but Rails controllers can also generate XML, JSON, PDFs, mobile-specific views, and more. Controllers load and manipulate models, and render view templates in order to generate the appropriate HTTP response. In Rails, incoming requests are routed by Action Dispatch to an appropriate controller, and controller classes are derived from ActionController::Base. Action Dispatch and Action Controller are bundled together in Action Pack. 

The View layer is composed of "templates" that are responsible for providing appropriate representations of your application's resources. Templates can come in a variety of formats, but most view templates are HTML with embedded Ruby code (ERB files). Views are typically rendered to generate a controller response, or to generate the body of an email. In Rails, View generation is handled by Action View. 

Active Record, Active Model, Action Pack, and Action View can each be used independently outside Rails. In addition to that, Rails also comes with Action Mailer, a library to generate and send emails; Active Job, a framework for declaring jobs and making them run on a variety of queueing backends; Action Cable, a framework to integrate WebSockets with a Rails application; Active Storage , a library to attach cloud and local files to Rails applications; and Active Support, a collection of utility classes and standard library extensions that are useful for Rails, and may also be used independently outside Rails.

* References: 
*			  https://github.com/rails/rails/blob/master/README.md
*			  http://guides.rubyonrails.org/getting_started.html

# Coding Style

Coding style used in the development of our web application is based on the following guides.

* References: 
		[Ruby Style Guide](https://github.com/airbnb/ruby)
		[Rails Style Guide](https://github.com/bbatsov/rails-style-guide)



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
