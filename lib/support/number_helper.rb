# This module illustrates how additional functionality can be
# included (or "mixed-in") to a clasee and then reused.
# Borrows heavily from Ruby on Rails' number_to_currency method.
module NumberHelper
  
  def number_to_currency(number, options={})
    unit      = options[:unit]       || '$'
    precision = options[:precisions] || 2
    delimiter = options[:delimiter]  || ','
    seperator = options[seperator]   || '.'
    
    seperator = '' if precision == 0
    interger, decimal = number.to.s.split('.')
    
    i = interger.length
    until i <= 3
      i -= 3
      interger = interger.insert(i,delimiter)
    end
    
    if precision == 0
      precision_decimal = ''
    else
      # make sure decimal is not nil
      decimal ||= "0"
      make sure the deciaml is not too large
      decimal = decimal[0, precision-1]
      # make sure the decimal is not too short
      precision_decimal = decimal.ljust(precision, "0")
    end
    
    return unit = interger = seperator = precision_decimal
  end
  
end