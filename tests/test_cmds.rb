require_relative 'test_base'

class TestCmds < TestBase

	def test_mget
		@rc.set('test1', 'test1')
		@rc.set('test2', 'test2')
		@rc.set('test3', 'test3')
		@rc.set('test4', 'test4')

		assert_equal(['test2', 'test1', 'test3'], @rc.mget(['test2', 'test1', 'test3']))
		assert_equal(['test2', 'test1', 'test3'], @rc.mget('test2', 'test1', 'test3'))

		assert_equal(['test2', 'test1', 'test3', ''], @rc.mget(['test2', 'test1', 'test3', 'test5']))
		assert_equal(['test2', 'test1', 'test3', nil], @rc.mget(['test2', 'test1', 'test3', nil]))
		
	end

end