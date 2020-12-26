{
    sources ? import ./nix/sources.nix {},
    pkgs ? import sources.nixpkgs {},
    neuron ? import sources.neuron {}
}:

pkgs.mkShell {
    buildInputs = [
        neuron
    ];
}