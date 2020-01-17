module vraylib

// Vertex data definning a mesh
// NOTE: Data stored in CPU memory (and GPU)
pub struct C.Mesh {
pub mut:
    vertexCount int
    triangleCount int

    vertices &f32
    texcoords &f32
    texcoords2 &f32
    normals &f32
    tangents &f32
	colors &byte
	indices &u16

    animVertices &f32
    animNormals &f32
    boneIds &f32
    boneWeights &f32

	vaoId u32
	vboId &u32
}

// Shader type (generic)
// Material texture map
pub struct C.MaterialMap {
pub mut:
	texture Texture2D
	color Color
	value f32
}

// Material type (generic)
pub struct C.Material {
pub mut:
  shader Shader
  maps &MaterialMap
  params &f32
}

// Transformation properties
pub struct C.Transform {
pub mut:
	translation Vector3
	rotation Quaternion
	scale Vector3
}

// Bone information
pub struct C.BoneInfo {
pub mut:
  name[32] byte
  parent int
}
type BoneInfo C.BoneInfo

// Model type
pub struct C.Model {
pub mut:
  transform Matrix
  meshCount int
  meshes &Mesh

  materialCount int
  materials &Material
  meshMaterial &int

  boneCount int
  bones &BoneInfo
  bindPose &Transform
}

// Model Animation
pub struct C.ModelAnimation {
pub mut:
  boneCount int
  bones &BoneInfo

  fameCount int
  framePoses &Transform
}

// Basic geometric 3D shapes drawing functions
//

// Draw a line in 3D world space
[inline] pub fn draw_line_3d(startPos, endPos Vector3, color Color) {
	C.DrawLine3D(startPos, endPos, color)
}

// Draw a circle in 3D world space
[inline] pub fn draw_circle_3d(center Vector3, radius f32, rotationAxis Vector3, rotationAngle f32, color Color) {
	C.DrawCircle3D(center, radius, rotationAxis, rotationAngle, color)
}

// Draw cube
[inline] pub fn draw_cube(position Vector3, width, height, length f32, color Color) {
	C.DrawCube(position, width, height, length, color)
}

// Draw cube (Vector version)
[inline] pub fn draw_cube_v(position, size Vector3, color Color) {
// void DrawCubeV(Vector3 position, Vector3 size, Color color);
}

// Draw cube wires
[inline] pub fn draw_cube_wires(position Vector3, width, height, length f32, color Color) {
// void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);
}

// Draw cube wires (Vector version)
[inline] pub fn draw_cube_wires_v(position, size Vector3, color Color) {
// void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);
}

// Draw cube textured
[inline] pub fn draw_cube_texture(texture Texture2D, position Vector3, width, height, length f32, color Color) {
	C.DrawCubeTexture(texture, position, width, height, length, color)
}

// Draw sphere
[inline] pub fn draw_sphere(centerPos Vector3, radius f32, color Color) {
	C.DrawSphere(centerPos, radius, color)
}

// Draw sphere with extended parameters
[inline] pub fn draw_sphere_ex(centerPos Vector3, radius f32, rings, slices int, color Color) {
	C.DrawSphereEx(centerPos, radius, rings, slices, color)
}

// Draw sphere wires
[inline] pub fn draw_sphere_wires(centerPos Vector3, radius f32, rings, slices int, color Color) {
	C.DrawSphereWires(centerPos, radius, rings, slices, color)
}

// Draw a cylinder/cone
[inline] pub fn draw_cylinder(position Vector3, radiusTop, radiusBottom, height f32, slices int, color Color) {
	C.DrawCylinder(position, radiusTop, radiusBottom, height, slices, color)
}

// Draw a cylinder/cone wires
[inline] pub fn draw_cylinder_wires(position Vector3, radiusTop, radiusBottom, height f32, slices int, color Color) {
	C.DrawCylinderWires(position, radiusTop, radiusBottom, height, slices, color)
}

// Draw a plane XZ
[inline] pub fn draw_plane(centerPos Vector3, size Vector2, color Color) {
	C.DrawPlane(centerPos, size, color)
}

// Draw a ray line
[inline] pub fn draw_ray(ray Ray, color Color) {
	C.DrawRay(ray, color)
}

// Draw a grid (centered at (0, 0, 0))
[inline] pub fn draw_grid(slices int, spacing f32) {
	C.DrawGrid(slices, spacing)
}

// Draw simple gizmo
[inline] pub fn draw_gizmo(position Vector3) {
	C.DrawGizmo(position)
}

