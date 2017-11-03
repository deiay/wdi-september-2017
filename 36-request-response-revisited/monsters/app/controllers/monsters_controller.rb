class MonstersController < ApplicationController
  def index
    @monsters = Monster.all

    respond_to do |format|
      format.html
      format.text
      format.json do
        json_data = @monsters.map {|monster|
          {id: monster.id,
           name: monster.name,
           creepiness: monster.creepiness,
           home: monster.home}
        }

        render json: {monsters: json_data, 
                      time: Time.now,
                      count: @monsters.count}
      end
    end
  end
end


