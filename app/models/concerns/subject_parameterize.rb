module SubjectParameterize
 extend ActiveSupport::Concern

 included do 
    def subject_id
    "#{subject.title}".parameterize
  end
 end
end