{

  description = "Nix templates";

  inputs = {

  };

  outputs =
    { self, ... }@inputs:
    {
      templates = {
        python = {
          path = ./templates/python;
          description = "Python dev shell";
        };
        c = {
          path = ./templates/c;
          description = "The C language dev shell";
        };
        javascript = {
          path = ./templates/javascript;
          description = "Javascript dev shell";
        };
      };
    };

}
