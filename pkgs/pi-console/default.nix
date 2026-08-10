{ lib, buildNpmPackage, makeWrapper, nodejs }:

buildNpmPackage {
  pname = "pi-console";
  version = "0.1.0";

  src = ../../apps/pi-console;
  npmDepsHash = "sha256-4O5CZAShKhZVWyU5/Q6DgtmgpW05BmRZSFoFjARQZI8=";
  npmDepsFetcherVersion = 2;
  npmBuildScript = "check";

  nativeBuildInputs = [ makeWrapper ];

  installPhase = ''
    runHook preInstall
    mkdir -p $out/lib/pi-console $out/bin
    cp -r src public package.json node_modules $out/lib/pi-console/
    makeWrapper ${nodejs}/bin/node $out/bin/pi-console \
      --add-flags "$out/lib/pi-console/src/server.js" \
      --set PI_CONSOLE_PUBLIC_DIR "$out/lib/pi-console/public"
    runHook postInstall
  '';

  meta = {
    description = "Private threaded web command center powered by the Pi SDK";
    license = lib.licenses.mit;
    mainProgram = "pi-console";
    platforms = lib.platforms.linux;
  };
}
