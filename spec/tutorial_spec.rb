require_relative "tryruby_helpers"

RSpec.describe "Tutorial", type: :feature, js: true do
  before :each do
    visit "/"
  end

  languages.each do |language|
    describe "in #{language}" do
      before :each do
        find(:css, "#language-menu-toggle").click
        find(:css, %'[data-change-lang="#{language}"]').click

        wait_for_language_load(language)
      end

      dataset = language_dataset(language)

      steps = {
        1 => {pass: true},
        12 => {code: "[12, 47, 35, 1]"},
        31 => {pass: true},
        32 => {pass: true},
        37 => {pass: true},
        39 => {pass: true}, # Would need to scroll to the bottom...
        40 => {code: ->(i) { i.gsub("(0)", "(1591)") }},
        42 => {pass: true},
        43 => {code: ->(i) { i.gsub("a = 100", "a == 100") }},
        44 => {pass: true}, # TODO: Provide a good answer to this
        46 => {pass: true},
        47 => {pass: true},
        52 => {pass: true},
        55 => {pass: true},
        56 => {output: /www.ruby-lang.org/}
      }

      (1..56).each do |step|
        data = dataset[step.to_s]

        # A simplification to get GitHub Actions passed faster
        next if ENV['SIMPLIFIED_RUN'] && (step > 5 && language != 'en' && language != ENV['ADDITIONAL_LANG'])

        it "has a working step #{step} (#{data["title"]})" do
          find(:css, %'#tryruby-index [value="#{step}"]').select_option

          wait_for_updating_to_finish

          the_cookie_of_step.should be == step

          special = steps[step] || {}

          find(:css, "h1").text.should be == data["title"]

          unless special[:pass]
            case special[:code]
            when Proc
              click_button("Copy")
              set_code(special[:code].(code))
            when String then set_code(special[:code])
            when nil then click_button("Copy")
            else raise
            end

            wait_for_execution { click_button("Run") }

            case special[:output]
            when nil then find_all(:css, ".tryruby-output-green").count.should be >= 1
            else special[:output].should be === code(:output)
            end
          end

          unless step == 56
            click_button("Next")
            the_cookie_of_step.should be == step + 1
          end
        end
      end

      it "displays a correct title on the first page of the tutorial" do
        page.should have_content(dataset["1"]["title"])
        the_cookie_of_step.should be == 1
      end
    end
  end
end
