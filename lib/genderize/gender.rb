module Genderize
  class Gender

    include I18n

    # Maps the gender abbreviation name to the full name for translation keys
    ABR_KEY_NAME_MAPPING = { "" => "blank", "m" => "masculine", "f" => "feminine" }


    attr_reader :abbr

    def initialize(abbr)
      unless abbr.blank? or abbr.to_s =~ /\A(f|m|female|male)\Z/i
        raise "Invalid abbreviation: '#{abbr}'"
      end
      @abbr = abbr.blank? ? '' : abbr.to_s.first.downcase
    end

    def name
      @name ||= translation_for("name")
    end

    def subject
      @subject ||= translation_for("subject")
    end

    def object
      @object ||= translation_for("object")
    end

    def possessive
      @possessive ||= translation_for("possessive")
    end

    def casual
      @casual ||= translation_for("casual")
    end

    def capital_abbr
      abbr.capitalize
    end

    def male?
      abbr == 'm'
    end

    def female?
      abbr == 'f'
    end

    def blank?
      abbr == ""
    end

    def to_s
      abbr
    end

    def ==(val)
      abbr.to_s == val.to_s
    end


    private


    def translation_for(key)
      I18n.t("genderize.#{key}.#{ABR_KEY_NAME_MAPPING[abbr]}")
    end

  end
end