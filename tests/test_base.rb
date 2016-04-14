require_relative '../rediscluster'
require 'test/unit'


class TestBase < Test::Unit::TestCase

  OK = "OK"
  KEY = "asdf"

  def setup
    host = '127.0.0.1'
    port1 = '7002'
    port2 = '7003'

    startup_nodes = [
      {:host => host, :port => port1},
      {:host => host, :port => port2},
    ]
    @rc = RedisCluster.new(startup_nodes)
  end

  def teardown
    
  end

end
