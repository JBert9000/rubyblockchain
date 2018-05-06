require './block'

def create_genesis_block
	Block.new(0, Time.now, "Genesis Block", "0")
end