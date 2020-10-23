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
 55;
 32.25274;7.56710;7.44676;,
 32.24324;10.61280;0.00327;,
 3.70172;9.95080;0.00227;,
 3.70172;7.11620;7.00456;,
 32.25274;7.56710;-7.44023;,
 3.70172;7.11620;-7.00003;,
 -0.16029;4.62900;4.92276;,
 -0.16029;5.29300;0.14506;,
 -0.16029;0.00140;0.00226;,
 -0.16029;0.08980;5.84916;,
 -0.16029;4.73690;-4.63274;,
 -0.16029;0.09240;-5.26954;,
 -0.16029;-4.95370;0.14746;,
 -0.16029;-4.44960;4.99276;,
 -0.16029;-4.55210;-4.69774;,
 3.70172;-7.11340;7.00456;,
 3.70172;-9.21790;0.00227;,
 32.02354;-10.52340;0.00327;,
 32.25274;-7.55910;7.44676;,
 3.70172;-7.11340;-7.00003;,
 32.25274;-7.55910;-7.44023;,
 39.70184;-9.29440;10.00847;,
 39.70184;-13.21700;0.18837;,
 39.70184;0.00140;0.00227;,
 39.70184;0.10540;13.58287;,
 39.70184;-9.49320;-9.77393;,
 39.70184;0.11870;-13.31733;,
 39.70184;13.32220;0.17407;,
 39.70184;9.45360;9.88357;,
 39.70184;9.65250;-9.64813;,
 32.09084;0.00400;-10.55323;,
 32.25274;-7.55910;-7.44023;,
 3.70172;-7.11340;-7.00003;,
 3.70172;0.00140;-9.43383;,
 32.25274;-7.55910;7.44676;,
 32.41814;0.00400;10.66037;,
 3.70172;0.00140;10.59477;,
 3.70172;-7.11340;7.00456;,
 3.70172;0.00140;10.59477;,
 3.70172;0.00140;-9.43383;,
 35.85114;-8.09400;7.96796;,
 35.57874;-11.35330;0.00017;,
 36.04774;0.00180;11.33637;,
 35.85114;-8.09400;-7.96753;,
 35.65874;0.00180;-11.36203;,
 35.83994;11.36160;0.00017;,
 35.85114;8.09750;7.96796;,
 35.85114;8.09750;-7.96753;,
 35.85114;8.09750;7.96796;,
 35.83994;11.36160;0.00017;,
 35.85114;8.09750;-7.96753;,
 35.65874;0.00180;-11.36203;,
 35.85114;-8.09400;-7.96753;,
 35.85114;-8.09400;7.96796;,
 36.04774;0.00180;11.33637;;
 
 40;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;6,7,8,9;,
 4;7,10,11,8;,
 4;9,8,12,13;,
 4;8,11,14,12;,
 4;15,16,17,18;,
 4;16,19,20,17;,
 4;21,22,23,24;,
 4;22,25,26,23;,
 4;24,23,27,28;,
 4;23,26,29,27;,
 4;30,31,32,33;,
 4;4,30,33,5;,
 4;34,35,36,37;,
 4;35,0,3,36;,
 4;3,2,7,6;,
 4;38,3,6,9;,
 4;2,5,10,7;,
 4;5,39,11,10;,
 4;16,15,13,12;,
 4;15,38,9,13;,
 4;39,19,14,11;,
 4;19,16,12,14;,
 4;40,41,22,21;,
 4;42,40,21,24;,
 4;41,43,25,22;,
 4;43,44,26,25;,
 4;45,46,28,27;,
 4;46,42,24,28;,
 4;44,47,29,26;,
 4;47,45,27,29;,
 4;48,49,1,0;,
 4;49,50,4,1;,
 4;50,51,30,4;,
 4;51,52,31,30;,
 4;17,20,43,41;,
 4;18,17,41,40;,
 4;53,54,35,34;,
 4;54,48,0,35;;
 
 MeshMaterialList {
  17;
  40;
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9,
  9;;
  Material {
   0.008000;0.008000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.056000;0.056000;0.056000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.008000;0.008000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.696000;0.400000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.696000;0.400000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.696000;0.400000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.400000;0.312000;0.072000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.008000;0.008000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.112000;0.264000;0.144000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.144000;0.216000;0.040000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.616000;0.392000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.048000;0.080000;0.176000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.064000;0.064000;0.064000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.424000;0.136000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.016000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  42;
  -0.358988;0.662381;0.657555;,
  -0.341366;0.939928;0.002118;,
  -0.346076;0.667599;-0.659198;,
  -0.415242;0.661573;0.624417;,
  -0.409323;0.912387;0.002081;,
  -0.421070;0.630328;-0.652217;,
  -0.409666;0.001535;0.912234;,
  -0.392669;0.001318;-0.919679;,
  -0.419454;-0.678688;0.602860;,
  -0.399011;-0.916944;0.001908;,
  -0.424776;-0.648518;-0.631656;,
  -0.353850;-0.662271;0.660445;,
  -0.331538;-0.943439;0.002280;,
  -0.341811;-0.667533;-0.661486;,
  -0.371533;0.001475;0.928419;,
  -0.350628;0.001730;-0.936513;,
  -0.883312;0.343220;0.319313;,
  -0.927466;0.373901;0.002004;,
  -1.000000;-0.000000;-0.000000;,
  -0.929559;0.001456;0.368670;,
  -0.885809;0.320536;-0.335557;,
  -0.919618;0.001298;-0.392811;,
  -0.921521;-0.388324;0.001880;,
  -0.885032;-0.352462;0.304119;,
  -0.887336;-0.330787;-0.321272;,
  1.000000;0.000000;0.000000;,
  -0.107985;0.712231;0.693589;,
  -0.113537;0.993534;0.000011;,
  -0.118645;0.699184;-0.705028;,
  -0.121860;0.000008;-0.992547;,
  -0.125725;-0.707125;-0.695822;,
  -0.124854;-0.992175;0.000007;,
  -0.114945;-0.720089;0.684295;,
  -0.104159;0.000011;0.994561;,
  -0.440848;-0.897570;0.004485;,
  -0.493095;-0.616058;0.614271;,
  -0.533415;0.002843;0.845849;,
  -0.462094;-0.630368;-0.623782;,
  -0.478689;0.003378;-0.877978;,
  -0.508011;0.612228;0.605889;,
  -0.470313;0.882490;0.004138;,
  -0.475743;0.626881;-0.617000;;
  40;
  4;26,27,4,3;,
  4;27,28,5,4;,
  4;16,17,18,19;,
  4;17,20,21,18;,
  4;19,18,22,23;,
  4;18,21,24,22;,
  4;8,9,31,32;,
  4;9,10,30,31;,
  4;25,25,25,25;,
  4;25,25,25,25;,
  4;25,25,25,25;,
  4;25,25,25,25;,
  4;29,30,10,7;,
  4;28,29,7,5;,
  4;32,33,6,8;,
  4;33,26,3,6;,
  4;3,4,17,16;,
  4;6,3,16,19;,
  4;4,5,20,17;,
  4;5,7,21,20;,
  4;9,8,23,22;,
  4;8,6,19,23;,
  4;7,10,24,21;,
  4;10,9,22,24;,
  4;11,12,34,35;,
  4;14,11,35,36;,
  4;12,13,37,34;,
  4;13,15,38,37;,
  4;1,0,39,40;,
  4;0,14,36,39;,
  4;15,2,41,38;,
  4;2,1,40,41;,
  4;0,1,27,26;,
  4;1,2,28,27;,
  4;2,15,29,28;,
  4;15,13,30,29;,
  4;31,30,13,12;,
  4;32,31,12,11;,
  4;11,14,33,32;,
  4;14,0,26,33;;
 }
 MeshTextureCoords {
  55;
  0.375000;0.027970;,
  0.500000;0.027970;,
  0.500000;0.250000;,
  0.375000;0.250000;,
  0.625000;0.027970;,
  0.625000;0.250000;,
  0.375000;0.250000;,
  0.500000;0.250000;,
  0.500000;0.375000;,
  0.375000;0.375000;,
  0.625000;0.250000;,
  0.625000;0.375000;,
  0.500000;0.500000;,
  0.375000;0.500000;,
  0.625000;0.500000;,
  0.375000;0.500000;,
  0.500000;0.500000;,
  0.500000;0.722030;,
  0.375000;0.722030;,
  0.625000;0.500000;,
  0.625000;0.722030;,
  0.375000;0.750000;,
  0.500000;0.750000;,
  0.500000;0.875000;,
  0.375000;0.875000;,
  0.625000;0.750000;,
  0.625000;0.875000;,
  0.500000;1.000000;,
  0.375000;1.000000;,
  0.625000;1.000000;,
  0.750000;0.027970;,
  0.875000;0.027970;,
  0.875000;0.250000;,
  0.750000;0.250000;,
  0.125000;0.027970;,
  0.250000;0.027970;,
  0.250000;0.250000;,
  0.125000;0.250000;,
  0.375000;0.375000;,
  0.625000;0.375000;,
  0.375000;0.750000;,
  0.500000;0.750000;,
  0.375000;0.875000;,
  0.625000;0.750000;,
  0.625000;0.875000;,
  0.500000;1.000000;,
  0.375000;1.000000;,
  0.625000;1.000000;,
  0.375000;0.000000;,
  0.500000;0.000000;,
  0.625000;0.000000;,
  0.750000;0.000000;,
  0.875000;0.000000;,
  0.125000;0.000000;,
  0.250000;0.000000;;
 }
}
