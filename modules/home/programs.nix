{ ... }: {
  programs.git = {
    enable = true;
    userName = "nakulsoneji";
    userEmail = "nakulsoneji@gmail.com";
  };

  programs.eza = {
    enable = true;
    enableZshIntegration = true;
  };
}

