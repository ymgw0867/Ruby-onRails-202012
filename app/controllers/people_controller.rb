class PeopleController < ApplicationController
  layout 'people'

  def index
    @msg = 'Person data.'
    @data = Person.all
  end

  def show
     @msg = 'Indexed data.'
     @data = Person.find(params[:id])
  end

  def add
    @msg = "add new data."
    @person = Person.new
  end

  def create
    # if request.post? then
    #   Person.create(person_params)
    # end
    # redirect_to '/people'

    @person = Person.new person_params
    if @person.save then
      redirect_to '/people'
    else
      render 'add'
    end
  end

  def edit
    @msg = "edit data.[id = " + params[:id] + "]"
    @person = Person.find(params[:id])
  end

  def update
    obj = Person.find(params[:id])
    obj.update(person_params)
    redirect_to '/people'
  end

  def delete
     obj = Person.find(params[:id])
     obj.destroy
     redirect_to '/people'
  end

  def find
   @msg = 'please type search word...'
   @people = Array.new
   if request.post? then
     #obj = Person.find params['find']
     #@people.push obj

     #@people = Person.where name: params[:find]
     #@people = Person.where "age>=?", params[:find]     
     #@people = Person.where "mail like ?", '%' + params[:find] + '%'

     f = params[:find].split ','
     #複数の条件、データの並び順を指定
     #@people = Person.where('age >= ? and age <= ?', f[0], f[1]).order 'age asc'
     @people = Person.all.offset(f[0]).limit(f[1]) #決まった位置から決まった数だけを取り出す

    #f = '%' + params[:find] + '%'
    #OR演算子
    #result = Person.where "name like ? or mail Like ?", f, f　#
    #@people.push result.first
    #@people.push result.last

    #f = params[:find].split(',')
    #@people = Person.find(f)
   else
     @people = Person.all
   end
  end

  private
  def person_params
    params.require(:person).permit(:name, :age, :mail)
  end
end
