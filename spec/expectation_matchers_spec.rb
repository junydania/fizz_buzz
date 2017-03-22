describe 'Expectation Matchers' do

  describe 'equivalence matchers' do
    it 'will match loose equality with #eq' do
      a = "2 cats"
      b = "2 cats"
      expect(a).to eq(b)
      expect(a).to be == b

      c = 17
      d = 17.0
      expect(c).not_to eql(d)
    end

    it 'will match value equality with #eql' do
      a = " 2 cats"
      b = " 2 cats"
      expect(a).to eql(b)

      c = b
      expect(b).to equal (c)
      expect(b).to be(c)
    end

  end

  describe 'truthiness matchers' do
    it 'proves if x is less than y' do
    x = 35
    y = 45
    expect(x < y).to be_truthy
    expect(x > y).to be_falsey

    expect(100).to be > 99
    expect(5)
  end
end

  describe 'numeric comparison matchers' do
    it 'will matchess less than/greater than' do
      expect(10).to be > 9
      expect(10).to be >= 10
      expect(10).to be <= 10
      expect(9).to be < 10

    end

    it 'will match numeric ranges' do
      expect(10).to be_between(5,10).inclusive
      expect(10).not_to be_between(5,10).exclusive
      expect(10).to be_within(1).of(11)
      expect(5..10).to cover (9)
    end

    it 'will match array' do
      array = [1,2,3]
      expect(array).to include(2)
      expect(array).to include(1,3)
      expect(array).to start_with(1)
      expect(array).to end_with(3)
      expect(array).to match_array([3,2,1])
      expect(array).not_to match_array([1,2])
      expect(array).to contain_exactly(1,3,2)
      expect(array).not_to contain_exactly(1,2)

    end

  end

  describe 'Trying out observation matchers' do
    it 'will match when events change object attributes' do
      array = []
      expect {array << 1}.to change(array,:empty?).from(true).to(false)
      class CraftPrep
        attr_accessor :prepsession
        def initialize; @prepsession = 0; end
        def increment; @prepsession +=1; end
      end
      prepclass = CraftPrep.new
      expect{prepclass.increment}.to change(prepclass,:prepsession).from(0).to(1)
    end

  end


  describe 'Observe Output matchers' do
    it 'will print to Stdout' do
      expect {print 'Craft Academy'}.to output.to_stdout
      expect {print 'Craft Academy'}.to output('Craft Academy').to_stdout
      expect {print 'Craft Academy'}.to output(/Academ/).to_stdout
      expect {warn 'Syntax error'}.to output(/Syntax error/).to_stderr
    end

end

describe 'Compound expectations' do
  it 'will check complex expectations' do
    data_string = 'Welcome to Craft Academy'
    expect(data_string).to start_with('W') & end_with('y')
    expect(data_string.length).to be_even.or be < 50
  end

end

describe 'Composing Matchers' do
  array = [11,15,13,16,18,19]
  it 'will check if the any of the numbers in the array is less than 20' do
    expect(array).to all (be < 20)
  end
end




end
