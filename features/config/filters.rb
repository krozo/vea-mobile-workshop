require 'yaml'
class Filter
  attr_accessor :name, :category, :sub_categories, :parameters_positive, :parameters_negative

  def initialize(type)
    config = YAML.load_file('features/config/filters.yml')[type]
    @name = config['name']
    @category = config['category']
    @sub_categories = []
    config['sub_categories'].each do |sub_cat|
      @sub_categories.push sub_cat
    end

    @parameters_positive = []
    config['parameters_positive'].each do |parameter|
      @parameters_positive.push parameter
    end

    @parameters_negative = []
    config['parameters_negative'].each do |parameter|
      @parameters_negative.push parameter
    end

    
  end

  def enter_properties(type)
    if type == 'positive'
      @parameters_positive.each do |parameter|
        if parameter['name'] == 'NOSAUKUMS'
          return parameter['filter_name']
        end
      end
    elsif type == 'negative'
      @parameters_negative.each do |parameter|
        if parameter['name'] == 'NOSAUKUMS'
          return parameter['filter_name']
        end
      end
    end
  end

  def print_properties
    print 'Name:' + @name
    print "\nCategory:" + @category
    print "\nSub Categories:"
    @sub_categories.each do |sub_cat|
      print "\n\t - " + sub_cat['title'] + ' ' + sub_cat['option']
    end
    print "\Parameters positive:"
    @parameters_positive.each do |parameter|
      print "\n\t - " + parameter['name'] + ' ' + parameter['left'] + ' ' + parameter['right']
    end

    print "\Parameters negative:"
    @parameters_negative.each do |parameter|
      print "\n\t - " + parameter['name'] + ' ' + parameter['left'] + ' ' + parameter['right']
    end
    print "\n\n"
  end
end