// Model loading/unloading functions

// Load model from files (meshes and materials)
[inline] pub fn load_model(fileName string) Model {
	return C.LoadModel(fileName.str)
}

// Load model from generated mesh (default material)
[inline] pub fn load_model_from_mesh(mesh Mesh) Model {
	return C.LoadModelFromMesh(mesh)
}
// Unload model from memory (RAM and/or VRAM)
[inline] pub fn unload_model(model Model) {
	C.UnloadModel(model)
}

// // Mesh loading/unloading functions
//

// Load meshes from model file
[inline] pub fn load_meshes(fileName string, meshCount &int) &Mesh {
	return C.LoadMeshes(fileName.str, meshCount)
}

// Export mesh data to file
[inline] pub fn export_mesh(mesh Mesh, fileName string) {
	C.ExportMesh(mesh, fileName.str)
}

// Unload mesh from memory (RAM and/or VRAM)
[inline] pub fn unload_mesh(mesh Mesh) {
	C.UnloadMesh(mesh)
}


// Material loading/unloading functions
//

// Load materials from model file
[inline] pub fn load_materials(fileName string, materialCount &int) &Material {
	return C.LoadMaterials(fileName.str, materialCount)
}

// Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
[inline] pub fn load_material_default() Material {
	return C.LoadMaterialDefault()
}

// Unload material from GPU memory (VRAM)
[inline] pub fn unload_material(material Material) {
	C.UnloadMaterial(material)
}

// Set texture for a material map type (MAP_DIFFUSE, MAP_SPECULAR...)
[inline] pub fn set_material_texture(material &Material, mapType int, texture Texture2D) {
	C.SetMaterialTexture(material, mapType, texture)
}

// Set material for a mesh
[inline] pub fn set_model_mesh_material(model &Model, meshId, materialId int) {
	C.SetModelMeshMaterial(model, meshId, materialId)
}


// Model animations loading/unloading functions
//

// Load model animations from file
[inline] pub fn load_model_animations(fileName string, animsCount &int) &ModelAnimation {
	return C.LoadModelAnimations(fileName.str, animsCount)
}

// Update model animation pose
[inline] pub fn update_model_animation(model Model, anim ModelAnimation, frame int) {
	C.UpdateModelAnimation(model, anim, frame)
}

// Unload animation data
[inline] pub fn unload_model_animation(anim ModelAnimation) {
	C.UnloadModelAnimation(anim)
}

// Check model animation skeleton match
[inline] pub fn is_model_animation_valid(model Model, anim ModelAnimation) bool {
	return C.IsModelAnimationValid(model, anim)
}


// Mesh generation functions
//

// Generate polygonal mesh
[inline] pub fn gen_mesh_poly(sides int, radius f32) {
	C.GenMeshPoly(sides, radius)
}

// Generate plane mesh (with subdivisions)
[inline] pub fn gen_mesh_plane(width, length, f32, resX, resZ int) Mesh {
	return C.GenMeshPlane(width, length, resX, resZ)
}

// Generate cuboid mesh
[inline] pub fn gen_mesh_cube(width, height, length f32) Mesh {
	return C.GenMeshCube(width, height, length)
}

// Generate sphere mesh (standard sphere)
[inline] pub fn gen_mesh_sphere(radius f32, rings, slices int) Mesh {
	return C.GenMeshSphere(radius, rings, slices)
}

// Generate half-sphere mesh (no bottom cap)
[inline] pub fn gen_mesh_hemi_sphere(radius f32, rings, slices int) Mesh {
	return C.GenMeshHemiSphere(radius, rings, slices)
}

// Generate cylinder mesh
[inline] pub fn gen_mesh_cylinder(radius, height f32, slices int) Mesh {
	return C.GenMeshCylinder(radius, height, slices)
}

// Generate torus mesh
[inline] pub fn gen_mesh_torus(radius, size f32, radSeg, sides int) Mesh {
	return C.GenMeshTorus(radius, size, radSeg, sides)
}

// Generate trefoil knot mesh
[inline] pub fn gen_mesh_knot(radius, size f32, radSeg, sides int) Mesh {
	return C.GenMeshKnot(radius, size, radSeg, sides)
}

// Generate heightmap mesh from image data
[inline] pub fn gen_mesh_height_map(heightmap Image, size Vector3) Mesh {
	return C.GenMeshHeightmap(heightmap, size)
}

