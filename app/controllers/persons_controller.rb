class PersonsController < ApplicationController
  before_filter :authenticate_user!

  def profile
    @user_tables = current_user.poker_tables.all
    @not_available_tables = PokerTable.where('start_date < ?', Time.now)
    @available_tables = PokerTable.find_by_sql(['select poker_tables.* from poker_tables
                                                  inner join user_tables on (poker_tables.id = user_tables.poker_table_id)
                                                    group by (poker_tables.id) having (count(user_tables.user_id) < 6)
                                                      union select * from poker_tables where id not in (select poker_table_id from user_tables)']) - @not_available_tables - @user_tables
  end

  def add_table
    table = PokerTable.find(params[:table_id])
    current_user.poker_tables << table
    redirect_to user_root_path
  end

  def remove_table
    table = PokerTable.find(params[:table_id])
    current_user.poker_tables.destroy(table)
    redirect_to user_root_path
  end
end
