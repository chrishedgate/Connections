require File.join(File.dirname(__FILE__), './spec_helper')
require 'connections'

module Connections
  describe 'Connections' do
    it 'version_check' do
      VERSION.should == '0.0.1'
    end
  
    context 'Network' do
      context '#self.initialize' do
        n = Network.new()
        
        it 'should have 0 nodes' do
          n.nodes.count.should equal(0)
        end
      end
    end
  end
end
