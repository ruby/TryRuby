require_relative "tryruby_helpers"

RSpec.describe "Playground", type: :feature, js: true do
  context "engine" do
    engines = ["opal-ww-1.7.1", "cruby-3.2.0"]
    engines.each do |engine|
      context engine do
        before :each do
          visit "/playground"
          select_engine engine
        end

        playground_test = -> msg, result, ruby do
          it msg do
            set_code ruby
            wait_for_execution { click_button "Run" }
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
    end
  end

  context "should update the textfield on hash code update" do
    it "on the first load" do
      visit "/playground#code=1"
      code(:editor).should be == "1"
    end

    it "on the further load" do
      visit "/playground"
      visit "/playground#code=2"
      code(:editor).should be == "2"
    end

    it "on the first load with engine selected" do
      visit "/playground#code=3&engine=opal"
      code(:editor).should be == "3"
    end

    it "on the further load with engine selected" do
      visit "/playground"
      visit "/playground#code=4&engine=opal"
      code(:editor).should be == "4"
    end
  end
end
