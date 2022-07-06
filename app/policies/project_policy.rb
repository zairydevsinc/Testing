class ProjectPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def initialize(user, project)
    @user = user
    @project = project
  end

  def new?
    if @user.usertype == 'Manager'
      return true
    end
    false
  end
  def create?
    if @user.usertype =='Manager'
      return true
    end
    false
  end

  def show?
    if @user.usertype =='Manager' && @user == @project.creator
      return true
    end
    false
  end


  def update?
    if @user == @project.creator && @user.usertype == 'Manager'
      return true
    end
    false
  end

  def edit?
    if @user == @project.creator && @user.usertype == 'Manager'
      return true
    end
    false
  end

  def delete?
    if @user == @project.creator && @user.usertype =='Manager'
      return true
    end
    false
  end

  def can_create_bug?
    if @user.usertype =='QA' && @user.project_assigned.include?(@project)
      return true
    end
    false
    end
end
