# frozen_string_literal: true

# A hash map implementation using buckets and linked lists
class HashMap
  attr_reader :capacity, :length

  def initialize(load_factor = 0.75)
    @load_factor = load_factor
    @capacity = 16
    @buckets = Array.new(@capacity)
    @length = 0
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code % @capacity
  end

  def set(key, value)
    index = hash(key)
    raise IndexError if index.negative? || index >= @buckets.length

    bucket = @buckets[index] ||= []
    pair = bucket.find { |k, _| k == key }

    pair ? update_pair(pair, value) : insert_pair(bucket, key, value)
    value
  end

  def get(key)
    index = hash(key)
    raise IndexError if index.negative? || index >= @buckets.length

    bucket = @buckets[index]
    return nil unless bucket

    pair = bucket.find { |k, _| k == key }
    pair && pair[1]
  end

  def has?(key)
    index = hash(key)
    raise IndexError if index.negative? || index >= @buckets.length

    bucket = @buckets[index]
    return false unless bucket

    bucket.any? { |k, _| k == key }
  end

  def remove(key)
    index = hash(key)
    raise IndexError if index.negative? || index >= @buckets.length

    bucket = @buckets[index]
    return nil unless bucket

    position = bucket.index { |k, _| k == key }
    return nil unless position

    _, value = bucket.delete_at(position)
    @length -= 1
    value
  end

  def clear
    @buckets = Array.new(@capacity)
    @length = 0
  end

  def keys
    @buckets.compact.flat_map { |bucket| bucket.map(&:first) }
  end

  def values
    @buckets.compact.flat_map { |bucket| bucket.map(&:last) }
  end

  def entries
    @buckets.compact.flat_map { |bucket| bucket.map(&:dup) }
  end

  private

  def update_pair(pair, value)
    pair[1] = value
    value
  end

  def insert_pair(bucket, key, value)
    bucket << [key, value]
    @length += 1
    grow if @length > @capacity * @load_factor
    value
  end

  def grow
    old_buckets = @buckets
    @capacity *= 2
    @buckets = Array.new(@capacity)
    @length = 0

    old_buckets.compact.each do |bucket|
      bucket.each { |key, value| set(key, value) }
    end
  end
end
