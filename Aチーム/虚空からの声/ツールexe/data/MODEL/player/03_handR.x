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
 139;
 -2.03807;-5.23096;4.99864;,
 -1.49807;-6.39036;3.11214;,
 0.66423;-3.64196;3.31894;,
 -0.43227;-3.21106;5.87614;,
 -1.80027;-6.87716;-0.10427;,
 0.32073;-3.86546;-0.14497;,
 0.24133;-0.00156;-0.17207;,
 0.63563;-0.05726;3.45684;,
 -0.60797;0.00984;6.11054;,
 -2.66187;-6.32656;-3.34767;,
 -0.88767;-3.38686;-3.71737;,
 -5.23247;-5.03246;-5.34887;,
 -4.42267;-2.76466;-6.43747;,
 -4.78807;0.66434;-6.85647;,
 -1.17437;0.32534;-3.96387;,
 -0.66537;3.36764;3.31894;,
 -2.06507;3.20534;5.84854;,
 -1.09577;3.55894;-0.14497;,
 -4.42607;6.11554;-0.10427;,
 -3.96707;5.87644;3.11214;,
 -4.57727;5.04044;4.98644;,
 -2.05297;3.62274;-3.71737;,
 -5.27737;3.59134;-6.38818;,
 -6.50667;5.21204;-5.32697;,
 -4.74697;5.94024;-3.34767;,
 -9.98637;6.71264;3.04324;,
 -9.63367;5.58654;5.50384;,
 -10.17997;6.96774;-0.09067;,
 -16.00927;6.77814;-0.09067;,
 -16.03027;6.52424;3.04324;,
 -15.79577;5.73024;5.42114;,
 -9.93937;6.71264;-3.22447;,
 -9.82137;5.65374;-5.77207;,
 -15.43187;5.67974;-5.62418;,
 -15.37957;6.52184;-3.22447;,
 -24.36773;4.77694;4.78424;,
 -25.35622;5.07004;3.04324;,
 -26.62702;3.91004;3.04324;,
 -25.35622;3.92874;5.39354;,
 -25.35622;5.26784;-0.09067;,
 -26.62702;3.96024;-0.09067;,
 -25.35622;2.95154;-0.09067;,
 -25.35622;3.05144;3.04324;,
 -24.36773;3.38484;4.78424;,
 -25.35622;5.01914;-3.22447;,
 -26.62702;3.75524;-3.22447;,
 -24.36773;4.64464;-4.96547;,
 -25.35622;3.65294;-5.57487;,
 -24.36073;3.02034;-4.96547;,
 -25.35662;2.78794;-3.22447;,
 -9.94037;-0.24686;6.11054;,
 -11.98017;-0.45656;3.45684;,
 -7.73177;-3.64196;3.31894;,
 -6.12477;-3.21106;5.87614;,
 -15.07627;-0.31126;-0.25577;,
 -12.63567;-3.80706;0.52003;,
 -6.50347;-7.10986;-0.19267;,
 -5.38747;-6.39036;3.11214;,
 -5.34897;-5.23096;4.99864;,
 -21.89964;-1.31776;-2.23177;,
 -22.50813;-0.94246;-3.21617;,
 -23.52533;-2.09026;-3.07417;,
 -22.58083;-2.35606;-2.04517;,
 -20.59994;-1.11216;-4.36667;,
 -21.25664;-2.14866;-4.26397;,
 -19.78485;-3.36806;-4.09287;,
 -22.13453;-3.56216;-3.09297;,
 -21.56644;-3.71556;-2.17697;,
 -4.85977;-7.30646;3.04324;,
 -4.66427;-5.67216;5.53144;,
 -4.47837;-7.88106;-0.09067;,
 -1.80027;-6.87716;-0.10427;,
 -1.49807;-6.39036;3.11214;,
 -2.03807;-5.23096;4.99864;,
 -7.85677;-6.81846;-3.20567;,
 -5.78517;-7.30646;-3.22447;,
 -9.68397;-5.23576;-5.57637;,
 -7.73507;-5.54456;-5.82137;,
 -5.23247;-5.03246;-5.34887;,
 -2.66187;-6.32656;-3.34767;,
 -7.73507;-5.54456;-5.82137;,
 -9.26447;-2.55716;-7.34417;,
 -9.68397;-5.23576;-5.57637;,
 -10.60277;-2.49886;-6.94167;,
 -13.70717;-0.23966;-7.11187;,
 -11.23407;0.75644;-7.78777;,
 -12.04887;3.49724;-7.14697;,
 -12.92907;1.95384;-6.38818;,
 -19.03715;3.05234;-5.77817;,
 -16.72087;4.17644;-6.55547;,
 -15.43187;5.67974;-5.62418;,
 -9.82137;5.65374;-5.77207;,
 -5.34897;-5.23096;4.99864;,
 -4.66427;-5.67216;5.53144;,
 -2.00597;-3.06736;6.72853;,
 -6.12477;-3.21106;5.87614;,
 -3.88767;0.05154;6.97673;,
 -9.94037;-0.24686;6.11054;,
 -9.06587;3.22864;6.61823;,
 -12.58617;2.17864;5.84854;,
 -9.63367;5.58654;5.50384;,
 -15.79577;5.73024;5.42114;,
 -15.66067;4.36604;6.28734;,
 -16.60927;3.39234;5.50734;,
 -17.21776;2.83554;-0.10427;,
 -17.49226;2.73444;-3.34767;,
 -14.23357;1.85124;-3.71737;,
 -15.48967;1.74714;-0.14497;,
 -19.03715;3.05234;-5.77817;,
 -12.92907;1.95384;-6.38818;,
 -13.70717;-0.23966;-7.11187;,
 -15.88187;0.69844;-3.94507;,
 -16.60927;3.39234;5.50734;,
 -17.14296;2.96844;3.11214;,
 -14.52017;1.77054;3.31894;,
 -12.58617;2.17864;5.84854;,
 -21.54374;5.95914;3.04324;,
 -21.54374;5.30174;5.39354;,
 -21.54374;6.20934;-0.09067;,
 -21.54374;3.06654;3.04324;,
 -21.51964;2.90684;-0.09067;,
 -21.54374;3.46474;5.39354;,
 -15.66067;4.36604;6.28734;,
 -21.54374;4.34004;6.17704;,
 -21.42434;5.94934;-3.22447;,
 -21.22964;5.20714;-5.57487;,
 -16.72087;4.17644;-6.55547;,
 -21.09334;4.01084;-6.35828;,
 -21.03874;2.98324;-5.57487;,
 -21.21444;2.74714;-3.22447;,
 -18.60626;-0.12276;-3.64227;,
 -19.49045;-1.00796;-1.70367;,
 -16.71677;-0.54546;-5.45757;,
 -10.60277;-2.49886;-6.94167;,
 -14.31697;-2.32376;-5.73398;,
 -14.89037;-4.30936;-4.84137;,
 -16.85297;-5.35426;-3.14927;,
 -17.61136;-5.09136;-1.58047;,
 -18.63555;-3.15336;-1.05757;;
 
 114;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;2,5,6,7;,
 4;3,2,7,8;,
 4;4,9,10,5;,
 4;9,11,12,10;,
 4;10,12,13,14;,
 4;5,10,14,6;,
 4;8,7,15,16;,
 4;7,6,17,15;,
 4;15,17,18,19;,
 4;16,15,19,20;,
 4;6,14,21,17;,
 4;14,13,22,21;,
 4;21,22,23,24;,
 4;17,21,24,18;,
 4;20,19,25,26;,
 4;19,18,27,25;,
 4;25,27,28,29;,
 4;26,25,29,30;,
 4;18,24,31,27;,
 4;24,23,32,31;,
 4;31,32,33,34;,
 4;27,31,34,28;,
 4;35,36,37,38;,
 4;36,39,40,37;,
 4;37,40,41,42;,
 4;38,37,42,43;,
 4;39,44,45,40;,
 4;44,46,47,45;,
 4;45,47,48,49;,
 4;40,45,49,41;,
 4;50,51,52,53;,
 4;51,54,55,52;,
 4;52,55,56,57;,
 4;53,52,57,58;,
 4;59,60,61,62;,
 4;60,63,64,61;,
 4;61,64,65,66;,
 4;62,61,66,67;,
 4;58,57,68,69;,
 4;57,56,70,68;,
 4;68,70,71,72;,
 4;69,68,72,73;,
 4;56,74,75,70;,
 4;74,76,77,75;,
 4;75,77,78,79;,
 4;70,75,79,71;,
 4;11,80,81,12;,
 4;80,82,83,81;,
 4;81,83,84,85;,
 4;12,81,85,13;,
 4;13,85,86,22;,
 4;84,87,86,85;,
 4;88,89,86,87;,
 4;90,91,86,89;,
 4;23,22,86,91;,
 4;92,93,94,95;,
 4;93,0,3,94;,
 4;94,3,8,96;,
 4;95,94,96,97;,
 4;97,96,98,99;,
 4;8,16,98,96;,
 4;20,100,98,16;,
 4;101,102,98,100;,
 4;103,99,98,102;,
 4;104,105,106,107;,
 4;105,108,109,106;,
 4;106,109,110,111;,
 4;107,106,111,54;,
 4;112,113,114,115;,
 4;113,104,107,114;,
 4;114,107,54,51;,
 4;115,114,51,50;,
 4;30,29,116,117;,
 4;29,28,118,116;,
 4;116,118,39,36;,
 4;117,116,36,35;,
 4;104,113,119,120;,
 4;113,112,121,119;,
 4;119,121,43,42;,
 4;120,119,42,41;,
 4;112,122,123,121;,
 4;122,30,117,123;,
 4;123,117,35,38;,
 4;121,123,38,43;,
 4;28,34,124,118;,
 4;34,33,125,124;,
 4;124,125,46,44;,
 4;118,124,44,39;,
 4;33,126,127,125;,
 4;126,108,128,127;,
 4;127,128,48,47;,
 4;125,127,47,46;,
 4;108,105,129,128;,
 4;105,104,120,129;,
 4;129,120,41,49;,
 4;128,129,49,48;,
 4;54,111,130,131;,
 4;111,110,132,130;,
 4;130,132,63,60;,
 4;131,130,60,59;,
 4;110,133,134,132;,
 4;133,76,135,134;,
 4;134,135,65,64;,
 4;132,134,64,63;,
 4;76,74,136,135;,
 4;74,56,137,136;,
 4;136,137,67,66;,
 4;135,136,66,65;,
 4;56,55,138,137;,
 4;55,54,131,138;,
 4;138,131,59,62;,
 4;137,138,62,67;;
 
 MeshMaterialList {
  21;
  114;
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12,
  12;;
  Material {
   0.008000;0.008000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.400000;0.400000;0.400000;1.000000;;
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
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.280000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.568000;0.248000;0.488000;1.000000;;
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
   0.568000;0.248000;0.488000;1.000000;;
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
   0.800000;0.000000;0.000000;1.000000;;
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
   0.800000;0.000000;0.000000;1.000000;;
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
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "���{��.png";
   }
  }
  Material {
   0.800000;0.504000;0.768000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.796800;0.772000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  134;
  0.401341;-0.695218;0.596320;,
  0.588764;-0.800012;-0.115491;,
  0.298900;-0.524395;-0.797288;,
  0.632779;0.175312;0.754225;,
  0.962273;0.178580;-0.205279;,
  0.397920;0.091305;-0.912865;,
  0.262923;0.760202;0.594108;,
  0.392966;0.918602;-0.041811;,
  0.249971;0.735638;-0.629564;,
  -0.029489;0.782188;0.622344;,
  -0.066528;0.997775;-0.004436;,
  -0.048219;0.784571;-0.618161;,
  -0.392928;-0.451384;0.801162;,
  -0.608615;-0.302592;0.733503;,
  -0.494789;0.210647;-0.843097;,
  -0.643407;-0.444411;0.623319;,
  -0.402232;-0.842676;0.357920;,
  -0.219778;-0.688482;-0.691152;,
  -0.071243;-0.716432;-0.694010;,
  -0.234476;-0.971402;0.037399;,
  -0.153149;-0.795551;0.586211;,
  -0.350149;0.813949;0.463555;,
  -0.487033;0.873332;-0.009549;,
  -0.321031;-0.946303;0.038083;,
  -0.177994;-0.893820;0.411587;,
  -0.354563;0.771699;-0.527984;,
  -0.213263;-0.886774;-0.410061;,
  -0.348375;0.614640;0.707710;,
  -0.346711;0.381047;-0.857085;,
  -0.275648;-0.502981;-0.819163;,
  -0.490206;-0.715272;0.498081;,
  -0.331792;-0.163115;-0.929144;,
  -0.344031;-0.762336;-0.548166;,
  -0.392862;0.160116;0.905551;,
  -0.081818;-0.995660;0.044353;,
  -0.321505;-0.507149;0.799646;,
  -0.218239;-0.944677;-0.244861;,
  -0.002175;-0.658740;-0.752368;,
  -0.260999;-0.420188;-0.869092;,
  -0.124827;0.017293;-0.992028;,
  -0.511400;0.174109;-0.841520;,
  -0.080957;0.051975;-0.995362;,
  0.059364;-0.016035;0.998108;,
  -0.059454;0.005963;0.998213;,
  -0.352157;-0.555417;0.753324;,
  -0.160708;-0.986323;-0.036609;,
  -0.610918;0.769168;-0.187511;,
  -0.595907;-0.787575;0.156907;,
  -0.225643;-0.961319;0.157960;,
  -0.167607;0.985830;-0.006894;,
  -0.154322;0.823243;0.546311;,
  -0.035852;-0.879537;0.474478;,
  -0.010904;-0.998939;0.044746;,
  -0.153816;0.789976;-0.593530;,
  -0.042148;-0.875884;-0.480678;,
  -0.282330;0.826795;-0.486518;,
  -0.227926;0.763783;0.603892;,
  -0.221137;-0.594043;-0.773441;,
  -0.295983;-0.799082;0.523319;,
  0.528169;-0.791979;0.306278;,
  0.935833;-0.287390;-0.204020;,
  0.966124;0.195668;0.168282;,
  0.621399;-0.331787;0.709775;,
  0.475322;-0.691323;-0.544189;,
  0.371877;-0.245325;-0.895278;,
  0.813300;0.142289;-0.564177;,
  0.802864;0.580087;-0.137509;,
  0.361510;0.905088;0.223887;,
  0.447405;0.514174;0.731747;,
  0.348624;0.439834;-0.827652;,
  0.356071;0.879741;-0.315070;,
  0.055823;0.998438;-0.002484;,
  -0.056921;0.976496;0.207883;,
  0.067204;0.741879;0.667157;,
  0.063936;0.770240;-0.634541;,
  -0.059421;0.974731;-0.215334;,
  -0.440896;0.877034;0.190845;,
  -0.703556;0.710547;-0.011448;,
  -0.265013;-0.953748;0.141888;,
  -0.405636;0.729999;0.550056;,
  -0.453950;0.862126;-0.225095;,
  -0.411517;0.667841;-0.620196;,
  -0.294955;-0.951613;-0.086221;,
  -0.634068;-0.573529;0.518673;,
  -0.435338;-0.413998;0.799429;,
  -0.649364;-0.642715;0.406502;,
  -0.476744;-0.444988;0.758090;,
  -0.392977;0.758102;0.520433;,
  0.922399;-0.326845;0.205798;,
  0.757973;-0.260661;-0.597940;,
  0.767977;0.611807;0.189483;,
  0.701192;0.533520;-0.472955;,
  0.058906;0.969976;0.235957;,
  0.060857;0.970624;-0.232779;,
  -0.631457;0.749028;0.200547;,
  -0.653660;0.719090;-0.235879;,
  -0.584174;-0.617159;0.527119;,
  -0.582591;0.536049;0.610934;,
  -0.422688;-0.789729;0.444593;,
  0.011597;-0.927055;-0.374746;,
  -0.024198;-0.330826;-0.943381;,
  -0.099453;0.259491;-0.960611;,
  0.035505;-0.256781;0.965817;,
  -0.001944;0.151742;0.988418;,
  -0.317065;-0.947699;-0.036542;,
  -0.583823;-0.736357;0.341949;,
  -0.162333;0.970111;0.180368;,
  -0.011823;-0.993924;0.109428;,
  -0.056259;-0.684632;0.726714;,
  -0.161127;0.965541;-0.204372;,
  -0.138997;0.566990;-0.811912;,
  -0.007899;-0.999350;-0.035164;,
  -0.269000;0.959940;-0.078447;,
  -0.258964;-0.331852;-0.907090;,
  -0.242850;-0.917998;-0.313535;,
  -0.265242;-0.124251;0.956142;,
  -0.511485;-0.843355;0.164729;,
  -0.602341;-0.797811;0.026121;,
  -0.262321;-0.814213;0.517924;,
  -0.553628;-0.822352;-0.131275;,
  -0.303202;-0.785025;-0.540189;,
  -0.378889;0.588322;-0.714367;,
  -0.446852;-0.101063;-0.888881;,
  -0.692663;-0.601753;0.397632;,
  0.302061;-0.938801;0.165568;,
  0.225650;-0.812785;0.537087;,
  -0.223647;-0.973578;-0.046126;,
  -0.824925;0.507563;-0.248753;,
  -0.926413;0.376417;-0.008265;,
  -0.660833;0.731445;0.168190;,
  -0.140483;0.630131;0.763675;,
  -0.072434;-0.627816;-0.774984;,
  -0.293928;-0.263850;-0.918689;,
  -0.290404;0.095063;0.952170;;
  114;
  4;0,59,88,62;,
  4;59,1,60,88;,
  4;88,60,4,61;,
  4;62,88,61,3;,
  4;1,63,89,60;,
  4;63,2,64,89;,
  4;89,64,5,65;,
  4;60,89,65,4;,
  4;3,61,90,68;,
  4;61,4,66,90;,
  4;90,66,7,67;,
  4;68,90,67,6;,
  4;4,65,91,66;,
  4;65,5,69,91;,
  4;91,69,8,70;,
  4;66,91,70,7;,
  4;6,67,92,73;,
  4;67,7,71,92;,
  4;92,71,10,72;,
  4;73,92,72,9;,
  4;7,70,93,71;,
  4;70,8,74,93;,
  4;93,74,11,75;,
  4;71,93,75,10;,
  4;21,76,94,79;,
  4;76,22,77,94;,
  4;116,117,23,78;,
  4;118,116,78,24;,
  4;22,80,95,77;,
  4;80,25,81,95;,
  4;119,120,26,82;,
  4;117,119,82,23;,
  4;12,83,96,86;,
  4;83,13,84,96;,
  4;96,84,16,85;,
  4;86,96,85,15;,
  4;27,87,97,33;,
  4;121,28,31,122;,
  4;122,31,29,32;,
  4;123,123,123,30;,
  4;15,85,98,35;,
  4;85,16,34,98;,
  4;124,34,1,59;,
  4;125,98,59,0;,
  4;16,36,99,34;,
  4;36,17,37,99;,
  4;99,37,2,63;,
  4;34,99,63,1;,
  4;2,37,100,64;,
  4;37,17,38,100;,
  4;100,38,14,39;,
  4;64,100,39,5;,
  4;5,39,101,69;,
  4;14,40,101,39;,
  4;18,41,101,40;,
  4;11,74,101,41;,
  4;8,69,101,74;,
  4;15,35,102,86;,
  4;35,0,62,102;,
  4;102,62,3,42;,
  4;86,102,42,12;,
  4;12,42,103,44;,
  4;3,68,103,42;,
  4;6,73,103,68;,
  4;9,43,103,73;,
  4;20,44,103,43;,
  4;19,45,104,47;,
  4;45,126,126,104;,
  4;127,40,14,46;,
  4;128,127,46,129;,
  4;20,48,105,44;,
  4;48,19,47,105;,
  4;105,47,13,83;,
  4;44,105,83,12;,
  4;9,72,106,50;,
  4;72,10,49,106;,
  4;106,49,22,76;,
  4;50,106,76,21;,
  4;19,48,107,52;,
  4;48,20,51,107;,
  4;107,51,24,78;,
  4;52,107,78,23;,
  4;20,43,108,51;,
  4;43,9,50,130;,
  4;130,50,21,79;,
  4;51,108,118,24;,
  4;10,75,109,49;,
  4;75,11,53,109;,
  4;109,53,25,80;,
  4;49,109,80,22;,
  4;11,41,110,53;,
  4;41,18,54,131;,
  4;131,54,26,120;,
  4;53,110,81,25;,
  4;18,45,111,54;,
  4;45,19,52,111;,
  4;111,52,23,82;,
  4;54,111,82,26;,
  4;129,46,112,56;,
  4;46,14,55,112;,
  4;112,55,28,121;,
  4;56,112,87,27;,
  4;14,38,113,132;,
  4;38,17,57,113;,
  4;113,57,29,31;,
  4;132,113,31,28;,
  4;17,36,114,57;,
  4;36,16,58,114;,
  4;114,58,30,32;,
  4;57,114,32,29;,
  4;16,84,115,58;,
  4;84,13,133,115;,
  4;115,56,27,33;,
  4;58,115,33,30;;
 }
 MeshTextureCoords {
  139;
  0.375000;0.000000;,
  0.437500;0.000000;,
  0.437500;0.062500;,
  0.359380;0.062500;,
  0.500000;0.000000;,
  0.500000;0.062500;,
  0.500000;0.125000;,
  0.437500;0.125000;,
  0.357810;0.125150;,
  0.562500;0.000000;,
  0.562500;0.062500;,
  0.625000;0.000000;,
  0.640620;0.062500;,
  0.642190;0.124970;,
  0.562500;0.125000;,
  0.437500;0.187500;,
  0.353130;0.188090;,
  0.500000;0.187500;,
  0.500000;0.265620;,
  0.437500;0.265620;,
  0.375000;0.250000;,
  0.562500;0.187500;,
  0.646880;0.187380;,
  0.625000;0.250000;,
  0.562500;0.265620;,
  0.437500;0.375000;,
  0.375000;0.375000;,
  0.500000;0.375000;,
  0.500000;0.468750;,
  0.437500;0.468750;,
  0.375000;0.500000;,
  0.562500;0.375000;,
  0.625000;0.375000;,
  0.625000;0.500000;,
  0.562500;0.468750;,
  0.402780;0.511480;,
  0.437500;0.506790;,
  0.437500;0.527150;,
  0.390620;0.525820;,
  0.500000;0.507230;,
  0.500000;0.528910;,
  0.500000;0.550590;,
  0.437500;0.547500;,
  0.402780;0.540850;,
  0.562500;0.507670;,
  0.562500;0.530670;,
  0.597220;0.514220;,
  0.609380;0.531990;,
  0.597220;0.549080;,
  0.562500;0.553680;,
  0.375000;0.625000;,
  0.437500;0.631790;,
  0.437500;0.687500;,
  0.375000;0.687500;,
  0.500000;0.629630;,
  0.484380;0.687500;,
  0.500000;0.760000;,
  0.437500;0.765620;,
  0.375000;0.750000;,
  0.527780;0.652780;,
  0.562500;0.640620;,
  0.562500;0.687500;,
  0.515620;0.687500;,
  0.597220;0.652780;,
  0.609380;0.687500;,
  0.597220;0.722220;,
  0.562500;0.734380;,
  0.527780;0.722220;,
  0.437500;0.875000;,
  0.375000;0.875000;,
  0.500000;0.875000;,
  0.500000;1.000000;,
  0.437500;1.000000;,
  0.375000;1.000000;,
  0.562500;0.781250;,
  0.562500;0.875000;,
  0.625000;0.750000;,
  0.625000;0.875000;,
  0.625000;1.000000;,
  0.562500;1.000000;,
  0.750000;0.000000;,
  0.750000;0.062500;,
  0.875000;0.000000;,
  0.875000;0.062500;,
  0.875000;0.125000;,
  0.756250;0.124880;,
  0.775000;0.187030;,
  0.875000;0.155060;,
  0.875000;0.185130;,
  0.875000;0.217560;,
  0.875000;0.250000;,
  0.750000;0.250000;,
  0.125000;0.000000;,
  0.250000;0.000000;,
  0.250000;0.062500;,
  0.125000;0.062500;,
  0.243750;0.125590;,
  0.125000;0.125000;,
  0.225000;0.189850;,
  0.125000;0.162120;,
  0.250000;0.250000;,
  0.125000;0.250000;,
  0.125000;0.224620;,
  0.125000;0.199240;,
  0.500000;0.566210;,
  0.562500;0.569300;,
  0.562500;0.593170;,
  0.500000;0.591410;,
  0.625000;0.564870;,
  0.625000;0.594940;,
  0.625000;0.625000;,
  0.562500;0.617040;,
  0.375000;0.550760;,
  0.437500;0.563130;,
  0.437500;0.589650;,
  0.375000;0.587880;,
  0.437500;0.500000;,
  0.390620;0.506340;,
  0.500000;0.500000;,
  0.437500;0.554290;,
  0.500000;0.557820;,
  0.390620;0.545300;,
  0.375000;0.525380;,
  0.375000;0.525380;,
  0.562500;0.500000;,
  0.609380;0.508110;,
  0.625000;0.532440;,
  0.625000;0.532440;,
  0.609380;0.555880;,
  0.562500;0.561340;,
  0.562500;0.625000;,
  0.515620;0.640620;,
  0.609380;0.640620;,
  0.625000;0.687500;,
  0.625000;0.687500;,
  0.609380;0.734380;,
  0.562500;0.750000;,
  0.515620;0.734380;,
  0.500000;0.687500;;
 }
}
