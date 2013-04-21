$LOAD_PATH.unshift(File.dirname(__FILE__) + '/lib')
require 'cli'

count = ARGV[0] || "10"
Cli.new(count).start
