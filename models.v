module vraylib

fn C.DrawLine3D(startPos, endPos C.Vector3, color C.Color)
fn C.DrawCircle3D(center C.Vector3, radius f32, rotationAxis C.Vector3, rotationAngle f32, color C.Color)
fn C.DrawCube(position C.Vector3, width, height, length f32, color C.Color)
fn C.DrawCubeTexture(texture C.Texture2D, position C.Vector3, with, height, length f32, color C.Color)
fn C.DrawSphere(centerPos C.Vector3, radius f32, color C.Color)
fn C.DrawSphereEx(centerPos C.Vector3, radius f32, rings, slices int, color C.Color)
fn C.DrawSphereWires(centerPos C.Vector3, radius f32, rings, slices int, color C.Color)
fn C.DrawCylinder(position C.Vector3, radiusTop, radiusBottom, height f32, slices int, color C.Color)
fn C.DrawCylinderWires(position C.Vector3, radiusTop, radiusBottom, height f32, slices int, color C.Color)
fn C.DrawPlane(centerPos C.Vector3, size C.Vector2, color C.Color)
fn C.DrawRay(ray C.Ray, color C.Color)
fn C.DrawGrid(slices int, spacing f32)
fn C.DrawGizmo(position C.Vector3)

fn C.LoadModel(fileName byteptr) C.Model
fn C.LoadModelFromMesh(mesh C.Mesh) C.Model
fn C.UnloadModel(model C.Model)

fn C.LoadMeshes(fileName byteptr, meshCount int) C.Mesh
fn C.ExportMesh(mesh C.Mesh, fileName byteptr)
fn C.UnloadMesh(mesh C.Mesh)

fn C.LoadMaterials(fileName byteptr, materialCount int) C.Material
fn C.LoadMaterialDefault() C.Material
fn C.UnloadMaterial(material C.Material)
fn C.SetMaterialTexture(material C.Material, mapType int, texture C.Texture2D)
fn C.SetModelMeshMaterial(model C.Model, meshId, materialId int)

fn C.LoadModelAnimations(fileName byteptr, animsCount int) C.ModelAnimation
fn C.UpdateModelAnimation(model C.Model, anim C.ModelAnimation, frame int)
fn C.UnloadModelAnimation(anim C.ModelAnimation)
fn C.IsModelAnimationValid(model C.Model, anim C.ModelAnimation) bool

fn C.GenMeshPoly(sides int, radius f32) C.Mesh
fn C.GenMeshPlane(width, length f32, resX, resZ int) C.Mesh
fn C.GenMeshCube(width, height, length f32) C.Mesh
fn C.GenMeshSphere(radius f32, rings, slices int) C.Mesh
fn C.GenMeshHemiSphere(radius f32, rings, slices int) C.Mesh
fn C.GenMeshCylinder(radius, height f32, slices int) C.Mesh
fn C.GenMeshTorus(radius, size f32, radSeg, sides int) C.Mesh
fn C.GenMeshKnot(radius, size f32, radSeg, sides int) C.Mesh
fn C.GenMeshHeightmap(heightmap C.Image, size C.Vector3) C.Mesh
fn C.GenMeshCubicmap(cubicmap C.Image, cubeSize C.Vector3) C.Mesh

fn C.MeshBoundingBox(mesh C.Mesh) C.BoundingBox
fn C.MeshTangents(mesh C.Mesh)
fn C.MeshBinormals(mesh C.Mesh)

fn C.DrawModel(model C.Model, position C.Vector3, scale f32, tint C.Color)
fn C.DrawModelEx(model C.Model, position, rotationAxis C.Vector3, rotationAngle f32, scale C.Vector3, tint C.Color)
fn C.DrawModelWires(model C.Model, position C.Vector3, scale f32, tint C.Color)
fn C.DrawModelWiresEx(model C.Model, position, rotationAxis C.Vector3, rotationAngle f32, scale C.Vector3, tint C.Color)
fn C.DrawBoundingBox(box C.BoundingBox, color C.Color)
fn C.DrawBillboard(camera C.Camera3D, texture C.Texture2D, center C.Vector3, size f32, tint C.Color)
fn C.DrawBillboardRec(camera C.Camera3D, texture C.Texture2D, sourceRec C.Rectangle, center C.Vector3, size f32, tint C.Color)

