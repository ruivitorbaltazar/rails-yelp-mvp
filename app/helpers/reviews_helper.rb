module ReviewsHelper
  def rating(rating)
    content_tag :div, class: 'stars' do
      rating.times do
        concat content_tag(:i, '', class: 'fas fa-star')
      end

      (5 - rating).times do
        concat content_tag(:i, '', class: 'far fa-star')
      end
    end
  end
end
