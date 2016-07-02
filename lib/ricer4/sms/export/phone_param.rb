class ActiveRecord::Magic::Param::Phone < Ricer4::Parameter
  
  def validate!(number)
    invalid!(:err_start_country) unless number.start_with?('+')
    invalid!(:err_format) unless /\+[1-9][0-9]+/.match(number)
  end
  
end