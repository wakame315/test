<<<<<<< HEAD
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
 22;
 -7.15697;-0.01729;4.32171;,
 -7.15697;-0.01729;-6.37687;,
 -5.93114;-23.53324;-6.05279;,
 -5.93114;-23.53324;3.99763;,
 0.02400;-0.01729;9.74699;,
 0.02400;-0.01729;-11.80217;,
 7.20494;-0.01729;4.32171;,
 7.20494;-0.01729;-6.37687;,
 7.00584;-23.53324;3.99763;,
 7.00584;-23.53324;-6.05279;,
 0.02400;-23.53324;9.12498;,
 0.02400;-23.53324;-11.18016;,
 -5.93114;-23.53324;3.99763;,
 -5.93114;-23.53324;-6.05279;,
 0.02400;-0.01729;-11.80217;,
 7.20494;-0.01729;-6.37687;,
 7.00584;-23.53324;-6.05279;,
 0.02400;-23.53324;-11.18016;,
 7.20494;-0.01729;4.32171;,
 0.02400;-0.01729;9.74699;,
 0.02400;-23.53324;9.12498;,
 7.00584;-23.53324;3.99763;;
 
 10;
 4;0,1,2,3;,
 4;4,5,1,0;,
 4;6,7,5,4;,
 4;8,9,7,6;,
 4;10,11,9,8;,
 4;12,13,11,10;,
 4;14,15,16,17;,
 4;1,14,17,2;,
 4;18,19,20,21;,
 4;19,0,3,20;;
 
 MeshMaterialList {
  14;
  10;
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7;;
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
  10;
  -0.901160;-0.046150;0.431023;,
  -0.901161;-0.046149;-0.431022;,
  0.000000;1.000000;0.000000;,
  0.893606;-0.015148;0.448596;,
  0.893607;-0.015148;-0.448595;,
  0.000000;-1.000000;-0.000000;,
  0.597274;-0.018609;-0.801822;,
  -0.627665;-0.031229;-0.777857;,
  0.597272;-0.018609;0.801823;,
  -0.627663;-0.031229;0.777859;;
  10;
  4;0,1,1,0;,
  4;2,2,2,2;,
  4;2,2,2,2;,
  4;3,4,4,3;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;6,4,4,6;,
  4;1,7,7,1;,
  4;3,8,8,3;,
  4;9,0,0,9;;
 }
 MeshTextureCoords {
  22;
  0.375000;0.250000;,
  0.625000;0.250000;,
  0.625000;0.000000;,
  0.375000;0.000000;,
  0.375000;0.375000;,
  0.625000;0.375000;,
  0.375000;0.500000;,
  0.625000;0.500000;,
  0.375000;0.750000;,
  0.625000;0.750000;,
  0.375000;0.875000;,
  0.625000;0.875000;,
  0.375000;1.000000;,
  0.625000;1.000000;,
  0.750000;0.250000;,
  0.875000;0.250000;,
  0.875000;0.000000;,
  0.750000;0.000000;,
  0.125000;0.250000;,
  0.250000;0.250000;,
  0.250000;0.000000;,
  0.125000;0.000000;;
 }
}
=======
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
 22;
 -7.15697;-0.01729;4.32171;,
 -7.15697;-0.01729;-6.37687;,
 -5.93114;-23.53324;-6.05279;,
 -5.93114;-23.53324;3.99763;,
 0.02400;-0.01729;9.74699;,
 0.02400;-0.01729;-11.80217;,
 7.20494;-0.01729;4.32171;,
 7.20494;-0.01729;-6.37687;,
 7.00584;-23.53324;3.99763;,
 7.00584;-23.53324;-6.05279;,
 0.02400;-23.53324;9.12498;,
 0.02400;-23.53324;-11.18016;,
 -5.93114;-23.53324;3.99763;,
 -5.93114;-23.53324;-6.05279;,
 0.02400;-0.01729;-11.80217;,
 7.20494;-0.01729;-6.37687;,
 7.00584;-23.53324;-6.05279;,
 0.02400;-23.53324;-11.18016;,
 7.20494;-0.01729;4.32171;,
 0.02400;-0.01729;9.74699;,
 0.02400;-23.53324;9.12498;,
 7.00584;-23.53324;3.99763;;
 
 10;
 4;0,1,2,3;,
 4;4,5,1,0;,
 4;6,7,5,4;,
 4;8,9,7,6;,
 4;10,11,9,8;,
 4;12,13,11,10;,
 4;14,15,16,17;,
 4;1,14,17,2;,
 4;18,19,20,21;,
 4;19,0,3,20;;
 
 MeshMaterialList {
  14;
  10;
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7,
  7;;
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
  10;
  -0.901160;-0.046150;0.431023;,
  -0.901161;-0.046149;-0.431022;,
  0.000000;1.000000;0.000000;,
  0.893606;-0.015148;0.448596;,
  0.893607;-0.015148;-0.448595;,
  0.000000;-1.000000;-0.000000;,
  0.597274;-0.018609;-0.801822;,
  -0.627665;-0.031229;-0.777857;,
  0.597272;-0.018609;0.801823;,
  -0.627663;-0.031229;0.777859;;
  10;
  4;0,1,1,0;,
  4;2,2,2,2;,
  4;2,2,2,2;,
  4;3,4,4,3;,
  4;5,5,5,5;,
  4;5,5,5,5;,
  4;6,4,4,6;,
  4;1,7,7,1;,
  4;3,8,8,3;,
  4;9,0,0,9;;
 }
 MeshTextureCoords {
  22;
  0.375000;0.250000;,
  0.625000;0.250000;,
  0.625000;0.000000;,
  0.375000;0.000000;,
  0.375000;0.375000;,
  0.625000;0.375000;,
  0.375000;0.500000;,
  0.625000;0.500000;,
  0.375000;0.750000;,
  0.625000;0.750000;,
  0.375000;0.875000;,
  0.625000;0.875000;,
  0.375000;1.000000;,
  0.625000;1.000000;,
  0.750000;0.250000;,
  0.875000;0.250000;,
  0.875000;0.000000;,
  0.750000;0.000000;,
  0.125000;0.250000;,
  0.250000;0.250000;,
  0.250000;0.000000;,
  0.125000;0.000000;;
 }
}
>>>>>>> f3d5af8f619feb1bdd1b24797dcdecaaaead1bb0
