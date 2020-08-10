module SubjectParameterize
 extend ActiveSupport::Concern

 included do 
    def subject_id
    "#{subject.title}-" + "#{session}-" + "#{year}".parameterize
  end
 end
end