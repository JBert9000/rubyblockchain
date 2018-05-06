require './first_block'
require './block'
require './next_block'

# Create the blockchain and add the genesis block
blockchain = [create_genesis_block]
previous_block = blockchain[0]

# How many blocks should we add to the chain
# after the genesis block
num_of_blocks_to_add = 20

# Add blocks to the chain
num_of_blocks_to_add.times do |i|
  block_to_add = next_block(previous_block)
  blockchain << block_to_add
  previous_block = block_to_add
  # Tell everyone about it!
  puts "Block #{block_to_add.index} has been added to the blockchain!" 
  puts "Hash: #{block_to_add.hash}\n"
 end