class Unweighted_GPA
  attr_accessor :number_classes
  
  def initialize(number_classes)
      @number_classes=number_classes
  end 
end 



class GPA

@@total = 0
@@grades = []

def initialize(params)
  @params = params
end

def to_f
   @params.each do |value, grade|
   @@grades << grade.to_f
   
   #@params = params
   end
end

def grades_array
   @@grades.to_s
end
   
def calculate  
   @@grades.each do |grade|
       
       if grade >= 90.0
         @@total +=4.0
     
     
       elsif grade >= 80.0
         @@total+= 3.0
     
     
       elsif grade >= 70.0
         @@total+=2.0
     
     
     else
           @@total +=1.0
       end
   end
   ((((@@total/6)/2).round(1))).to_s
end

def calculate_gpa
end
end 

class Answers
 attr_accessor :answer
 def initialize(params)
   @params = params
   @answer = {
     :Harvard => 0,
     :Yale => 0,
     :Princeton => 0,
     :Columbia => 0
     #:arts ==> 0
     }
 end

 def location
   if @params[:location] =="Cambridge, Massachusetts"
     #do whatever in here
     #:science = :science + 1
     @answer[:Harvard] += 1
     #taking in the hash and calling the key, science, and adding one point to it
   elsif @params[:location] == "New Haven,Conneticut"
     @answer[:Yale] +=1
   elsif @params[:location] == "Princeton, New Jersey"
     @answer[:Princeton] += 1
   elsif @params[:location] == "New York"
     @answer[:Columbia] += 1
     #not using else bc dont wanna add a point
   end
 end

 def major
   if @params[:major] =="Economics"
     @answer[:Harvard] += 1
   elsif @params[:major] == "Political Science"
     @answer[:Yale] +=1
   elsif @params[:major] == "Computer Science"
     @answer[:Princeton] += 1
   elsif @params[:major] == "Psychology"
     @answer[:Columbia] += 1
   end
 end

 def alumni
   if @params[:alumni] =="Barack Obama"
     #do whatever in here
     #:science = :science + 1
     @answer[:Harvard] += 1
     #taking in the hash and calling the key, science, and adding one point to it
   elsif @params[:alumni] == "Meryl Streep"
     @answer[:Yale] += 1
   elsif @params[:alumni] == "John F. Kennedy "
     @answer[:Princeton] += 1
   elsif @params[:alumni] == "Alicia Keys"
     @answer[:Columbia ]+= 1
   end
 end

 def rate
   if @params[:rate] =="5.3%"
     #do whatever in here
     #:science = :science + 1
     @answer[:Harvard] += 1
     #taking in the hash and calling the key, science, and adding one point to it
   elsif @params[:rate] == "6.5%"
     @answer[:Yale] +=1
   elsif @params[:rate] == "7%"
     @answer[:Princeton] += 1
   elsif @params[:rate] == "6.1%"
     @answer[:Columbia] += 1
   end
 end

 def desc
   if @params[:desc] =="Future Politician"
     #do whatever in here
     #:science = :science + 1
     @answer[:Harvard] += 1
     #taking in the hash and calling the key, science, and adding one point to it
   elsif @params[:desc] == "Book-Lover"
     @answer[:Yale] +=1
   elsif @params[:desc] == "Preppy"
     @answer[:Princeton] += 1
   elsif @params[:desc] == "Tech Savvy"
     @answer[:Columbia] += 1
   end
 end

 def answer
   location
   major
   alumni
   rate
   desc
 end

 def print
   @answer
 end

end
