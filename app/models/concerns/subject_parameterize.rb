module SubjectParameterize
 extend ActiveSupport::Concern

 included do 
    def subject_link
    "#{subject.title}-" + "#{session}-" + "#{year}-" + "#{id}".parameterize
  end
 end
end