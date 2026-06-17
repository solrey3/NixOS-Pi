{ ... }:

{
  programs.lazydocker = {
    enable = true;
    settings = {
      gui = {
        showBottomLine = true;
        theme = {
          activeBorderColor = [ "green" "bold" ];
          inactiveBorderColor = [ "white" ];
          selectedLineBgColor = [ "blue" ];
        };
      };
    };
  };
}