fn C.CheckCollisionSpheres(centerA C.Vector3, radiusA f32, centerB C.Vector3, radiusB f32) bool
fn C.CheckCollisionBoxes(box1, box2 C.BoundingBox) bool
fn C.CheckCollisionBoxSphere(box C.BoundingBox, centerSphere C.Vector3, radiusSphere f32) bool
fn C.CheckCollisionRaySphere(ray C.Ray, spherePosition C.Vector3, sphereRadius f32) bool
fn C.CheckCollisionRaySphereEx(ray C.Ray, spherePosition C.Vector3, sphereRadius f32, collisionPoint C.Vector3) bool
fn C.CheckCollisionRayBox(ray C.Ray, box C.BoundingBox) bool
fn C.GetCollisionRayModel(ray C.Ray, model C.Model) C.RayHitInfo
fn C.GetCollisionRayTriangle(ray C.Ray, p1, p2, p3 C.Vector3) C.RayHitInfo
fn C.GetCollisionRayGround(ray C.Ray, groundHeight f32) RayHitInfo

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
pub fn draw_line_3d(startPos, endPos Vector3, color Color) {
	C.DrawLine3D(startPos, endPos, color)
}

// Draw a circle in 3D world space
pub fn draw_circle_3d(center Vector3, radius f32, rotationAxis Vector3, rotationAngle f32, color Color) {
	C.DrawCircle3D(center, radius, rotationAxis, rotationAngle, color)
}

// Draw cube
pub fn draw_cube(position Vector3, width, height, length f32, color Color) {
	C.DrawCube(position, width, height, length, color)
}

// Draw cube (Vector version)
pub fn draw_cube_v(position, size Vector3, color Color) {
// void DrawCubeV(Vector3 position, Vector3 size, Color color);
}

// Draw cube wires
pub fn draw_cube_wires(position Vector3, width, height, length f32, color Color) {
// void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);
}

// Draw cube wires (Vector version)
pub fn draw_cube_wires_v(position, size Vector3, color Color) {
// void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);
}

// Draw cube textured
pub fn draw_cube_texture(texture Texture2D, position Vector3, width, height, length f32, color Color) {
	C.DrawCubeTexture(texture, position, width, height, length, color)
}

// Draw sphere
pub fn draw_sphere(centerPos Vector3, radius f32, color Color) {
	C.DrawSphere(centerPos, radius, color)
}

// Draw sphere with extended parameters
pub fn draw_sphere_ex(centerPos Vector3, radius f32, rings, slices int, color Color) {
	C.DrawSphereEx(centerPos, radius, rings, slices, color)
}

// Draw sphere wires
pub fn draw_sphere_wires(centerPos Vector3, radius f32, rings, slices int, color Color) {
	C.DrawSphereWires(centerPos, radius, rings, slices, color)
}

// Draw a cylinder/cone
pub fn draw_cylinder(position Vector3, radiusTop, radiusBottom, height f32, slices int, color Color) {
	C.DrawCylinder(position, radiusTop, radiusBottom, height, slices, color)
}

// Draw a cylinder/cone wires
pub fn draw_cylinder_wires(position Vector3, radiusTop, radiusBottom, height f32, slices int, color Color) {
	C.DrawCylinderWires(position, radiusTop, radiusBottom, height, slices, color)
}

// Draw a plane XZ
pub fn draw_plane(centerPos Vector3, size Vector2, color Color) {
	C.DrawPlane(centerPos, size, color)
}

// Draw a ray line
pub fn draw_ray(ray Ray, color Color) {
	C.DrawRay(ray, color)
}

// Draw a grid (centered at (0, 0, 0))
pub fn draw_grid(slices int, spacing f32) {
	C.DrawGrid(slices, spacing)
}

// Draw simple gizmo
pub fn draw_gizmo(position Vector3) {
	C.DrawGizmo(position)
}

// Model loading/unloading functions

// Load model from files (meshes and materials)
pub fn load_model(fileName string) Model {
	return C.LoadModel(fileName.str)
}

