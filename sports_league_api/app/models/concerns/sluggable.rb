module Sluggable
    extend ActiveSupport::Concern 
    included { before_validation :create_slug } 
    module ClassMethods    
        def sluggable_attr(attr)      
            class_variable_set(:@@sluggable_attr, attr)   
         end    
         def find_by_id_or_slug(id_or_slug)    
              table = arel_table   
                 where(table[:id].eq(id_or_slug).or(table[:slug].eq(id_or_slug)))[0] 
                   end 
                 end  
                 def create_slug 
                       return if read_attribute(:slug)  
                         num = 0  
                           attr = self.class.class_variable_get(:@@sluggable_attr)    
                           parameterized_attr = read_attribute(attr).parameterize 
                              loop do  
                                    slug = num.zero? ? parameterized_attr : "#{parameterized_attr}-#{num}"   
                                       existing = self.class.find_by(slug: slug)    
                                         if existing.blank?    
                                                write_attribute(:slug, slug)   
                                                     break   
                                                       end   
                                                          num += 1  
                                                          end  
                                                          end
                                                        end