class Project < ActiveRecord::Base
  #attr_accessible :award_list, :department, :description, :end_date, :if_award, :if_paper, :if_patent, :if_product, :messages, :outcome, :p_title, :p_type1, :p_type2, :requirements, :start_date, :status, :tags, :url_attatched, :if_bt, :if_cs, :if_cv, :if_ec, :if_ee, :if_me, :if_tc, :if_is, :if_mca, :if_bca, :if_mba, :if_mcs, :if_mme, :if_mec, :if_mse, :if_mwt, :codes, :projects

 before_save :uppercase_department

  def uppercase_department
    self.department.upcase!
  end

 before_save :uppercase_guides

  def uppercase_guides
    self.guides.upcase!
  end

attr_protected
attr_writer :codes


  def codes
    @codes ||- users.map(&:name).join(' ')
  end
end
