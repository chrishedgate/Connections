require 'node'

describe "A node" do

  context "#self.initialize" do
    node = Node.new()
    
    it "has no neighbors" do
      node.neighbors.count.should == 0
    end
  end           
end