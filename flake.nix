{

  description = "Nix templates";

  inputs = {

  };

  outputs =
    { self, ... }@inputs:
    {
      templates = {

        universal = {
          path = ./templates/universal;
          description = "Universal dev shell";
        };

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

        java = {
          path = ./templates/java;
          description = "Java dev shell";
        };

        java-gradle = {
          path = ./templates/java-gradle;
          description = "Java-gradle dev shell";
        };

        java-maven = {
          path = ./templates/java-maven;
          description = "Java-maven dev shell";
        };

      };
    };

}
