xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 35;
 -1.42140;9.55440;6.69320;,
 -4.28910;10.77140;11.15380;,
 -18.11970;0.31540;-9.69230;,
 -31.10150;3.62340;4.78940;,
 -27.83200;0.75330;-4.14300;,
 -33.49250;1.41870;0.15550;,
 -1.55560;10.93100;5.98530;,
 -6.88430;7.98190;0.75640;,
 -4.49790;12.18000;10.56210;,
 -31.33740;5.02440;4.19140;,
 -19.07330;1.23740;-11.20450;,
 -30.31530;1.74550;-4.78130;,
 -34.37590;2.22240;-1.69760;,
 -19.07330;1.23740;-11.20450;,
 -30.31530;1.74550;-4.78130;,
 -29.93380;0.58490;-2.32700;,
 -33.32060;0.31470;0.59900;,
 -34.25250;1.42970;-1.37950;,
 -19.07330;1.23740;-11.20450;,
 -6.88430;7.98190;0.75640;,
 -18.11970;0.31540;-9.69230;,
 -1.42140;9.55440;6.69320;,
 -1.55560;10.93100;5.98530;,
 -4.49790;12.18000;10.56210;,
 -4.28910;10.77140;11.15380;,
 -31.10150;3.62340;4.78940;,
 -4.28910;10.77140;11.15380;,
 -33.49250;1.41870;0.15550;,
 -33.32060;0.31470;0.59900;,
 -34.25250;1.42970;-1.37950;,
 -27.83200;0.75330;-4.14300;,
 -33.49250;1.41870;0.15550;,
 -33.32060;0.31470;0.59900;,
 -29.93380;0.58490;-2.32700;,
 -34.37590;2.22240;-1.69760;;
 
 25;
 3;0,1,2;,
 3;1,3,2;,
 3;2,3,4;,
 3;3,5,4;,
 3;6,7,8;,
 3;8,7,9;,
 3;7,10,9;,
 3;10,11,9;,
 3;11,12,9;,
 3;2,4,13;,
 3;13,4,14;,
 3;4,15,14;,
 3;15,16,14;,
 3;16,17,14;,
 3;18,19,20;,
 3;20,19,21;,
 3;19,22,21;,
 4;21,22,23,24;,
 4;9,25,26,8;,
 3;25,9,27;,
 3;9,12,27;,
 3;28,27,29;,
 3;27,12,29;,
 4;30,31,32,33;,
 3;17,34,14;;
 
 MeshMaterialList {
  1;
  25;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
     "data/TEXTURE/concrete.png";
        }
  }
 }
 MeshNormals {
  33;
  -0.161363;0.920875;-0.354897;,
  0.161271;-0.920882;0.354921;,
  0.161266;-0.920884;0.354918;,
  -0.257192;-0.888533;-0.379951;,
  -0.161257;0.920861;-0.354981;,
  -0.161191;0.920896;-0.354919;,
  -0.161267;0.920853;-0.354996;,
  -0.161293;0.920851;-0.354989;,
  0.060920;-0.981028;0.184046;,
  0.161250;-0.920887;0.354916;,
  0.161254;-0.920887;0.354913;,
  -0.161254;0.920896;-0.354892;,
  -0.257378;-0.888411;-0.380109;,
  -0.161247;0.920880;-0.354935;,
  -0.450244;-0.675596;-0.583824;,
  -0.098694;-0.990618;-0.094523;,
  -0.257168;-0.888564;-0.379892;,
  -0.336531;-0.818659;-0.465344;,
  0.744840;-0.246548;-0.620022;,
  0.744830;-0.246418;-0.620086;,
  0.744831;-0.246482;-0.620059;,
  0.744825;-0.246352;-0.620118;,
  0.744829;-0.246288;-0.620139;,
  0.835371;0.313546;0.451491;,
  -0.752947;0.147032;0.641446;,
  -0.652703;0.201793;0.730246;,
  -0.300590;0.331156;0.894417;,
  -0.895387;0.038660;0.443608;,
  -0.895392;0.038630;0.443600;,
  -0.895387;0.038783;0.443596;,
  -0.895391;0.038702;0.443597;,
  0.587570;0.378653;0.715111;,
  -0.587584;-0.378470;-0.715196;;
  25;
  3;9,10,8;,
  3;10,2,8;,
  3;8,2,15;,
  3;2,1,15;,
  3;7,4,6;,
  3;6,4,13;,
  3;4,5,13;,
  3;5,11,13;,
  3;11,0,13;,
  3;8,15,16;,
  3;16,15,17;,
  3;15,12,17;,
  3;12,3,17;,
  3;3,14,17;,
  3;18,19,20;,
  3;20,19,21;,
  3;19,22,21;,
  4;23,23,23,23;,
  4;24,25,26,26;,
  3;25,24,27;,
  3;24,28,27;,
  3;29,27,30;,
  3;27,28,30;,
  4;31,31,31,31;,
  3;14,32,17;;
 }
 MeshTextureCoords {
  35;
  0.007430;0.296400;,
  0.014760;0.284910;,
  0.050070;0.338590;,
  0.083210;0.301300;,
  0.074860;0.324300;,
  0.089320;0.313230;,
  0.007430;0.401740;,
  0.021040;0.388280;,
  0.014950;0.413530;,
  0.083470;0.397120;,
  0.052160;0.357480;,
  0.080860;0.374020;,
  0.091230;0.381960;,
  0.052500;0.342490;,
  0.411550;0.767030;,
  0.410580;0.760710;,
  0.419230;0.753180;,
  0.421600;0.758270;,
  0.514530;0.074460;,
  0.483990;0.091830;,
  0.510670;0.072080;,
  0.468830;0.095880;,
  0.470640;0.099420;,
  0.458950;0.102640;,
  0.457440;0.099010;,
  0.082870;0.398660;,
  0.014410;0.415050;,
  0.538450;0.906100;,
  0.539590;0.903250;,
  0.534530;0.906130;,
  0.852780;0.210980;,
  0.838330;0.212690;,
  0.838760;0.209850;,
  0.847410;0.210550;,
  0.421920;0.759090;;
 }
}
