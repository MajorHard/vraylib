module vraylib


// Vertex data definning a mesh
// NOTE: Data stored in CPU memory (and GPU)
struct C.Mesh {
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
struct C.Shader {
pub:
    id u32
    locs &u32
}

// Material texture map
struct C.MaterialMap {
pub mut:
	texture Texture2D
	color Color
	value f32
}

// Material type (generic)
struct C.Material {
pub mut:
  shader Shader
  maps &MaterialMap
  params &f32
}

// Transformation properties
struct Transform {
pub mut:
	translation Vector3
	rotation Quaternion
	scale Vector3
}

// Bone information
struct C.BoneInfo {
pub mut:
  name[32] byte
  parent int
}
type BoneInfo C.BoneInfo

// Model type
struct C.Model {
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
pub fn unload_mesh(mesh Mesh) {
	C.UnloadMesh(mesh)
}
