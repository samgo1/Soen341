# README


* Rails- Introduction
Rails is a web-application framework that includes everything needed to create database-backed web applications according to the Model-View-Controller (MVC) pattern.

Understanding the MVC pattern is key to understanding Rails. MVC divides your application into three layers, each with a specific responsibility.

The Model layer represents your domain model (such as Account, Product, Person, Post, etc.) and encapsulates the business logic that is specific to your application. In Rails, database-backed model classes are derived from ActiveRecord::Base. Active Record allows you to present the data from database rows as objects and embellish these data objects with business logic methods. You can read more about Active Record in its README. Although most Rails models are backed by a database, models can also be ordinary Ruby classes, or Ruby classes that implement a set of interfaces as provided by the Active Model module. You can read more about Active Model in its README.

The Controller layer is responsible for handling incoming HTTP requests and providing a suitable response. Usually this means returning HTML, but Rails controllers can also generate XML, JSON, PDFs, mobile-specific views, and more. Controllers load and manipulate models, and render view templates in order to generate the appropriate HTTP response. In Rails, incoming requests are routed by Action Dispatch to an appropriate controller, and controller classes are derived from ActionController::Base. Action Dispatch and Action Controller are bundled together in Action Pack. You can read more about Action Pack in its README.

The View layer is composed of "templates" that are responsible for providing appropriate representations of your application's resources. Templates can come in a variety of formats, but most view templates are HTML with embedded Ruby code (ERB files). Views are typically rendered to generate a controller response, or to generate the body of an email. In Rails, View generation is handled by Action View. You can read more about Action View in its README.

Active Record, Active Model, Action Pack, and Action View can each be used independently outside Rails. In addition to that, Rails also comes with Action Mailer (README), a library to generate and send emails; Active Job (README), a framework for declaring jobs and making them run on a variety of queueing backends; Action Cable (README), a framework to integrate WebSockets with a Rails application; Active Storage (README), a library to attach cloud and local files to Rails applications; and Active Support (README), a collection of utility classes and standard library extensions that are useful for Rails, and may also be used independently outside Rails.

* References: https://github.com/rails/rails/blob/master/README.md

# Coding Style

Coding style used in the development of our web application is based on the following guides.

* References: https://github.com/airbnb/ruby
* 			  https://github.com/bbatsov/rails-style-guide

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
