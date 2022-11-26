require 'tilt/opal'

Opal.append_path "#{__dir__}/app"

class OpalBuilder < Opal::Builder
  def to_s
    super + "\n" + source_map.to_data_uri_comment
  end
end