// Load model from generated mesh (default material)
pub fn load_model_from_mesh(mesh Mesh) Model {
	return C.LoadModelFromMesh(mesh)
}
// Unload model from memory (RAM and/or VRAM)
pub fn unload_model(model Model) {
	C.UnloadModel(model)
}

// // Mesh loading/unloading functions
//

// Load meshes from model file
pub fn load_meshes(fileName string, meshCount &int) &Mesh {
	return C.LoadMeshes(fileName.str, meshCount)
}

// Export mesh data to file
pub fn export_mesh(mesh Mesh, fileName string) {
	C.ExportMesh(mesh, fileName.str)
}

// Unload mesh from memory (RAM and/or VRAM)
pub fn unload_mesh(mesh &Mesh) {
	C.UnloadMesh(mesh)
}


// Material loading/unloading functions
//

// Load materials from model file
pub fn load_materials(fileName string, materialCount &int) &Material {
	return C.LoadMaterials(fileName.str, materialCount)
}

// Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
pub fn load_material_default() Material {
	return C.LoadMaterialDefault()
}

// Unload material from GPU memory (VRAM)
pub fn unload_material(material Material) {
	C.UnloadMaterial(material)
}

// Set texture for a material map type (MAP_DIFFUSE, MAP_SPECULAR...)
pub fn set_material_texture(material &Material, mapType int, texture Texture2D) {
	C.SetMaterialTexture(material, mapType, texture)
}

// Set material for a mesh
pub fn set_model_mesh_material(model &Model, meshId, materialId int) {
	C.SetModelMeshMaterial(model, meshId, materialId)
}


// Model animations loading/unloading functions
//

// Load model animations from file
pub fn load_model_animations(fileName string, animsCount &int) &ModelAnimation {
	return C.LoadModelAnimations(fileName.str, animsCount)
}

// Update model animation pose
pub fn update_model_animation(model Model, anim ModelAnimation, frame int) {
	C.UpdateModelAnimation(model, anim, frame)
}

// Unload animation data
pub fn unload_model_animation(anim ModelAnimation) {
	C.UnloadModelAnimation(anim)
}

// Check model animation skeleton match
pub fn is_model_animation_valid(model Model, anim ModelAnimation) bool {
	return C.IsModelAnimationValid(model, anim)
}


// Mesh generation functions
//

// Generate polygonal mesh
pub fn gen_mesh_poly(sides int, radius f32) {
	C.GenMeshPoly(sides, radius)
}

// Generate plane mesh (with subdivisions)
pub fn gen_mesh_plane(width, length, f32, resX, resZ int) Mesh {
	return C.GenMeshPlane(width, length, resX, resZ)
}

// Generate cuboid mesh
pub fn gen_mesh_cube(width, height, length f32) Mesh {
	return C.GenMeshCube(width, height, length)
}

// Generate sphere mesh (standard sphere)
pub fn gen_mesh_sphere(radius f32, rings, slices int) Mesh {
	return C.GenMeshSphere(radius, rings, slices)
}

// Generate half-sphere mesh (no bottom cap)
pub fn gen_mesh_hemi_sphere(radius f32, rings, slices int) Mesh {
	return C.GenMeshHemiSphere(radius, rings, slices)
}

// Generate cylinder mesh
pub fn gen_mesh_cylinder(radius, height f32, slices int) Mesh {
	return C.GenMeshCylinder(radius, height, slices)
}

// Generate torus mesh
pub fn gen_mesh_torus(radius, size f32, radSeg, sides int) Mesh {
	return C.GenMeshTorus(radius, size, radSeg, sides)
}

// Generate trefoil knot mesh
pub fn gen_mesh_knot(radius, size f32, radSeg, sides int) Mesh {
	return C.GenMeshKnot(radius, size, radSeg, sides)
}

// Generate heightmap mesh from image data
pub fn gen_mesh_height_map(heightmap Image, size Vector3) Mesh {
	return C.GenMeshHeightmap(heightmap, size)
}

// Generate cubes-based map mesh from image data
pub fn gen_mesh_cubicmap(cubicmap Image, cubeSize Vector3) Mesh {
	return C.GenMeshCubicmap(cubicmap, cubeSize)
}


