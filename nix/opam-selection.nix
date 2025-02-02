### This file is generated by opam2nix.

self:
let
    lib = self.lib;
    pkgs = self.pkgs;
    selection = self.selection;
    repoPath = self.repoPath;
    repos = 
    {
      opam-repository = 
      rec {
        fetch = 
        {
          owner = "ocaml";
          repo = "opam-repository";
          rev = "e10b6ec1ad58b6faa39283ba79fe31b19b2a1897";
          sha256 = "09ag9wsx1nfxm576pkzjqv3rxaq0sa0s5psmknkl59pl95djj5c5";
        };
        src = (pkgs.fetchFromGitHub) fetch;
      };
    };
in
{
  format-version = 4;
  inherit repos;
  ocaml-version = "4.14.1";
  selection = 
  {
    base = 
    {
      pname = "base";
      version = "v0.15.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/janestreet/base/archive/refs/tags/v0.15.1.tar.gz";
        sha256 = "050syrp6v00gn50d6xvwv6a36zsk4zmahymgllxpw9paf4qk0pkm";
      };
      opamInputs = 
      {
        inherit (selection) sexplib0 ocaml dune-configurator dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/base/base.v0.15.1";
        hash = "sha256:0gx21y0rnza0dqj3i1fdblf9n3cd56awyd9md3dd8v41f1fvqi97";
      };
    };
    base-threads = 
    {
      pname = "base-threads";
      version = "base";
      src = null;
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/base-threads/base-threads.base";
        hash = "sha256:1c4bpyh61ampjgk5yh3inrgcpf1z1xv0pshn54ycmpn4dyzv0p2x";
      };
    };
    base-unix = 
    {
      pname = "base-unix";
      version = "base";
      src = null;
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/base-unix/base-unix.base";
        hash = "sha256:0mpsvb7684g723ylngryh15aqxg3blb7hgmq2fsqjyppr36iyzwg";
      };
    };
    cmdliner = 
    {
      pname = "cmdliner";
      version = "1.2.0";
      src = pkgs.fetchurl 
      {
        url = "https://erratique.ch/software/cmdliner/releases/cmdliner-1.2.0.tbz";
        sha256 = "0y00vnlk3nim8bh4gvimdpg71gp22z3b35sfyvb4yf98j1c11vdg";
      };
      opamInputs = {
                     inherit (selection) ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/cmdliner/cmdliner.1.2.0";
        hash = "sha256:0q1n1rg7pg34h75k02dmfpcwnhcih1hxaiifzi99ac9yhz6k4wg4";
      };
    };
    cppo = 
    {
      pname = "cppo";
      version = "1.6.9";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-community/cppo/archive/v1.6.9.tar.gz";
        sha256 = "0sm2vn5y7w7fyrwkv7f86y4nvs5vsrqy1x2nidy0lcqxq62ns0qn";
      };
      opamInputs = 
      {
        inherit (selection) ocaml dune base-unix;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/cppo/cppo.1.6.9";
        hash = "sha256:19i6yqv9lq09v3xw1sfqayh40sihhd4hfyvk9dwz1m5dv1g63xlp";
      };
    };
    csexp = 
    {
      pname = "csexp";
      version = "1.5.2";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-dune/csexp/releases/download/1.5.2/csexp-1.5.2.tbz";
        sha256 = "1zw7fxlhx5mnf09mrhzk0yf3m4bpiii51194j0cs8ya3pc2ds50s";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/csexp/csexp.1.5.2";
        hash = "sha256:1j22xbli4h2ni6y2a6ghfzdnwx0z5x1nw57hr6nmsdk0ys04a0gs";
      };
    };
    dune = 
    {
      pname = "dune";
      version = "3.7.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/dune/releases/download/3.7.1/dune-3.7.1.tbz";
        sha256 = "1hsl3j8wpxs2mpbr4x3ikf1vhynj2785256nh2ns52019kqkiz5d";
      };
      opamInputs = 
      {
        inherit (selection) base-unix
        base-threads;
        ocamlfind-secondary = selection.ocamlfind-secondary or null;
        ocaml = selection.ocaml or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/dune/dune.3.7.1";
        hash = "sha256:1dmd0vj55mjz2f5z6rifpqvq76pph3209xkiy67skh52daz80gds";
      };
    };
    dune-configurator = 
    {
      pname = "dune-configurator";
      version = "3.7.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/dune/releases/download/3.7.1/dune-3.7.1.tbz";
        sha256 = "1hsl3j8wpxs2mpbr4x3ikf1vhynj2785256nh2ns52019kqkiz5d";
      };
      opamInputs = 
      {
        inherit (selection) ocaml dune csexp base-unix;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/dune-configurator/dune-configurator.3.7.1";
        hash = "sha256:0dsn0s563pb0abl1g45x7hl8l2dbdmfn567zvp5bc3l7z54k28b0";
      };
    };
    gen = 
    {
      pname = "gen";
      version = "1.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/c-cube/gen/archive/v1.1.tar.gz";
        sha256 = "1c4wz37k0fgyp3687kf5bcwz4c4hagzaabpcqm72b95sdcavz4v8";
      };
      opamInputs = {
                     inherit (selection) seq ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/gen/gen.1.1";
        hash = "sha256:1mr7w0dxc6qagh23mshsan019x8ggwk356qmfrxslb9v7gzcggaz";
      };
    };
    gen_js_api = 
    {
      pname = "gen_js_api";
      version = "1.1.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/LexiFi/gen_js_api/archive/v1.1.1.tar.gz";
        sha256 = "14symcadb5m4ivky0w6xqa9l6cfafzcsxihiv074wybla3974csd";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ojs ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/gen_js_api/gen_js_api.1.1.1";
        hash = "sha256:1jwp2rj7i7wrp0lyhhvb6y835l748l0nmgj49xymh8npn81b0rn6";
      };
    };
    js_of_ocaml = 
    {
      pname = "js_of_ocaml";
      version = "5.2.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocsigen/js_of_ocaml/releases/download/5.2.0/js_of_ocaml-5.2.0.tbz";
        sha256 = "1dffgy5368v132zljcr9l3bbz9wg8a9v5bbkddqhb9d6zyjb02k5";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ocaml js_of_ocaml-compiler dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/js_of_ocaml/js_of_ocaml.5.2.0";
        hash = "sha256:1hwrkbs9v8wad98s2gmgxyv7v9bpdkfvp4hghz5ch5bmpzynx8aj";
      };
    };
    js_of_ocaml-compiler = 
    {
      pname = "js_of_ocaml-compiler";
      version = "5.2.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocsigen/js_of_ocaml/releases/download/5.2.0/js_of_ocaml-5.2.0.tbz";
        sha256 = "1dffgy5368v132zljcr9l3bbz9wg8a9v5bbkddqhb9d6zyjb02k5";
      };
      opamInputs = 
      {
        inherit (selection) yojson sedlex ppxlib ocaml menhirSdk menhirLib
        menhir dune cmdliner;
        ocamlfind = selection.ocamlfind or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/js_of_ocaml-compiler/js_of_ocaml-compiler.5.2.0";
        hash = "sha256:0im35qg7azg23pcmbc2ankf4919374q66zjmzm1sp1wvvdd5r0kn";
      };
    };
    js_of_ocaml-ppx = 
    {
      pname = "js_of_ocaml-ppx";
      version = "5.2.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocsigen/js_of_ocaml/releases/download/5.2.0/js_of_ocaml-5.2.0.tbz";
        sha256 = "1dffgy5368v132zljcr9l3bbz9wg8a9v5bbkddqhb9d6zyjb02k5";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ocaml js_of_ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/js_of_ocaml-ppx/js_of_ocaml-ppx.5.2.0";
        hash = "sha256:0gjpfnrcimq1mh6wfl182gcdjqamvnaj9fy46vrrayxdw0m2f2m9";
      };
    };
    jsonoo = 
    {
      pname = "jsonoo";
      version = "0.2.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/mnxn/jsonoo/releases/download/v0.2.1/jsonoo-v0.2.1.tbz";
        sha256 = "0vyisz67rgiicb6frvyb0lfgv2c1i9mqrxji1i9s6psqn6izglnv";
      };
      opamInputs = 
      {
        inherit (selection) ocaml js_of_ocaml-ppx js_of_ocaml gen_js_api dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/jsonoo/jsonoo.0.2.1";
        hash = "sha256:0icxpmcrgv1r36qkvp48akw34cr374d9r24d4ghxwi7z31d2hwqz";
      };
    };
    menhir = 
    {
      pname = "menhir";
      version = "20230415";
      src = pkgs.fetchurl 
      {
        url = "https://gitlab.inria.fr/fpottier/menhir/-/archive/20230415/archive.tar.gz";
        sha256 = "1i5q5189j5dlfp34s285ijix3gq4xncrpppn9svn3mm214x134n8";
      };
      opamInputs = 
      {
        inherit (selection) ocaml menhirSdk menhirLib dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/menhir/menhir.20230415";
        hash = "sha256:0ac7rgm8fp2zpcbc3c3i7fyrpv7jzmkar27g3qs3lzbpzccxrwj9";
      };
    };
    menhirLib = 
    {
      pname = "menhirLib";
      version = "20230415";
      src = pkgs.fetchurl 
      {
        url = "https://gitlab.inria.fr/fpottier/menhir/-/archive/20230415/archive.tar.gz";
        sha256 = "1i5q5189j5dlfp34s285ijix3gq4xncrpppn9svn3mm214x134n8";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/menhirLib/menhirLib.20230415";
        hash = "sha256:0gsvqs7z6a9mkv6idphm120psc0jf1l694kbq0ywscv8mg0rq46c";
      };
    };
    menhirSdk = 
    {
      pname = "menhirSdk";
      version = "20230415";
      src = pkgs.fetchurl 
      {
        url = "https://gitlab.inria.fr/fpottier/menhir/-/archive/20230415/archive.tar.gz";
        sha256 = "1i5q5189j5dlfp34s285ijix3gq4xncrpppn9svn3mm214x134n8";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/menhirSdk/menhirSdk.20230415";
        hash = "sha256:0wnvy596mxa5w85sy06i1f114jgznvxdbwvw1d2fk6fl0c0yriww";
      };
    };
    ocaml = 
    {
      pname = "ocaml";
      version = "4.14.1";
      src = null;
      opamInputs = 
      {
        inherit (selection)
        ocaml-config;
        ocaml-variants = selection.ocaml-variants or null;
        ocaml-system = selection.ocaml-system or null;
        ocaml-base-compiler = selection.ocaml-base-compiler or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml/ocaml.4.14.1";
        hash = "sha256:16yvyr4nxcpvqp8w7wfhh9rkg2hl4ck3f64fw8kkgx7w2crcp8di";
      };
    };
    ocaml-base-compiler = 
    {
      pname = "ocaml-base-compiler";
      version = "4.14.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/ocaml/archive/4.14.1.tar.gz";
        sha256 = "0a5h8m8jliw0pf9xwbsnhp534x2qirc1qf3lkmnzpg5ry3k0cq3p";
      };
      opamInputs = {
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml-base-compiler/ocaml-base-compiler.4.14.1";
        hash = "sha256:1kpxp8pd4qw0imw3yxqk2m7fchb12b90nxgmqafha8f77qg6a0jw";
      };
    };
    ocaml-compiler-libs = 
    {
      pname = "ocaml-compiler-libs";
      version = "v0.12.4";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/janestreet/ocaml-compiler-libs/releases/download/v0.12.4/ocaml-compiler-libs-v0.12.4.tbz";
        sha256 = "0q3pl20pkx410gw9g4m26qq6dmzi9qan2dqlga6c2ifc6pnckjaf";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml-compiler-libs/ocaml-compiler-libs.v0.12.4";
        hash = "sha256:1blynia10j8vyj559kcvc7ic69zq6qjjn092fcsjzfw6czd8ya2c";
      };
    };
    ocaml-config = 
    {
      pname = "ocaml-config";
      version = "2";
      src = null;
      opamInputs = 
      {
        ocaml-variants = selection.ocaml-variants or null;
        ocaml-system = selection.ocaml-system or null;
        ocaml-base-compiler = selection.ocaml-base-compiler or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml-config/ocaml-config.2";
        hash = "sha256:0h0hgqq9mbywvqygppfdc50gf9ss8a97l4dgsv3hszmzh6gglgrg";
      };
    };
    ocaml-version = 
    {
      pname = "ocaml-version";
      version = "3.6.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocurrent/ocaml-version/releases/download/v3.6.1/ocaml-version-3.6.1.tbz";
        sha256 = "0clxf5nlf6qjqsharrbgavrci33cqd0bbxa4p1y7a9x18xfrm800";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ocaml-version/ocaml-version.3.6.1";
        hash = "sha256:1dr1bd0dmzj08sl31yk5qyacmlv96yn40skvirizbj7m4pm0q4jw";
      };
    };
    ojs = 
    {
      pname = "ojs";
      version = "1.1.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/LexiFi/gen_js_api/archive/v1.1.1.tar.gz";
        sha256 = "14symcadb5m4ivky0w6xqa9l6cfafzcsxihiv074wybla3974csd";
      };
      opamInputs = 
      {
        inherit (selection) ocaml js_of_ocaml-compiler dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ojs/ojs.1.1.1";
        hash = "sha256:1rmhkxx99zxkq27hzlyhvksl5dy9g1dxy9xqvvn087rdp5nkdrk6";
      };
    };
    opam-file-format = 
    {
      pname = "opam-file-format";
      version = "2.1.6";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/opam-file-format/archive/refs/tags/2.1.6.tar.gz";
        sha256 = "1hs6qcf2bm1s3pp1jzzsyc82mf79s6dnlkpv92jyyvf38p4qaiwq";
      };
      opamInputs = 
      {
        inherit (selection) ocaml;
        dune = selection.dune or null;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/opam-file-format/opam-file-format.2.1.6";
        hash = "sha256:1y89ixri8mqx4sc2prbw8cha06krcvplv6nl0vm5wdfk59sh01qv";
      };
    };
    ppx_derivers = 
    {
      pname = "ppx_derivers";
      version = "1.2.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-ppx/ppx_derivers/archive/1.2.1.tar.gz";
        sha256 = "159vqy616ni18mn0dlv8c2y4h7mb4hahwjn53yrr59yyhzhmwndn";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppx_derivers/ppx_derivers.1.2.1";
        hash = "sha256:1hj1ina0n7pgz16mrvijczapw75pd0hif0i18dpw7d1fyg2qr8py";
      };
    };
    ppxlib = 
    {
      pname = "ppxlib";
      version = "0.29.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-ppx/ppxlib/releases/download/0.29.1/ppxlib-0.29.1.tbz";
        sha256 = "0yfxwmkcgrn8j0m8dsklm7d979119f0jszrfc6kdnks1f23qrsn8";
      };
      opamInputs = 
      {
        inherit (selection) stdlib-shims sexplib0 ppx_derivers
        ocaml-compiler-libs ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/ppxlib/ppxlib.0.29.1";
        hash = "sha256:1201w2qdyf60z07zy8by35drh8dkl9rdh1h5wshcjddrc92rki0c";
      };
    };
    promise_jsoo = 
    {
      pname = "promise_jsoo";
      version = "0.3.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/mnxn/promise_jsoo/releases/download/v0.3.1/promise_jsoo-v0.3.1.tbz";
        sha256 = "00pjnsbv0yv3hhxbbl8dsljgr95kjgi9w8j1x46gjyxg9zayrxzl";
      };
      opamInputs = 
      {
        inherit (selection) ocaml js_of_ocaml-ppx js_of_ocaml gen_js_api dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/promise_jsoo/promise_jsoo.0.3.1";
        hash = "sha256:1awsb93iipwc9q8cnam7qa9rzjivirryqnhwba01wz37gz3471sd";
      };
    };
    sedlex = 
    {
      pname = "sedlex";
      version = "3.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-community/sedlex/archive/refs/tags/v3.1.tar.gz";
        sha256 = "1g0dbvydn5ifkxarh9cp2mrbadmcr7k2xfzbyghzvczrmh530g6a";
      };
      opamInputs = 
      {
        inherit (selection) ppxlib ocaml gen dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/sedlex/sedlex.3.1";
        hash = "sha256:12rr3n8rmm30bazirns1kinf1p5m2pjmdknzh9nl4wdkcsv2plkz";
      };
    };
    seq = 
    {
      pname = "seq";
      version = "base";
      src = null;
      opamInputs = {
                     inherit (selection) ocaml;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/seq/seq.base";
        hash = "sha256:1vm8mk6zm2q3fwnkprl6jib048zr4ysldw0bl74x6wwbxj0vx6k9";
      };
    };
    sexplib0 = 
    {
      pname = "sexplib0";
      version = "v0.15.1";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/janestreet/sexplib0/archive/refs/tags/v0.15.1.tar.gz";
        sha256 = "1cv78931di97av82khqwmx5s51mrn9d2b82z0si88gxwndz83kg8";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/sexplib0/sexplib0.v0.15.1";
        hash = "sha256:1yg5rknfbx67wrs3gampx3jmcw9si38n90cj4kg5626k41nmhsc0";
      };
    };
    stdlib-shims = 
    {
      pname = "stdlib-shims";
      version = "0.3.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml/stdlib-shims/releases/download/0.3.0/stdlib-shims-0.3.0.tbz";
        sha256 = "0jnqsv6pqp5b5g7lcjwgd75zqqvcwcl5a32zi03zg1kvj79p5gxs";
      };
      opamInputs = {
                     inherit (selection) ocaml dune;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/stdlib-shims/stdlib-shims.0.3.0";
        hash = "sha256:1hwyzzcx7clz4p58fj3n6frq2srbxdmhmxxd6n6mpw9gj2vs6yiw";
      };
    };
    vscode = 
    {
      pname = "vscode";
      version = "development";
      src = self.directSrc "vscode";
      opamInputs = 
      {
        inherit (selection) promise_jsoo ocaml jsonoo js_of_ocaml gen_js_api
        dune;
      };
      opamSrc = "vscode.opam";
    };
    vscode-ocaml-platform = 
    {
      pname = "vscode-ocaml-platform";
      version = "development";
      src = self.directSrc "vscode-ocaml-platform";
      opamInputs = 
      {
        inherit (selection) vscode promise_jsoo ppxlib opam-file-format
        ocaml-version ocaml jsonoo js_of_ocaml gen_js_api dune base;
      };
      opamSrc = "vscode-ocaml-platform.opam";
    };
    yojson = 
    {
      pname = "yojson";
      version = "2.1.0";
      src = pkgs.fetchurl 
      {
        url = "https://github.com/ocaml-community/yojson/releases/download/2.1.0/yojson-2.1.0.tbz";
        sha256 = "0pdij17lw31qf4rq7cbpf7lym527v856ny98jagjbasqvgr1zjwz";
      };
      opamInputs = 
      {
        inherit (selection) seq ocaml dune cppo;
      };
      opamSrc = repoPath (repos.opam-repository.src) 
      {
        package = "packages/yojson/yojson.2.1.0";
        hash = "sha256:1cws1agfk316cybg7hn3nvkxnyl21vsga4w6p72iyq1ygasagipf";
      };
    };
  };
}

