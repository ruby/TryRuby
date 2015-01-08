require 'nokogiri'

class Convert
  def initialize(filename)
    @doc = Nokogiri::HTML(File.open(filename))

    @step = 0

    @doc.xpath("//html/body/div").each do |node|
      cnvrt node
    end
  end

  def cnvrt(node)
    @step += 10
    node_class  = node["class"] != 'stretcher' ? "class:  #{node["class"]}\n" : ''
    node_title  = node.at_css("h3").content
    node_answer = node.at_css(".answer") ? node.at_css(".answer").content : ''
    node_load   = node.at_css(".load") ? "load:   #{node.at_css(".load").content}\n" : ''

    content = ''
    node.children.each do |child1|
      content += child1.to_s if child1.name != 'h3' && child1.name != 'div'
    end

    content = content.strip

    content.gsub!("<br>", "\n")

    content.gsub!("<p>", "")
    content.gsub!("</p>", "")

    content.gsub!("<ul>", "")
    content.gsub!("</ul>", "")

    content.gsub!("<li>", "    ")
    content.gsub!("</li>", "")

    content.gsub!("<code class=\"cmd\">", "\n    ")
    content.gsub!("<code>", "")
    content.gsub!("</code>", "")

    content.gsub!("<strong>", "__")
    content.gsub!("</strong>", "__")

    content.gsub!("<em>", "__")
    content.gsub!("</em>", "__")


    File.open("converted/try_ruby_#{@step}.md", 'w') do |f|
      output = "---
lang:   EN
title:  #{node_title}
answer: #{node_answer}
ok:     
error:  
#{node_class}#{node_load}---

#{content}
"

      f.write(output)
    end

    #puts content
    puts "Written: converted/try_ruby_#{@step}.md"
  end
end

system 'clear'
#Convert.new('ruby-guide-en.html_')
Convert.new('ruby-guide-es.html_')
