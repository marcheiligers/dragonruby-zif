# Example usage of a Zif::Game subclass
class ZifExample < Zif::Game
  def initialize
    super()
    @services[:tracer].measure_averages = true
    1.upto 4 do |i|
      @services[:sprite_registry].register_basic_sprite("dragon_#{i}", 82, 66)
    end
    @services[:sprite_registry].register_basic_sprite(:transparent_gray_32, 32, 32)
    @services[:sprite_registry].register_basic_sprite(:white_1, 64, 64)

    register_scene(:ui_sample, UISample)
    register_scene(:load_world, WorldLoader)
    register_scene(:load_double_buffer_render_test, DoubleBufferRenderTest)
    register_scene(:load_compound_sprite_test, CompoundSpriteTest)
    @scene = UISample.new
  end
end
