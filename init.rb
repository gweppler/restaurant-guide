#!/usr/bin/env ruby

# Food Finder 
#
# Launch this Ruby file from the command line
# to get started.
#

# you may want to make this file executable with:
# chmod a+x restaurant_guide.rb

APP_ROOT = File.dirname(__FILE__)

# require "#{APP_ROOT}/lib/guide"
# require File.join(APP_ROOT, 'lib', 'guide.rb')
# require File.join(APP_ROOT, 'lib', 'guide')

$:.unshift(File.join(APP_ROOT, 'lib') )

require 'guide'

guide = Guide.new('restaurant.txt') # i know you want CamelCase but this is what he did.
guide.launch!
