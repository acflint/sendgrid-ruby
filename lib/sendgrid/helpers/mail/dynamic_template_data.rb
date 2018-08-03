require 'json'

module SendGrid
  class DynamicTemplateData
    def initialize(key: nil, value: nil)
      @dynamic_template_data = {}
      (key.nil? || value.nil?) ? @dynamic_template_data = nil : @dynamic_template_data[key] = value
    end

    def dynamic_template_data=(dynamic_template_data)
      @dynamic_template_data = dynamic_template_data
    end

    def dynamic_template_data
      @dynamic_template_data
    end

    def to_json(*)
      {
        'dynamic_template_data' => self.dynamic_template_data
      }.delete_if { |_, value| value.to_s.strip == '' }
    end
  end
end
