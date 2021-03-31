require_relative '../lib/inspiration.rb'
require_relative '../lib/jokes.rb'

RSpec.describe Inspiration do
    describe '#learn_new_thing' do
        let(:learn) { Inspiration.new }
        let(:learn_json) {learn.learn_new_thing}
       
        it 'should return json response when the request is successful' do
            expect(learn_json.class).to eql(Array)
        end

        it 'should return response when an array is not empty' do
            expect(learn_json.length).to_not eql(0)
        end
        
    end
end