// Mesh manipulation functions
//

// Compute mesh bounding box limits
pub fn mesh_bounding_box(mesh Mesh) BoundingBox {
	return C.MeshBoundingBox(mesh)
}

// Compute mesh tangents
pub fn mesh_tangents(mesh &Mesh) {
	C.MeshTangents(mesh)
}

// Compute mesh binormals
pub fn mesh_binormals(mesh &Mesh) {
	C.MeshBinormals(mesh)
}

// Model drawing functions
pub fn draw_model(model Model, position Vector3, scale f32, tint Color) {
	C.DrawModel(model, position, scale, tint)
}

// Draw a model with extended parameters
pub fn draw_model_ex(model Model, position, rotationAxis Vector3, rotationAngle f32, scale Vector3, tint Color) {
	C.DrawModelEx(model, position, rotationAxis, rotationAngle, scale, tint)
}

// Draw a model wires (with texture if set)
pub fn draw_model_wires(model Model, position Vector3, scale f32, tint Color) {
	C.DrawModelWires(model, position, scale, tint)
}

// Draw a model wires (with texture if set) with extended parameters
pub fn draw_model_wires_ex(model Model, position, rotationAxis Vector3, rotationAngle f32, scale Vector3, tint Color) {
	C.DrawModelWiresEx(model, position, rotationAxis, rotationAngle, scale, tint)
}

// Draw bounding box (wires)
pub fn draw_bounding_box(box BoundingBox, color Color) {
	C.DrawBoundingBox(box, color)
}

// Draw a billboard texture
pub fn draw_billboard(camera Camera3D, texture Texture2D, center Vector3, size f32, tint Color) {
	C.DrawBillboard(camera, texture, center, size, tint)
}

// Draw a billboard texture defined by sourceRec
pub fn draw_billboard_rec(camera Camera3D, texture Texture2D, sourceRec Rectangle, center Vector3, size f32, tint Color) {
	C.DrawBillboardRec(camera, texture, sourceRec, center, size, tint)
}

// Collision detection functions
//

// Detect collision between two spheres
pub fn check_collision_spheres(centerA Vector3, radiusA f32, centerB Vector3, radiusB f32) bool {
	return C.CheckCollisionSpheres(centerA, radiusA, centerB, radiusB)
}

// Detect collision between two bounding boxes
pub fn check_collision_boxes(box1, box2 BoundingBox) bool {
	return C.CheckCollisionBoxes(box1, box2)
}

// Detect collision between box and sphere
pub fn check_collision_box_sphere(box BoundingBox, centerSphere Vector3, radiusSphere f32) bool {
	return C.CheckCollisionBoxSphere(box, centerSphere, radiusSphere)
}

// Detect collision between ray and sphere
pub fn check_collision_ray_sphere(ray Ray, spherePosition Vector3, sphereRadius f32) bool {
	return C.CheckCollisionRaySphere(ray, spherePosition, sphereRadius)
}

// Detect collision between ray and sphere, returns collision point
pub fn check_collision_ray_sphere_ex(ray Ray, spherePosition Vector3, sphereRadius f32, collisionPoint &Vector3) bool {
	return C.CheckCollisionRaySphereEx(ray, spherePosition, sphereRadius, collisionPoint)
}

// Detect collision between ray and box
pub fn check_collision_ray_box(ray Ray, box BoundingBox) bool {
	return C.CheckCollisionRayBox(ray, box)
}

// Get collision info between ray and model
pub fn get_collision_ray_model(ray Ray, model &Model) RayHitInfo {
	return C.GetCollisionRayModel(ray, model)
}

// Get collision info between ray and triangle
pub fn get_collision_ray_triangle(ray Ray, p1, p2, p3 Vector3) RayHitInfo {
	return C.GetCollisionRayTriangle(ray, p1, p2, p3)
}

// Get collision info between ray and ground plane (Y-normal plane)
pub fn get_collision_ray_ground(ray Ray, groundHeight f32) RayHitInfo {
	return C.GetCollisionRayGround(ray, groundHeight)
}
