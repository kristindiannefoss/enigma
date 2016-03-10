module Rotation
attr_reader :rotation, :key, :date, :a_ro, :b_ro, :c_ro, :d_ro

  def individual_rotations
    a = (@key[0] + @key[1]).to_s
    @a_ro = a.to_i + @date[0].to_i
    b = (@key[1] + @key[2]).to_s
    @b_ro = b.to_i + @date[1].to_i
    c = (@key[2] + @key[3]).to_s
    @c_ro = c.to_i + @date[2].to_i
    d = (@key[3] + @key[4]).to_i
    @d_ro = d.to_i + @date[3].to_i
  end

  def rotation
    @rotation = [@a_ro, @b_ro, @c_ro, @d_ro]
  end
end
