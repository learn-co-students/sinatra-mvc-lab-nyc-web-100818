


class PigLatinizer

  def piglatinize(input)
    new_str = []
    arr = input.split(' ')
    arr.each { |word| new_str << latinize_word(word)}
    new_str.join(' ')
  end

  def latinize_word(input)
    return_str = ''
    if input.include?('qu')
      arr = input.split('qu')
      return_str << arr[1] + arr[0] + 'quay'
    else
      arr = input.split /([aeiouAEIOU].*)/
      if arr[0].empty?
        return_str << arr[1] + 'way'
      else
        return_str << arr[1] + arr[0] + 'ay'
      end
    end
    return_str
  end
end
