require File.join(File.dirname(__FILE__), './spec_helper')
require 'connections'

module Connections
  describe 'Connections' do
    it 'version_check' do
      VERSION.should == '0.0.1'
    end
  
    context 'Network' do
      n = Network.new()
      
      it 'should have 0 nodes' do
        n.nodes.count.should equal(0)
      end
      
      context 'when adding nodes from empty source' do
        src = double()
        n.add_nodes(src)

        it 'should still have 0 nodes' do
          n.nodes.count.should equal(0)
        end
      end
      
      #context 'when adding nodes from source with one node' do
      #  src = double('src')
      #  src.stub(:nodes).and_return([])
      #  it 'should have one node' do
      #    n.nodes.count.should equal(0)
      #  end
      #end      
    end
  end
end
