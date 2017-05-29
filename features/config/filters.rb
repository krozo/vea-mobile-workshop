require 'yaml'
class Filter
  attr_accessor :name, :category, :sub_categories, :parameters_positive, :parameters_negative, :tmp_param, :side_array

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

  def enter_properties(filter_type, param_type)
    if filter_type == 'positive'
      @tmp_param = @parameters_positive;
    elsif filter_type == 'negative'
      @tmp_param = @parameters_negative
    end

    @tmp_param.each do |parameter|
        if parameter[param_type] == 'NOSAUKUMS'
          return parameter['filter_name']
        elsif parameter[param_type] == 'CENA (EUR)'
          @side_array = []
          @side_array.push parameter['left']
          @side_array.push parameter['right']
          return @side_array
        elsif parameter[param_type] == 'dsfsddsf'
          return parameter['left']
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
