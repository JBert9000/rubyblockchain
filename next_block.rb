require './block'
def next_block(last_block)
  this_index = last_block.index + 1
  this_timestamp = Time.now
  this_data = "Hey! I'm block #{this_index.to_s}"
  this_hash = last_block.hash
  Block.new(this_index, this_timestamp, this_data, this_hash)
end