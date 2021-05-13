module ApplicationHelper

  def addselection(number)
    @selection = Selection.new(exhibitID: number)
    if @selection.save
    #  render exhibits_path
    #  flash[:notice] = "Exhibit was successfully added to your selection"
    end
  end

end
