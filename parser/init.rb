#INITIAL CLASS

APP_ROOT = File.dirname(__FILE__)

$:.unshift(File.join(APP_ROOT,'lib')) 
require 'parser'

parser = Parser.new
parser.introduction