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
 59;
 -1.19040;11.64810;23.20640;,
 -0.32510;10.25440;23.25170;,
 -1.45220;0.86920;11.63540;,
 -8.92290;4.81350;2.89970;,
 -5.49290;4.82310;-22.49980;,
 10.44200;18.09580;10.10060;,
 -8.11100;3.24730;-20.97240;,
 7.80900;16.93150;16.42920;,
 -8.92290;4.81350;2.89970;,
 4.58850;15.18110;20.44970;,
 -1.19040;11.64810;23.20640;,
 -4.10950;2.80840;-22.34860;,
 -5.49290;4.82310;-22.49980;,
 -4.07980;0.86920;-21.70710;,
 -5.90510;1.94640;-21.37440;,
 -8.11100;3.24730;-20.97240;,
 -2.64210;1.66370;13.85980;,
 -1.67520;9.71650;23.82740;,
 -3.22450;12.21110;23.74620;,
 -10.47800;5.80070;4.69730;,
 6.92770;18.19410;16.35420;,
 9.57020;19.36250;10.00300;,
 3.62330;16.39770;20.47960;,
 -3.22450;12.21110;23.74620;,
 4.42880;15.08000;-0.51550;,
 -10.47800;5.80070;4.69730;,
 -7.00160;5.55910;-23.90070;,
 -9.55600;4.02200;-22.41050;,
 -5.58920;1.68170;-23.13350;,
 -7.29020;2.68520;-22.82350;,
 -5.61770;3.54410;-23.74940;,
 -9.55600;4.02200;-22.41050;,
 -7.00160;5.55910;-23.90070;,
 4.58850;15.18110;20.44970;,
 3.62330;16.39770;20.47960;,
 -1.19040;11.64810;23.20640;,
 -3.22450;12.21110;23.74620;,
 -0.32510;10.25440;23.25170;,
 -1.67520;9.71650;23.82740;,
 -1.45220;0.86920;11.63540;,
 -9.55600;4.02200;-22.41050;,
 -4.07980;0.86920;-21.70710;,
 -5.90510;1.94640;-21.37440;,
 -5.58920;1.68170;-23.13350;,
 -7.29020;2.68520;-22.82350;,
 -5.61770;3.54410;-23.74940;,
 -7.00160;5.55910;-23.90070;,
 -4.10950;2.80840;-22.34860;,
 -5.49290;4.82310;-22.49980;,
 4.42880;15.08000;-0.51550;,
 10.44200;18.09580;10.10060;,
 9.57020;19.36250;10.00300;,
 -0.32510;10.25440;23.25170;,
 7.80900;16.93150;16.42920;,
 6.92770;18.19410;16.35420;,
 -4.07980;0.86920;-21.70710;,
 -4.10950;2.80840;-22.34860;,
 7.80900;16.93150;16.42920;,
 6.92770;18.19410;16.35420;;
 
 40;
 4;0,1,2,3;,
 3;4,5,6;,
 3;5,7,6;,
 3;6,7,8;,
 3;7,9,8;,
 3;9,10,8;,
 3;11,12,13;,
 3;13,12,14;,
 3;12,15,14;,
 4;16,17,18,19;,
 3;20,21,22;,
 3;22,21,23;,
 3;21,24,23;,
 3;23,24,25;,
 3;24,26,25;,
 3;26,27,25;,
 3;28,29,30;,
 3;29,31,30;,
 3;31,32,30;,
 3;33,34,35;,
 3;34,36,35;,
 3;37,35,38;,
 3;35,36,38;,
 3;39,16,8;,
 3;16,19,8;,
 3;8,19,6;,
 3;19,40,6;,
 3;41,42,43;,
 3;42,6,43;,
 3;43,6,44;,
 3;6,40,44;,
 3;45,46,47;,
 3;47,46,48;,
 3;46,49,48;,
 3;48,49,50;,
 3;49,51,50;,
 4;39,52,17,16;,
 4;33,53,54,34;,
 4;55,28,30,56;,
 4;57,50,51,58;;
 
 MeshMaterialList {
  1;
  40;
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
  53;
  0.545369;-0.834978;0.073374;,
  0.766370;0.461309;-0.447069;,
  0.545406;-0.834957;0.073340;,
  -0.766331;-0.461372;0.447070;,
  0.545414;-0.834952;0.073341;,
  0.339510;0.300096;0.891446;,
  0.339588;0.300083;0.891420;,
  0.339601;0.300087;0.891414;,
  -0.545452;0.834928;-0.073339;,
  0.143807;-0.308749;-0.940209;,
  -0.116463;-0.313471;-0.942429;,
  0.545415;-0.834952;0.073335;,
  0.545401;-0.834960;0.073346;,
  -0.545458;0.834923;-0.073345;,
  -0.618336;-0.764120;0.183798;,
  -0.545473;0.834912;-0.073356;,
  -0.339472;-0.299996;-0.891494;,
  -0.545412;0.834955;-0.073330;,
  -0.590874;-0.793246;0.147066;,
  -0.545336;0.835002;-0.073346;,
  -0.545270;0.835046;-0.073338;,
  0.545415;-0.834952;0.073337;,
  0.545430;-0.834943;0.073324;,
  0.339540;0.300093;0.891435;,
  0.339446;0.300113;0.891464;,
  -0.545425;0.834946;-0.073324;,
  -0.545355;0.834991;-0.073334;,
  -0.339483;-0.300036;-0.891476;,
  -0.339483;-0.300093;-0.891457;,
  0.460017;0.344833;0.818215;,
  0.410388;0.304453;0.859587;,
  0.306800;0.220638;0.925847;,
  0.306771;0.220649;0.925854;,
  0.306883;0.220625;0.925823;,
  0.306828;0.220643;0.925836;,
  -0.502446;-0.863696;0.039716;,
  -0.502461;-0.863690;0.039661;,
  -0.502382;-0.863738;0.039600;,
  -0.502420;-0.863719;0.039548;,
  -0.502462;-0.863686;0.039731;,
  -0.502324;-0.863765;0.039767;,
  -0.502337;-0.863760;0.039688;,
  -0.502379;-0.863744;0.039521;,
  0.715472;0.451342;-0.533283;,
  0.715448;0.451271;-0.533375;,
  0.720475;0.234201;-0.652737;,
  0.715423;0.451257;-0.533421;,
  0.715413;0.451275;-0.533419;,
  0.807196;0.536619;-0.245916;,
  0.824191;0.561694;-0.072177;,
  0.497666;-0.697657;0.515367;,
  0.672275;0.501599;0.544468;,
  0.593137;-0.244621;-0.767039;;
  40;
  4;1,1,1,1;,
  3;0,12,2;,
  3;12,11,2;,
  3;2,11,21;,
  3;11,4,21;,
  3;4,22,21;,
  3;7,23,6;,
  3;6,23,5;,
  3;23,24,5;,
  4;14,3,3,18;,
  3;15,8,13;,
  3;13,8,25;,
  3;8,17,25;,
  3;25,17,26;,
  3;17,19,26;,
  3;19,20,26;,
  3;9,16,10;,
  3;16,27,10;,
  3;27,28,10;,
  3;29,30,31;,
  3;30,32,31;,
  3;33,31,34;,
  3;31,32,34;,
  3;35,14,36;,
  3;14,18,36;,
  3;36,18,37;,
  3;18,38,37;,
  3;39,40,41;,
  3;40,37,41;,
  3;41,37,42;,
  3;37,38,42;,
  3;43,44,45;,
  3;45,44,46;,
  3;44,47,46;,
  3;46,47,48;,
  3;47,49,48;,
  4;50,50,50,50;,
  4;29,51,51,30;,
  4;52,9,10,45;,
  4;51,48,49,51;;
 }
 MeshTextureCoords {
  59;
  0.717890;0.811500;,
  0.717770;0.807910;,
  0.747430;0.783740;,
  0.769740;0.793900;,
  0.546640;0.548280;,
  0.505950;0.464340;,
  0.553320;0.544350;,
  0.512670;0.448040;,
  0.555390;0.482880;,
  0.520900;0.437690;,
  0.535650;0.430590;,
  0.105700;0.520830;,
  0.102160;0.526010;,
  0.105770;0.515830;,
  0.101110;0.518600;,
  0.095480;0.521960;,
  0.115470;0.311110;,
  0.113000;0.285450;,
  0.116950;0.285660;,
  0.135470;0.334710;,
  0.322720;0.506980;,
  0.315980;0.490620;,
  0.331160;0.517600;,
  0.348640;0.526010;,
  0.329100;0.463540;,
  0.367160;0.476960;,
  0.358290;0.403320;,
  0.364810;0.407160;,
  0.487430;0.171350;,
  0.491780;0.173940;,
  0.487500;0.176150;,
  0.497560;0.177380;,
  0.491040;0.181340;,
  0.506300;0.139610;,
  0.503840;0.142750;,
  0.491550;0.130520;,
  0.486360;0.131970;,
  0.493760;0.126930;,
  0.490310;0.125540;,
  0.112430;0.316840;,
  0.557010;0.548050;,
  0.543030;0.546240;,
  0.547690;0.545390;,
  0.546880;0.549910;,
  0.551220;0.549120;,
  0.672170;0.290890;,
  0.672560;0.296080;,
  0.668590;0.288990;,
  0.668980;0.294180;,
  0.612850;0.320590;,
  0.585740;0.328360;,
  0.585990;0.331620;,
  0.109550;0.286930;,
  0.514530;0.144120;,
  0.512280;0.147370;,
  0.483580;0.169260;,
  0.483650;0.174250;,
  0.569590;0.325360;,
  0.569780;0.328610;;
 }
}
