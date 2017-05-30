class Screens
  attr_accessor :driver
  def initialize(driver)
    @driver = driver
  end
  def screen_intro
    @screen_intro ||= ScreenIntro.new @driver
    @screen_intro
  end

  def screen_create_filter
    @screen_create_filter ||= ScreenCreateFilter.new @driver
    @screen_create_filter
  end

  def screen_select_sub_category
    @screen_select_sub_category ||= ScreenSelectSubcategory.new @driver
    @screen_select_sub_category
  end

  def screen_enter_filter
    @screen_enter_filter ||= ScreenEnterFilter.new @driver
    @screen_enter_filter
  end

  def screen_filter_page
    @screen_filter_page ||= ScreenFilter.new @driver
    @screen_filter_page
  end
end
