{
  plugins = {
    avante = {
      enable = true;

      settings = {
        provider = "deepseek";
        cursor_applying_provider = "deepseek";
        behaviour = {
          enable_cursor_planning_mode = true;
        };
        providers = {
          deepseek = {
            __inherited_from = "openai";
            api_key_name = "DEEPSEEK_API_KEY";
            endpoint = "https://api.deepseek.com";
            model = "deepseek-coder";
          };
        };
        auto_suggestions_provider = "deepseek";
        mappings = {
          suggestion = {
            accept = "<Right>";
          };
        };
      };
    };
  };
}
