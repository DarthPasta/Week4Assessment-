# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

choice = ARGV[0]
param1 = ARGV[1]
param2 = ARGV[2]
param3 = ARGV[3]
param4 = ARGV[4]

case 
when choice == "list"
	Song.list
when choice == "new"
	a.new(param1, param2, param3)
when choice == "update"
	Song.update(param1.to_i, param2, param3,param4)
when choice == "remove"
	a.remove(param1)
end