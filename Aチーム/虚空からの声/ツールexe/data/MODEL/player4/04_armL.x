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
 32.41025;7.58386;7.45482;,
 32.40077;10.62960;0.01131;,
 3.85930;9.96759;0.01038;,
 3.85930;7.13294;7.01268;,
 32.41025;7.58386;-7.43219;,
 3.85930;7.13294;-6.99192;,
 -0.00273;4.64577;4.93082;,
 -0.00273;5.30972;0.15310;,
 -0.00273;0.01816;0.01038;,
 -0.00273;0.10649;5.85724;,
 -0.00273;4.75363;-4.62462;,
 -0.00273;0.10916;-5.26146;,
 -0.00273;-4.93700;0.15557;,
 -0.00273;-4.43285;5.00082;,
 -0.00273;-4.53537;-4.68969;,
 3.85930;-7.09665;7.01268;,
 3.85930;-9.20111;0.01038;,
 32.18102;-10.50665;0.01131;,
 32.41025;-7.54233;7.45482;,
 3.85930;-7.09665;-6.99192;,
 32.41025;-7.54233;-7.43219;,
 39.85990;-9.27764;10.01656;,
 39.85991;-13.20020;0.19647;,
 39.85986;0.01816;0.01038;,
 39.85990;0.12218;13.59098;,
 39.85990;-9.47641;-9.76587;,
 39.85991;0.13544;-13.30922;,
 39.85991;13.33898;0.18212;,
 39.85990;9.47038;9.89167;,
 39.85990;9.66928;-9.64005;,
 32.24832;0.02079;-10.54517;,
 32.41025;-7.54233;-7.43219;,
 3.85930;-7.09665;-6.99192;,
 3.85930;0.01816;-9.42573;,
 32.41025;-7.54233;7.45482;,
 32.57560;0.02079;10.66839;,
 3.85930;0.01816;10.60279;,
 3.85930;-7.09665;7.01268;,
 3.85930;0.01816;10.60279;,
 3.85930;0.01816;-9.42573;,
 36.00885;-8.07721;7.97600;,
 35.73631;-11.33650;0.00826;,
 36.20546;0.01856;11.34448;,
 36.00885;-8.07721;-7.95948;,
 35.81633;0.01856;-11.35401;,
 35.99754;11.38655;-0.01166;,
 36.00887;8.10613;7.99592;,
 36.00885;8.11429;-7.95948;,
 36.00887;8.10613;7.99592;,
 35.99754;11.38655;-0.01166;,
 36.00885;8.11429;-7.95948;,
 35.81633;0.01856;-11.35401;,
 36.00885;-8.07721;-7.95948;,
 36.00885;-8.07721;7.97600;,
 36.20546;0.01856;11.34448;;
 
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
  14;
  40;
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3;;
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
   0.800000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.096000;0.360000;0.400000;1.000000;;
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
   0.800000;0.624000;0.392000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.088000;0.032000;0.032000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  50;
  -0.359153;0.662016;0.657832;,
  -0.341467;0.939892;0.001661;,
  -0.346065;0.667337;-0.659469;,
  -0.415241;0.661570;0.624420;,
  -0.409317;0.912390;0.002080;,
  -0.421062;0.630329;-0.652220;,
  -0.409663;0.001535;0.912236;,
  -0.392667;0.001319;-0.919680;,
  -0.419452;-0.678688;0.602863;,
  -0.399006;-0.916946;0.001908;,
  -0.424772;-0.648520;-0.631657;,
  -0.353828;-0.662277;0.660450;,
  -0.331510;-0.943449;0.002281;,
  -0.341783;-0.667541;-0.661493;,
  -0.371584;0.001108;0.928399;,
  -0.350600;0.001730;-0.936524;,
  -0.883312;0.343219;0.319313;,
  -0.927467;0.373900;0.002003;,
  -1.000000;0.000000;0.000000;,
  -0.929558;0.001456;0.368672;,
  -0.885809;0.320537;-0.335558;,
  -0.919617;0.001299;-0.392813;,
  -0.921519;-0.388328;0.001880;,
  -0.885031;-0.352464;0.304121;,
  -0.887333;-0.330791;-0.321276;,
  1.000000;0.000002;-0.000002;,
  1.000000;0.000002;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;-0.000001;,
  1.000000;0.000002;0.000002;,
  1.000000;-0.000000;0.000002;,
  1.000000;-0.000002;0.000001;,
  1.000000;-0.000002;-0.000001;,
  1.000000;-0.000002;0.000002;,
  -0.108545;0.712056;0.693681;,
  -0.114087;0.993471;-0.000164;,
  -0.119186;0.698953;-0.705166;,
  -0.121859;0.000008;-0.992547;,
  -0.125720;-0.707126;-0.695821;,
  -0.124846;-0.992176;0.000008;,
  -0.114941;-0.720089;0.684296;,
  -0.104715;-0.000257;0.994502;,
  -0.440812;-0.897588;0.004486;,
  -0.493062;-0.616072;0.614284;,
  -0.532633;0.002647;0.846342;,
  -0.462052;-0.630385;-0.623798;,
  -0.478641;0.003378;-0.878004;,
  -0.507344;0.612140;0.606537;,
  -0.469523;0.882913;0.003583;,
  -0.474797;0.627080;-0.617526;;
  40;
  4;34,35,4,3;,
  4;35,36,5,4;,
  4;16,17,18,19;,
  4;17,20,21,18;,
  4;19,18,22,23;,
  4;18,21,24,22;,
  4;8,9,39,40;,
  4;9,10,38,39;,
  4;25,26,27,28;,
  4;26,29,30,27;,
  4;28,27,31,32;,
  4;27,30,33,31;,
  4;37,38,10,7;,
  4;36,37,7,5;,
  4;40,41,6,8;,
  4;41,34,3,6;,
  4;3,4,17,16;,
  4;6,3,16,19;,
  4;4,5,20,17;,
  4;5,7,21,20;,
  4;9,8,23,22;,
  4;8,6,19,23;,
  4;7,10,24,21;,
  4;10,9,22,24;,
  4;11,12,42,43;,
  4;14,11,43,44;,
  4;12,13,45,42;,
  4;13,15,46,45;,
  4;1,0,47,48;,
  4;0,14,44,47;,
  4;15,2,49,46;,
  4;2,1,48,49;,
  4;0,1,35,34;,
  4;1,2,36,35;,
  4;2,15,37,36;,
  4;15,13,38,37;,
  4;39,38,13,12;,
  4;40,39,12,11;,
  4;11,14,41,40;,
  4;14,0,34,41;;
 }
 MeshTextureCoords {
  55;
  0.375000;0.027969;,
  0.500000;0.027969;,
  0.500000;0.250000;,
  0.375000;0.250000;,
  0.625000;0.027969;,
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
  0.500000;0.722031;,
  0.375000;0.722031;,
  0.625000;0.500000;,
  0.625000;0.722031;,
  0.375000;0.750000;,
  0.500000;0.750000;,
  0.500000;0.875000;,
  0.375000;0.875000;,
  0.625000;0.750000;,
  0.625000;0.875000;,
  0.500000;1.000000;,
  0.375000;1.000000;,
  0.625000;1.000000;,
  0.750000;0.027969;,
  0.875000;0.027969;,
  0.875000;0.250000;,
  0.750000;0.250000;,
  0.125000;0.027969;,
  0.250000;0.027969;,
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
