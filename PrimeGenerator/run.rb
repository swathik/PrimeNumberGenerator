$LOAD_PATH.unshift(File.dirname(__FILE__) + '/lib')
require 'cli'

number = ARGV[0] || "10"
Cli.new(number).start
