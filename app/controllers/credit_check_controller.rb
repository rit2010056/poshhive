class CreditCheckController < ApplicationController
  skip_before_filter :verify_authenticity_token  
  def search
    print "krishna"
  end

  def check
  	@travel = params[:travel]
  	@shopping = params[:shopping]
  	@fuel = params[:fuel]
    @cashback = params[:fuel]
    @fee = params[:fee]
    @lifestyle = params[:lifestyle]
    
  	# print @shopping
  	# @string = ""
  	# if @travel
   #  	@travel_check = "yes"
   #  	@string = @string + "travel = '#{@travel_check}'"
   #  end

   #  if @shoppin
   #  	@shopping_check="yes"
   #  	if @travel
   #  		@string = @string + " AND shopping = '#{@shopping_check}'"
   #  	else
   #  		@string = @string + "shopping = '#{@shopping_check}'"
   #  	end	
   #  end
    @travel_point = @joining_fee_point = @annual_fee_point = @fuel_point =@cashback_point = @shopping_point = '0'
    @lifestyle_type =true
    if @travel
     @travel_point = '1'
    end
    if @shopping
     	@shopping_point = '1'
    end

    if @cashback
      @cashback_point = '1'
    end
    

    if @fuel
      @fuel_point = '1'
    end

    if @lifestyle
      @lifestyle_type = true
    end

    if @fee
      @joining_fee_point = '1'
      @annual_fee_point = '1'
    end

    credit_card_score = @travel_point+'*travel_reward +'+@shopping_point+'*shopping_reward + ' +@fuel_point+'*fuel_reward + ' +@cashback_point+'*cashback_reward - '+ @joining_fee_point+'*joining_fee - ' + @annual_fee_point+'*annual_fee'   
    print 'credit_card_score==============',credit_card_score
    if @lifestyle
      @string = "is_lifestyle= #{@lifestyle_type}"
      @credit_cards = CreditCard.where(@string).order(credit_card_score).last
    else
      @credit_cards = CreditCard.order(credit_card_score).last
    # @credit_cards = CreditCard.where(@string)
    end
  end
end
