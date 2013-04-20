task :test do
	["cli_test", "image_test"].each do |file|
		ruby "-I . test/#{file}.rb"
	end
end

task :run do
	ruby "-I . lib/run.rb"
end