require "sqlite3"

if !File.exist?('test.db')
#opens a database
db = SQLite3::Database.open "test.db" 

#executes the sql statement contained in the heredoc
#in this case, it creates a table named 'frames' with the given params
db.execute <<-SQL
create table frames (
manufacturer varchar(30),
name varchar(30),
top_tube varchar(30)
);
SQL

#insert the given values into the corresponding columns
db.execute("INSERT INTO frames (manufacturer, name, top_tube)
           VALUES ('Standard', '125r', '21')")
end
