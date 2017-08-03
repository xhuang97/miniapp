class Input < ActiveRecord::Base

  # disable STI
  self.inheritance_column = :_type_disabled

  # custom primary key
  self.primary_key = :_id

  SESSION = {
    'L6bwygqYBatcPR7YW' => '20170307-1030-21127A',
    'X2jueEBQnZPAJ4kMA' => '20170307-1230-18202A',
    '5pvD4mwgW4GQgeSvQ' => '20170307-1630-21256A',
    'NYodEayzjy9RtjXJi' => '20170307-1830-21256A',
    'wHsr5qtbvtPr7dWC4' => '20170309-1030-21127A',
    'FYywDT6CGBX44JwZH' => '20170321-1030-21127A',
    'ZmzguBYrunEwbiYBv' => '20170321-1230-18202A',
    'k2ePumq9MYQnRJhB3' => '20170321-1630-21256A',
    'fdhyANb2JmdR3XGBP' => '20170321-1830-21256A',
    'yNNXMTurRYxS4bFf7' => '20170323-1030-21127A',
    'Gcv7r7hd2f2NZ3XAz' => '20170328-1030-21127A',
    'Lt5RcK7ducyjf7CXb' => '20170328-1230-18202A',
    'BiD983TaZhm7ypdtw' => '20170330-1030-21127A',
    'gHzWHZkDEzuw7gr7s' => '20170404-1030-21127A',
    'Ete5KdkNwX8mEoeq7' => '20170404-1230-18202A',
    '7QmpaTYxmxyjR59x2' => '20170404-1630-21256A',
    'd3ov56n47SrP6o9Sr' => '20170406-1030-21127A',
    'DEcjEWBJN5fhPWMNo' => '20170411-1030-21127A',
    'YKsNvTEai5TBdsZWR' => '20170411-1230-18202A',
    'q7ebkGCrcFqt5ejBr' => '20170411-1630-21256A',
    '989YinDBBtoxfL8MR' => '20170413-1030-21127A',
    'hPpGcgwFQu4Msac9H' => '20170413-1230-18202A',
    'YJYoJjgmxRbRhwJH3' => '20170418-1030-21127A',
    'd3yj7NLfBaofkZYSi' => '20170418-1230-18202A',
    '8qHj3kBmoQLFR7Mhi' => '20170418-1630-21256A',
    'GMxBzvEzcbqPrHqe5' => '20170425-1030-21127A',
    '9oLZzBxDcXAbwRK8d' => '20170425-1230-18202A',
    '39go3RGZqhs3JXWtq' => '20170425-1630-21256A',
    'WnzLz4RF6jD8cqXME' => '20170427-1230-18202A',
    '42Coetp3mQhWPxi6W' => '20170502-1030-21127A',
    'Qw6jX9LMXyFNfBcxY' => '20170502-1230-18202A',
    'D6A8KBqmEFtMTosiA' => '20170502-1630-21256A',
    'CbbDkREEGigaNinT2' => '20170504-1030-21127A',
    'eiiZmYri9fZMXJnBx' => '20170504-1230-18202A',


    '639XWWqJyBirRAEZg' => '20170705-1030-70122',
    'tcNyxNGypQr4sEpG5' => '20170706-0900-21127',
    'FwjqC2d2Hqcg36Jqe' => '20170706-0900-21259',
    'FtsRPQ5928pBh9cm2' => '20170706-1030-70122',
    'niNu73ZEeCAnjj9bS' => '20170707-0900-21127',
    'pggn7CZhhe9eBAnAc' => '20170707-0900-21259',
    'SfvCEBXEGCKctkygG' => '20170707-1030-70122',
    'waCYwNmg5wbHn5mtp' => '20170710-0900-21127',
    '4LmD6oNGhscdhaaBv' => '20170710-0900-21259',
    'EFzGv6f3jR8BWtGsF' => '20170710-1030-70122',
    'LmS9Yho4KFENm8qHg' => '20170711-0900-21127',
    'dMBptitDMqFrwguzC' => '20170711-0900-21259',
    'd9LL3at76XigscDrv' => '20170711-1030-70122',

    'W6H6YsJQgmtYtsJFe' => '20170712-0900-21127',
    '3wEb8kMxfLEiStWKw' => '20170712-0900-21259',
    'C7CWJAn8W3GPxRN6L' => '20170712-1030-70122',
    'khwkMjAHxMp4t6CsK' => '20170713-0900-21127',
    'QWBfjEah5i9MGeyam' => '20170713-0900-21259',
    '7cTPBw2TG7CkaFNsr' => '20170713-1030-70122',
    'EXRFtL2z5B7tDyLt7' => '20170714-0900-21127',
    'FhQKgEKiKfi2E5XWT' => '20170714-0900-21259',
    'iCfq4x5pagfqiELpt' => '20170714-1030-70122',

    'bRTKYCZPyFknBQvBK' => '20170717-0900-21127',
    'er4pmLz8JFRiE5tT7' => '20170717-0900-21259',
    'x7xziR3KgDgpmn5vL' => '20170717-1030-70122',
    'YdgPTevouzsBSh98D' => '20170718-0900-21127',
    '39p6f9qnb56G4Eece' => '20170718-0900-21259',
    '5yWZCajxtxXdc43ZK' => '20170718-1030-70122',

    'sHDLKCs42GCi3kALi' => '20170719-0900-21127',
    'Y5X45PKbKNMsfoDjz' => '20170719-0900-21259',
    'CLDJuRaNcTFNzmAfZ' => '20170719-1030-70122',
    'sf6sfuHTcS5AQjxTS' => '20170720-0900-21127',
    '5WaW97R6Br56odif7' => '20170720-0900-21259',

    '3GQYT94BP3Apmtkkk' => '20170720-1030-70122',
    'u5na2Y3bhLQFSEQWY' => '20170721-0900-21127',
    '7JoGGNqioYvXqxsJa' => '20170724-0900-21127',
    'w2GShwmKJH4PMyMqx' => '20170724-0900-21259',
    'HzhMt9XQvnCG98XCK' => '20170724-1030-70122',
    'dtfJT2GgMzXTDijfa' => '20170725-0900-21127',
    'Y26q43ZTRBiYjJs8A' => '20170725-0900-21259',
    'fFyxsWrZJ5TK3SnpX' => '20170725-1030-70122',
    'HkXppk7kk6eXnSzQi' => '20170726-0900-21127',
    'XHARLtTCnMwKz9dLK' => '20170726-0900-21259',
    'HRtjoLf2b8vkco9y7' => '20170726-1030-70122',
    'dHGw83mtfsivTSrrB' => '20170727-0900-21127',
    'uNawc9s4dK6WHKEG4' => '20170727-0900-21259',
    '2npRQ3E4mwwJuQPRq' => '20170727-1030-70122',
    'GoXu24jszfvCy8q39' => '20170728-0900-21127',
    'F5fe9rdEGd3HAJTtW' => '20170728-0900-21259',
    'g9wJDuuzgMgzbJ6kk' => '20170731-0900-21259',
    'z2GoaELQ5nLQRx7y8' => '20170731-0900-21127',
    '8cLRJndBPLRW7PGsX' => '20170728-1030-70122'
  }

  # scope :for_color,    ->(color) { where("color like ?", "%#{color.downcase}%") }
  scope :for_sessionDesc,      ->(session) { where("sessionDesc LIKE ?", "%#{session}%") }
  # scope :for_course,  ->(course) { where("#{get_full_dateTime} LIKE ?", "%#{course}%")}
  # scope :for_season,  ->(season) { where(get_season == season)}

  # validations
  validates :_id, presence: true
  # , uniqueness: { case_sensitive: true }

  # def get_date
  #   @datetime = self.dateTime
  #   @date = @datetime.strftime("%m/%d/%Y")
  # end

  def self.for_course_season(courses, season)
    # puts course
    Input.all.select {|o| (courses.include? o.get_day_time) && o.get_season == season}
  end

  # def self.for_season(season)
  #   Input.all.select {|o| }
  # end

  def self.for_csd(courses, season, date, cnum)
    # puts date
    Input.all.select {|o| (o.get_full_dateTime.to_s.include? date) &&
      (courses.include? o.get_day_time) && (o.get_season == season) && (o.get_cnum.include? cnum)}
  end

  def get_session
    session = SESSION[sessionId]
  end

  def get_cnum
    session = SESSION[sessionId]
    cnum = session[14..-1]
  end

  def get_season
    dateTime = self.dateTime.to_i # convert to int
    d = Time.at(dateTime/1000) # convert to date
    # Not sure if there's a neater expression. yday is out due to leap years
    day_hash = d.month * 100 + d.mday
    case day_hash
    when 101..301 then :winter
    when 302..530 then :spring
    when 601..830 then :summer
    when 901..1231 then :fall
    end
  end

  def get_day_time
    dateTime = self.dateTime.to_i # convert to int
    dateTime = Time.at(dateTime/1000) # convert to date
    hour = dateTime.strftime('%H%M').to_i
    ahour = hour.to_s
    case hour
    when 900..1025 then ahour = "0900"
    when 1030..1155 then ahour = "1030"
    when 1230..1355 then ahour = "1230"
    when 1630..1755 then ahour = "1630"
    end
    weekday = dateTime.strftime('%A_').to_s
    course = weekday + ahour[0,2] + ":" + ahour[2,3] #Tuesday_10:30
    return course
  end

  def get_full_dateTime
    dateTime = self.dateTime.to_i # convert to int
    dateTime = Time.at(dateTime/1000) # convert to date
    dateTime = dateTime.strftime('%m/%d/%y %H:%M:%S')
  end

  def get_date
    dateTime = self.dateTime.to_i # convert to int
    dateTime = Time.at(dateTime/1000) # convert to date
    dateTime = dateTime.strftime('%m/%d/%y %A')
  end


end
