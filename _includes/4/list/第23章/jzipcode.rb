require 'sqlite3'

class JZipCode
  COL_ZIP = 2
  COL_PREF = 6
  COL_CITY = 7
  COL_ADDR = 8

  def initialize(dbfile)
    @dbfile = dbfile
  end

  def make_db(zipfile)
    return if File.exists?(@dbfile)
    SQLite3::Database.open(@dbfile) do |db|
      db.execute <<-SQL
        CREATE TABLE IF NOT EXISTS zips
          (code TEXT, pref TEXT, city TEXT, addr TEXT, alladdr TEXT)
      SQL

      File.open(zipfile, 'r:shift_jis') do |zip|
        db.execute "BEGIN TRANSACTION"
        zip.each_line do |line|
          columns = line.split(/,/).map{|col| col.delete('"')}
          code = columns[COL_ZIP]
          pref = columns[COL_PREF]
          city = columns[COL_CITY]
          addr = columns[COL_ADDR]
          all_addr = pref+city+addr
          db.execute "INSERT INTO zips VALUES (?,?,?,?,?)",
            [code, pref, city, addr, all_addr]
        end
        db.execute "COMMIT TRANSACTION"
      end
    end
  end

  def find_by_code(code)
    str = ""
    SQLite3::Database.open(@dbfile) do |db|
      db.execute("SELECT * FROM zips WHERE code = ?",
                 code) do |row|
        str += row[1..3].join('')
      end
    end
    str
  end

  def find_by_address(addr)
    str = ""
    SQLite3::Database.open(@dbfile) do |db|
      db.execute("SELECT * FROM zips WHERE alladdr LIKE ?", "%#{addr}%") do |row|
        str += row[0]+' '+row[1..3].join('')+"\n"
      end
    end
    str
  end
end

if __FILE__ == $0
  jzipcode = JZipCode.new("zip.db")
  jzipcode.make_db("KEN_ALL.CSV")
  puts jzipcode.find_by_code("1060031")
  puts jzipcode.find_by_address("東京都渋谷区神宮前")
end
