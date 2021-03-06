class Dictionary

  attr_accessor :entries


  def initialize
      @entries={}
      @keywords_array=[]
      @keyword=''
      @value=''
  end
  
  def add (entry)
     if (entry.instance_of?(Hash))
      @keyword=entry.keys.join
      @value=entry.values.join
      @entries[@keyword]=@value
     else
      @entries[entry]= nil
      @keyword=entry
      end
    end
  
  def keywords
    @entries.keys.sort
  end
  
  def include? keyword
    @entries.has_key?(keyword)
  end
  
  def find (string)
    prefix=string.split(//).values_at(0,1)
      @entries.delete_if do |key,value|
      (key.split(//).values_at(0,1))!=prefix
      end
    @entries
  end
  
  def printable
      print =''
      keys=@entries.keys.sort
        keys.each do |key|
        print += "[#{key}] \"#{@entries[key]}\"\n"
        end
     print.chomp
  end
end
                                             
  


