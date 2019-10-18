class Vehicle

  attr_reader :brand_name ,:m_num
  def inilialize (brand_name,m_num)
    @brand_name = brand_name
    @m_num = m_num
  end

  def show_details
    puts "brand_name = #{@brand_name} and model number = #{@m_num}"
  end
end


obj1 = Vehicle.new("TATA","c3425")
obj1.shoe_details
