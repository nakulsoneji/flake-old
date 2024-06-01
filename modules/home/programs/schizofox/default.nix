{ ... }: {
  programs.schizofox = {
    enable = true;
    search = {
      defaultSearchEngine = "Google";
    };
    misc = {
      drmFix = true;
    };
    extensions ={
      simplefox.enable = true;
    };
  };
}
