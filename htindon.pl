#!/usr/bin/env perl
use Mojolicious::Lite;
use Email::Stuffer;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

get '/' => sub { shift->render('index')};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
Welcome to the Mojolicious real-time web framework!

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
