require File.join(File.dirname(__FILE__), './spec_helper')
require 'node'

module Connections
  describe 'Node' do
    context '#self.initialize' do
      node = Node.new()

      it 'has no neighbors' do
        node.neighbors.count.should == 0
      end
    end
  end          
end