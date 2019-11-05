# frozen_string_literal: true

# Documentation
class MonstersController < ApplicationController
  def index
    @monsters = monsters

    respond_to do |format|
      format.html
      format.text
      format.json do
        render json: {monsters: monsters_json,
                      time: Time.now,
                      count: monsters.count}
      end
    end
  end
end

private

def monsters
  Monster.all
end

def monsters_json
  monsters.map {|monster|
    {id: monster.id,
     name: monster.name,
     creepiness: monster.creepiness,
     home: monster.home}
  }
end