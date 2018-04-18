#!/usr/bin/env ruby

require 'google/cloud/vision'

vision = Google::Cloud::Vision.new
search_label = "hot dog"

Dir['images/**/*.jpg'].each do |image_path|
  image_result = vision.image(image_path)

  label_results = image_result.labels
  hit_labels = label_results.select{ |annotation| annotation.description.include? search_label }

  if hit_labels.size > 0
    max_score = (hit_labels.max{ |annotation| annotation.score }.score * 100).round
    puts "#{search_label.capitalize}. We are #{max_score}% sure for #{image_path}."
  else
    puts "Not #{search_label}. #{image_path}"
  end
end
