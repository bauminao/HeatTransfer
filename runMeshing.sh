# Remove old
rm -rf constant/polyMesh 
rm -rf constant/extendedFeatureEdgeMesh
rm -rf constant/triSurface

# Take latest stl-Files
mkdir -p constant/triSurface
cp geo_and_mesh/aussenbox/aussenbox.stl constant/triSurface

# create Block mesh
blockMesh 

# create Surface features
surfaceFeatures 

# do Snappy Hex Mesh....
#snappyHexMesh

