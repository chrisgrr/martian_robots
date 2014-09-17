require "spec_helper"

module MartianRobots
  describe World do
    let(:width)  { 30 }
    let(:height) { 40 }
    subject { World.new(width, height) }

    describe '.new' do
      it 'is invalid without a width and height' do
        expect { World.new nil, nil}.to raise_error
      end

      it 'is invalid if the height or width is greater than 50' do
        expect { World.new 51, 40}.to raise_error
        expect { World.new 40, 51}.to raise_error
      end

      it 'is invalid if the height or width is less than 0' do
        expect { World.new -1, 40}.to raise_error
        expect { World.new 40, -1}.to raise_error
      end

      it 'is valid with a width or height less than 50' do
        expect { World.new 30, 40}.to_not raise_error
      end
    end
  end
end