{
  description = "Multivariate Permutation Argument";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      packages.x86_64-linux.default = pkgs.stdenvNoCC.mkDerivation {
        name = "mv-permutation-arg";
        src = ./.;
        nativeBuildInputs = [ (pkgs.texlive.combine { inherit (pkgs.texlive) scheme-basic latexmk memoir etoolbox pdfsync lipsum mnsymbol multirow listings mdwtools xcolor framed ncctools algorithms float algorithmicx cryptocode mathtools pgf xargs xkeyval forloop pbox varwidth bigfoot environ todonotes latex-fonts lm titlesec; }) ];
        buildPhase = "latexmk -pdf";
        installPhase = ''
          mkdir $out
          install FRI.pdf $out/"MVPlonk.pdf"
        '';
      };
    };
}

