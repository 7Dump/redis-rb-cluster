require './rediscluster'
require 'pp'

    startup_nodes = [
        {:host => "127.0.0.1", :port => 7001},
        {:host => "127.0.0.1", :port => 7002}
    ]


rc = RedisCluster.new(startup_nodes)

rc.client.reconnect

rc.set('hello0', 'Redis cluster hello world0')
rc.set('hello1', 'Redis cluster hello world1')
rc.set('hello2', 'Redis cluster hello world2')
rc.set('hello3', 'Redis cluster hello world3')
rc.set('hello4', 'Redis cluster hello world4')
pp rc.get('hello0')
pp rc.get('hello1')
pp rc.get('hello2')
pp rc.get('hello3')
pp rc.get('hello4')

# last = false

# while not last
#     begin
#         last = rc.get("__last__")
#         last = 0 if !last
#     rescue => e
#         puts "error #{e.to_s}"
#         sleep 1
#     end
# end

# ((last.to_i+1)..1000000000).each{|x|
#     begin
#         rc.set("foo#{x}",x)
#         puts rc.get("foo#{x}")
#         rc.set("__last__",x)
#     rescue => e
#         puts "error #{e.to_s}"
#     end
#     sleep 0.1
# }
