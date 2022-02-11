require_relative "tryruby_helpers"

RSpec.describe "Playground", type: :feature, js: true do
  before :each do
    visit "/playground"
  end

  it "should be able to evaluate simple Ruby code" do
    set_code <<~RUBY
      def test
        2
      end

      test + test * test
    RUBY

    click_button "Run"

    code(:output).chomp.should == "6"  
  end

  it "should be able to evaluate more advanced Ruby code" do
    set_code <<~RUBY
      (1..100).each do |i|
        if (i == 50) .. (i == 55)
          puts i
        end
      end

      {a: 6, b: 7} => {a:}

      puts a
    RUBY

    click_button "Run"

    code(:output).chomp.should == [50,51,52,53,54,55,6].join("\n")
  end
end
