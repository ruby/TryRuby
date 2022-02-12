require_relative "tryruby_helpers"

RSpec.describe "Playground", type: :feature, js: true do
  before :each do
    visit "/playground"
  end

  playground_test = -> msg, result, ruby do
    it msg do
      set_code ruby
      click_button "Run"
      code(:output).chomp.should be == result
    end
  end

  playground_test.call "should be able to evaluate simple Ruby code", "6", <<~RUBY
    def test
      2
    end

    test + test * test
  RUBY

  playground_test.call "should support flip-flops", (50..55).to_a.join("\n"), <<~RUBY
    (1..100).each do |i|
      if (i == 50) .. (i == 55)
        puts i
      end
    end
  RUBY

  playground_test.call "should support pattern matching", "6", <<~RUBY
    {a: 6, b: 7} => {a:}
    puts a
  RUBY

  playground_test.call "should support classes, modules and refinements", "123", <<~RUBY
    module M
      def m = 3
    end

    class A
      include M
      def m = super + 20
    end

    class B < A
      def m = super + 50
    end

    module R
      refine B do
        def m = super + 50
      end
    end

    using R

    B.new.m
  RUBY
end
