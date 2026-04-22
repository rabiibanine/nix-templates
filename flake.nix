{

  description = "Nix templates";

  inputs = {

  };

  outputs =
    { self, ... }@inputs:
    {
      templates = {
        python = {
          path = "./python";
          description = "Python dev shell";
        };
        c = {
          path = "./c";
          description = "The C language dev shell";
        };
        javascript = {
          path = "./javascript";
          description = "Javascript dev shell";
        };
      };
    };

}
