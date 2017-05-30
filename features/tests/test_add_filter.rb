require_relative '../config/filters'
class TestAddFilter
  attr_accessor :driver
  def initialize(screens)
    @screens = screens
    @filter_data = Filter.new('property_filter')
  end

  def close_intro
    @screens.screen_intro.visible?('global')
    @screens.screen_intro.close_intro
  end

  def select_category
    @screens.screen_create_filter.visible?
    @screens.screen_create_filter.select_category(@filter_data.category)
    @screens.screen_select_sub_category.visible?(@filter_data.category)
  end

   def select_sub_category(sub_cat_hash)
    @screens.screen_select_sub_category.visible?(sub_cat_hash['title'])
    @screens.screen_select_sub_category.select_sub_category(
      sub_cat_hash['option']
    )
   end

  def open_filter_parameter_screen
    select_category
    @filter_data.sub_categories.each do |sub_category|
      select_sub_category(sub_category)
    end
  end

  def test_enter_parameters(parameter_type)
    types = ['name', 'price', 'area']
    @screens.screen_enter_filter.enter_filter_name(@filter_data.enter_properties(parameter_type, types[0]), types[0])
    @screens.screen_enter_filter.enter_filter_name(@filter_data.enter_properties(parameter_type, types[1]), types[1])

  end

end
