
#
# String : http://rubydoc.info/stdlib/core/1.9.2/String
# 
# @note when you use the class name within the Describe that class becomes the
#   'subject' for the test. This is all done by RSpec and is a feature called
#   implicit subject. However, you can create an explicit subject.
# 
# @see https://www.relishapp.com/rspec/rspec-core/docs/subject/implicit-subject
# @see https://www.relishapp.com/rspec/rspec-core/docs/subject/explicit-subject
describe String do
  
  # This is an example of using RSpec's explicit subject. The value here is 
  # returned each time `subject` is used within the code.
  subject { "\na\nb\nc" }
  
  describe "#each_line" do
    
    it "should return an Enumerator which can be turned into an Array" do
      
      subject.each_line.should be_kind_of(Enumerator)
      subject.each_line.to_a.should be_kind_of(Array)

      subject.each_line.to_a.length.should == 4
    end
    
  end
  
end

#
# Integer: http://rubydoc.info/stdlib/core/1.9.2/Integer
# 
# @see http://rubydoc.info/stdlib/core/1.9.2/Integer#succ-instance_method
# 
describe Integer do
  
  subject { 1 }
  
  #
  # This is an example of using RSpec's implicit receiver. When you use a subject
  # the `its` helper will call the method defined within the ( ). In this case, 
  # it is the method #succ which returns the next number in order.
  # 
  # @see https://www.relishapp.com/rspec/rspec-core/docs/subject/implicit-receiver
  # 
  its(:succ) { should == 2 }
  
end

#
# Symbol: http://rubydoc.info/stdlib/core/1.9.2/Symbol
# 
# @see http://rubydoc.info/stdlib/core/1.9.2/Symbol#capitalize-instance_method
describe Symbol do
  
  subject { :alphabet }
  
  its(:capitalize) { should == :"Alphabet" }
  
end