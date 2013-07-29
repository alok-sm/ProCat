class DeptController < ApplicationController

def test
      @project = Project.where(status:"open",p_type1:"mini")
   end

def bt

@project = Project.where(if_bt:"t")




@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)




end

def cv
      @project = Project.where(if_cv:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def cs
      @project = Project.where(if_cs:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def ee
      @project = Project.where(if_ee:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def ec
      @project = Project.where(if_ec:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def is
      @project = Project.where(if_is:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def me
      @project = Project.where(if_me:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def tc
      @project = Project.where(if_tc:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def bca
      @project = Project.where(if_bca:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mca
      @project = Project.where(if_mca:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mba
      @project = Project.where(if_mba:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mcs
      @project = Project.where(if_mcs:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end
def mec
      @project = Project.where(if_mec:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mme
      @project = Project.where(if_mme:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mwt
      @project = Project.where(if_mwt:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mse
      @project = Project.where(if_mse:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def btopen
      @project = Project.where(if_bt:"t",status:"o")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def btclose
      @project = Project.where(if_bt:"t",status:"c")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def btpast
      @project = Project.where(if_bt:"t",status:"p")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def cvopen
      @project = Project.where(if_cv:"t",status:"o")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def cvclose
      @project = Project.where(if_cv:"t",status:"c")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def cvpast
      @project = Project.where(if_cv:"t",status:"p")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def csopen
      @project = Project.where(if_cs:"t",status:"o")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def csclose
      @project = Project.where(if_cs:"t",status:"c")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def cspast
      @project = Project.where(if_cs:"t",status:"p")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def eeopen
      @project = Project.where(if_ee:"t",status:"o")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def eeclose
      @project = Project.where(if_ee:"t",status:"c")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def eepast
      @project = Project.where(if_ee:"t",status:"p")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def ecopen
      @project = Project.where(if_ec:"t",status:"o")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def ecclose
      @project = Project.where(if_ec:"t",status:"c")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def ecpast
      @project = Project.where(if_ec:"t",status:"p")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def isopen
      @project = Project.where(if_is:"t",status:"o")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def isclose
      @project = Project.where(if_is:"t",status:"c")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def ispast
      @project = Project.where(if_is:"t",status:"p")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def meopen
      @project = Project.where(if_me:"t",status:"o")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def meclose
      @project = Project.where(if_me:"t",status:"c")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mepast
      @project = Project.where(if_me:"t",status:"p")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def tcopen
      @project = Project.where(if_tc:"t",status:"o")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end
def tcclose
      @project = Project.where(if_tc:"t",status:"c")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def tcpast
      @project = Project.where(if_tc:"t",status:"p")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def bcaopen
      @project = Project.where(status:"o",if_bca:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mbaopen
      @project = Project.where(status:"o",if_mba:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mcaopen
      @project = Project.where(status:"o",if_mca:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mcsopen
      @project = Project.where(status:"o",if_mcs:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mecopen
      @project = Project.where(status:"o",if_mec:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mmeopen
      @project = Project.where(status:"o",if_mme:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mseopen
      @project = Project.where(status:"o",if_mse:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mwtopen
      @project = Project.where(status:"o",if_mwt:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def bcaclose
      @project = Project.where(status:"c",if_bca:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mbaclose
      @project = Project.where(status:"c",if_mba:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mcaclose
      @project = Project.where(status:"c",if_mca:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end
def mcsclose
      @project = Project.where(status:"c",if_mcs:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mecclose
      @project = Project.where(status:"c",if_mec:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mmeclose
      @project = Project.where(status:"c",if_mme:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mseclose
      @project = Project.where(status:"c",if_mse:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mwtclose
      @project = Project.where(status:"c",if_mwt:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def bcapast
      @project = Project.where(status:"p",if_bca:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mbapast
      @project = Project.where(status:"p",if_mba:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mcapast
      @project = Project.where(status:"p",if_mca:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end
def mcspast
      @project = Project.where(status:"p",if_mcs:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mecpast
      @project = Project.where(status:"p",if_mec:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end
def mmepast
      @project = Project.where(status:"p",if_mme:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def msepast
      @project = Project.where(status:"p",if_mse:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

def mwtpast
      @project = Project.where(status:"p",if_mwt:"t")
@no=@project.size
puts "size"
puts @no
@no1=0
if(@no>10)
@no1=10
end
@project = @project.page(params[:page]).per(@no1)

   end

end