// Generate cubes-based map mesh from image data
[inline] pub fn gen_mesh_cubicmap(cubicmap Image, cubeSize Vector3) Mesh {
	return C.GenMeshCubicmap(cubicmap, cubeSize)
}


// Mesh manipulation functions
//

// Compute mesh bounding box limits
[inline] pub fn mesh_bounding_box(mesh Mesh) BoundingBox {
	return C.MeshBoundingBox(mesh)
}

// Compute mesh tangents
[inline] pub fn mesh_tangents(mesh &Mesh) {
	C.MeshTangents(mesh)
}

// Compute mesh binormals
[inline] pub fn mesh_binormals(mesh &Mesh) {
	C.MeshBinormals(mesh)
}

// Model drawing functions
[inline] pub fn draw_model(model Model, position Vector3, scale f32, tint Color) {
	C.DrawModel(model, position, scale, tint)
}

// Draw a model with extended parameters
[inline] pub fn draw_model_ex(model Model, position, rotationAxis Vector3, rotationAngle f32, scale Vector3, tint Color) {
	C.DrawModelEx(model, position, rotationAxis, rotationAngle, scale, tint)
}

// Draw a model wires (with texture if set)
[inline] pub fn draw_model_wires(model Model, position Vector3, scale f32, tint Color) {
	C.DrawModelWires(model, position, scale, tint)
}

// Draw a model wires (with texture if set) with extended parameters
[inline] pub fn draw_model_wires_ex(model Model, position, rotationAxis Vector3, rotationAngle f32, scale Vector3, tint Color) {
	C.DrawModelWiresEx(model, position, rotationAxis, rotationAngle, scale, tint)
}

// Draw bounding box (wires)
[inline] pub fn draw_bounding_box(box BoundingBox, color Color) {
	C.DrawBoundingBox(box, color)
}

// Draw a billboard texture
[inline] pub fn draw_billboard(camera Camera3D, texture Texture2D, center Vector3, size f32, tint Color) {
	C.DrawBillboard(camera, texture, center, size, tint)
}

// Draw a billboard texture defined by sourceRec
[inline] pub fn draw_billboard_rec(camera Camera3D, texture Texture2D, sourceRec Rectangle, center Vector3, size f32, tint Color) {
	C.DrawBillboardRec(camera, texture, sourceRec, center, size, tint)
}

// Collision detection functions
//

// Detect collision between two spheres
[inline] pub fn check_collision_spheres(centerA Vector3, radiusA f32, centerB Vector3, radiusB f32) bool {
	return C.CheckCollisionSpheres(centerA, radiusA, centerB, radiusB)
}

// Detect collision between two bounding boxes
[inline] pub fn check_collision_boxes(box1, box2 BoundingBox) bool {
	return C.CheckCollisionBoxes(box1, box2)
}

// Detect collision between box and sphere
[inline] pub fn check_collision_box_sphere(box BoundingBox, centerSphere Vector3, radiusSphere f32) bool {
	return C.CheckCollisionBoxSphere(box, centerSphere, radiusSphere)
}

// Detect collision between ray and sphere
[inline] pub fn check_collision_ray_sphere(ray Ray, spherePosition Vector3, sphereRadius f32) bool {
	return C.CheckCollisionRaySphere(ray, spherePosition, sphereRadius)
}

// Detect collision between ray and sphere, returns collision point
[inline] pub fn check_collision_ray_sphere_ex(ray Ray, spherePosition Vector3, sphereRadius f32, collisionPoint &Vector3) bool {
	return C.CheckCollisionRaySphereEx(ray, spherePosition, sphereRadius, collisionPoint)
}

// Detect collision between ray and box
[inline] pub fn check_collision_ray_box(ray Ray, box BoundingBox) bool {
	return C.CheckCollisionRayBox(ray, box)
}

// Get collision info between ray and model
[inline] pub fn get_collision_ray_model(ray Ray, model Model) RayHitInfo {
	return C.GetCollisionRayModel(ray, model)
}

// Get collision info between ray and triangle
[inline] pub fn get_collision_ray_triangle(ray Ray, p1, p2, p3 Vector3) RayHitInfo {
	return C.GetCollisionRayTriangle(ray, p1, p2, p3)
}

// Get collision info between ray and ground plane (Y-normal plane)
[inline] pub fn get_collision_ray_ground(ray Ray, groundHeight f32) RayHitInfo {
	return C.GetCollisionRayGround(ray, groundHeight)
}
