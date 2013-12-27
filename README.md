# middleman-bootstrap-sass-bower-slim

## What is it?

Just a template for how I like to set up Middleman projects. This template is
rather generic and provides a good baseline for static sites.

## What's included

* CDN jQuery with local fallback
* local jQuery 1.10.x via [Bower](http://bower.io)
* [Bootstrap for Sass](https://github.com/twbs/bootstrap-sass)
* [Slim Templates](http://slim-lang.com)
* HTML5 Boilerplate based layout with Google Analytics, header, footer, and
  primary nav partials
* Skeleton SCSS development structure with a few helpful utility classes
* Vendored custom modernizr build

## Installation

```
git clone https://github.com/wingrunr21/middleman-bootstrap-sass-bower-slim.git ~/.middleman/bootstrap-sass-bower-slim

middleman init project_name --template=bootstrap-sass-bower-slim

cd project_name

bower install

middleman
```
