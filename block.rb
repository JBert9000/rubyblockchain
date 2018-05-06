require 'digest'

class Block
	attr_accessor :index,:timestamp,:data,:previous_hash,:hash

	def initialize(index, timestamp, data, previous_hash)
		@index = index
	    @timestamp = timestamp
	    @data = data
	    @previous_hash = previous_hash
		@hash = hash_block
	end


	def hash_block
	    Digest::SHA512.hexdigest "#{index.to_s}  #{timestamp.to_s}  #{data.to_s} #{previous_hash.to_s}" 
	end

end