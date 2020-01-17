module vraylib

// C Original: RLAPI void InitWindow(int width, int height, const char *title);  // Initialize window and OpenGL context
// C.InitWindow - Initialize window and OpenGL context
fn C.InitWindow(c_width int, c_height int, c_title charptr)        

// C Original: RLAPI bool WindowShouldClose(void);                               // Check if KEY_ESCAPE pressed or Close icon pressed
// C.WindowShouldClose - Check if KEY_ESCAPE pressed or Close icon pressed
fn C.WindowShouldClose() bool                                      

// C Original: RLAPI void CloseWindow(void);                                     // Close window and unload OpenGL context
// C.CloseWindow - Close window and unload OpenGL context
fn C.CloseWindow()                                                 

// C Original: RLAPI bool IsWindowReady(void);                                   // Check if window has been initialized successfully
// C.IsWindowReady - Check if window has been initialized successfully
fn C.IsWindowReady() bool                                          

// C Original: RLAPI bool IsWindowMinimized(void);                               // Check if window has been minimized (or lost focus)
// C.IsWindowMinimized - Check if window has been minimized (or lost focus)
fn C.IsWindowMinimized() bool                                      

// C Original: RLAPI bool IsWindowResized(void);                                 // Check if window has been resized
// C.IsWindowResized - Check if window has been resized
fn C.IsWindowResized() bool                                        

// C Original: RLAPI bool IsWindowHidden(void);                                  // Check if window is currently hidden
// C.IsWindowHidden - Check if window is currently hidden
fn C.IsWindowHidden() bool                                         

// C Original: RLAPI void ToggleFullscreen(void);                                // Toggle fullscreen mode (only PLATFORM_DESKTOP)
// C.ToggleFullscreen - Toggle fullscreen mode (only PLATFORM_DESKTOP)
fn C.ToggleFullscreen()                                            

// C Original: RLAPI void UnhideWindow(void);                                    // Show the window
// C.UnhideWindow - Show the window
fn C.UnhideWindow()                                                

// C Original: RLAPI void HideWindow(void);                                      // Hide the window
// C.HideWindow - Hide the window
fn C.HideWindow()                                                  

// C Original: RLAPI void SetWindowIcon(Image image);                            // Set icon for window (only PLATFORM_DESKTOP)
// C.SetWindowIcon - Set icon for window (only PLATFORM_DESKTOP)
fn C.SetWindowIcon(c_image C.Image)                                

// C Original: RLAPI void SetWindowTitle(const char *title);                     // Set title for window (only PLATFORM_DESKTOP)
// C.SetWindowTitle - Set title for window (only PLATFORM_DESKTOP)
fn C.SetWindowTitle(c_title charptr)                               

// C Original: RLAPI void SetWindowPosition(int x, int y);                       // Set window position on screen (only PLATFORM_DESKTOP)
// C.SetWindowPosition - Set window position on screen (only PLATFORM_DESKTOP)
fn C.SetWindowPosition(c_x int, c_y int)                           

// C Original: RLAPI void SetWindowMonitor(int monitor);                         // Set monitor for the current window (fullscreen mode)
// C.SetWindowMonitor - Set monitor for the current window (fullscreen mode)
fn C.SetWindowMonitor(c_monitor int)                               

// C Original: RLAPI void SetWindowMinSize(int width, int height);               // Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
// C.SetWindowMinSize - Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
fn C.SetWindowMinSize(c_width int, c_height int)                   

// C Original: RLAPI void SetWindowSize(int width, int height);                  // Set window dimensions
// C.SetWindowSize - Set window dimensions
fn C.SetWindowSize(c_width int, c_height int)                      

// C Original: RLAPI void *GetWindowHandle(void);                                // Get native window handle
// C.GetWindowHandle - Get native window handle
fn C.GetWindowHandle() voidptr                                     

// C Original: RLAPI int GetScreenWidth(void);                                   // Get current screen width
// C.GetScreenWidth - Get current screen width
fn C.GetScreenWidth() int                                          

// C Original: RLAPI int GetScreenHeight(void);                                  // Get current screen height
// C.GetScreenHeight - Get current screen height
fn C.GetScreenHeight() int                                         

// C Original: RLAPI int GetMonitorCount(void);                                  // Get number of connected monitors
// C.GetMonitorCount - Get number of connected monitors
fn C.GetMonitorCount() int                                         

// C Original: RLAPI int GetMonitorWidth(int monitor);                           // Get primary monitor width
// C.GetMonitorWidth - Get primary monitor width
fn C.GetMonitorWidth(c_monitor int) int                            

// C Original: RLAPI int GetMonitorHeight(int monitor);                          // Get primary monitor height
// C.GetMonitorHeight - Get primary monitor height
fn C.GetMonitorHeight(c_monitor int) int                           

// C Original: RLAPI int GetMonitorPhysicalWidth(int monitor);                   // Get primary monitor physical width in millimetres
// C.GetMonitorPhysicalWidth - Get primary monitor physical width in millimetres
fn C.GetMonitorPhysicalWidth(c_monitor int) int                    

// C Original: RLAPI int GetMonitorPhysicalHeight(int monitor);                  // Get primary monitor physical height in millimetres
// C.GetMonitorPhysicalHeight - Get primary monitor physical height in millimetres
fn C.GetMonitorPhysicalHeight(c_monitor int) int                   

// C Original: RLAPI Vector2 GetWindowPosition(void);                            // Get window position XY on monitor
// C.GetWindowPosition - Get window position XY on monitor
fn C.GetWindowPosition() C.Vector2                                 

// C Original: RLAPI const char *GetMonitorName(int monitor);                    // Get the human-readable, UTF-8 encoded name of the primary monitor
// C.GetMonitorName - Get the human-readable, UTF-8 encoded name of the primary monitor
fn C.GetMonitorName(c_monitor int) charptr                         

// C Original: RLAPI const char *GetClipboardText(void);                         // Get clipboard text content
// C.GetClipboardText - Get clipboard text content
fn C.GetClipboardText() charptr                                    

// C Original: RLAPI void SetClipboardText(const char *text);                    // Set clipboard text content
// C.SetClipboardText - Set clipboard text content
fn C.SetClipboardText(c_text charptr)                              

// C Original: RLAPI void ShowCursor(void);                                      // Shows cursor
// C.ShowCursor - Shows cursor
fn C.ShowCursor()                                                  

// C Original: RLAPI void HideCursor(void);                                      // Hides cursor
// C.HideCursor - Hides cursor
fn C.HideCursor()                                                  

// C Original: RLAPI bool IsCursorHidden(void);                                  // Check if cursor is not visible
// C.IsCursorHidden - Check if cursor is not visible
fn C.IsCursorHidden() bool                                         

// C Original: RLAPI void EnableCursor(void);                                    // Enables cursor (unlock cursor)
// C.EnableCursor - Enables cursor (unlock cursor)
fn C.EnableCursor()                                                

// C Original: RLAPI void DisableCursor(void);                                   // Disables cursor (lock cursor)
// C.DisableCursor - Disables cursor (lock cursor)
fn C.DisableCursor()                                               

// C Original: RLAPI void ClearBackground(Color color);                          // Set background color (framebuffer clear color)
// C.ClearBackground - Set background color (framebuffer clear color)
fn C.ClearBackground(c_color C.Color)                              

// C Original: RLAPI void BeginDrawing(void);                                    // Setup canvas (framebuffer) to start drawing
// C.BeginDrawing - Setup canvas (framebuffer) to start drawing
fn C.BeginDrawing()                                                

// C Original: RLAPI void EndDrawing(void);                                      // End canvas drawing and swap buffers (double buffering)
// C.EndDrawing - End canvas drawing and swap buffers (double buffering)
fn C.EndDrawing()                                                  

// C Original: RLAPI void BeginMode2D(Camera2D camera);                          // Initialize 2D mode with custom camera (2D)
// C.BeginMode2D - Initialize 2D mode with custom camera (2D)
fn C.BeginMode2D(c_camera C.Camera2D)                              

// C Original: RLAPI void EndMode2D(void);                                       // Ends 2D mode with custom camera
// C.EndMode2D - Ends 2D mode with custom camera
fn C.EndMode2D()                                                   

// C Original: RLAPI void BeginMode3D(Camera3D camera);                          // Initializes 3D mode with custom camera (3D)
// C.BeginMode3D - Initializes 3D mode with custom camera (3D)
fn C.BeginMode3D(c_camera C.Camera3D)                              

// C Original: RLAPI void EndMode3D(void);                                       // Ends 3D mode and returns to default 2D orthographic mode
// C.EndMode3D - Ends 3D mode and returns to default 2D orthographic mode
fn C.EndMode3D()                                                   

// C Original: RLAPI void BeginTextureMode(RenderTexture2D target);              // Initializes render texture for drawing
// C.BeginTextureMode - Initializes render texture for drawing
fn C.BeginTextureMode(c_target C.RenderTexture2D)                  

// C Original: RLAPI void EndTextureMode(void);                                  // Ends drawing to render texture
// C.EndTextureMode - Ends drawing to render texture
fn C.EndTextureMode()                                              

// C Original: RLAPI void BeginScissorMode(int x, int y, int width, int height); // Begin scissor mode (define screen area for following drawing)
// C.BeginScissorMode - Begin scissor mode (define screen area for following drawing)
fn C.BeginScissorMode(c_x int, c_y int, c_width int, c_height int)  

// C Original: RLAPI void EndScissorMode(void);                                  // End scissor mode
// C.EndScissorMode - End scissor mode
fn C.EndScissorMode()                                              

// C Original: RLAPI Ray GetMouseRay(Vector2 mousePosition, Camera camera);      // Returns a ray trace from mouse position
// C.GetMouseRay - Returns a ray trace from mouse position
fn C.GetMouseRay(c_mousePosition C.Vector2, c_camera C.Camera) C.Ray 

// C Original: RLAPI Matrix GetCameraMatrix(Camera camera);                      // Returns camera transform matrix (view matrix)
// C.GetCameraMatrix - Returns camera transform matrix (view matrix)
fn C.GetCameraMatrix(c_camera C.Camera) C.Matrix                   

// C Original: RLAPI Matrix GetCameraMatrix2D(Camera2D camera);                  // Returns camera 2d transform matrix
// C.GetCameraMatrix2D - Returns camera 2d transform matrix
fn C.GetCameraMatrix2D(c_camera C.Camera2D) C.Matrix               

// C Original: RLAPI Vector2 GetWorldToScreen(Vector3 position, Camera camera);  // Returns the screen space position for a 3d world space position
// C.GetWorldToScreen - Returns the screen space position for a 3d world space position
fn C.GetWorldToScreen(c_position C.Vector3, c_camera C.Camera) C.Vector2 

// C Original: RLAPI Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera); // Returns the screen space position for a 2d camera world space position
// C.GetWorldToScreen2D - Returns the screen space position for a 2d camera world space position
fn C.GetWorldToScreen2D(c_position C.Vector2, c_camera C.Camera2D) C.Vector2 

// C Original: RLAPI Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera); // Returns the world space position for a 2d camera screen space position
// C.GetScreenToWorld2D - Returns the world space position for a 2d camera screen space position
fn C.GetScreenToWorld2D(c_position C.Vector2, c_camera C.Camera2D) C.Vector2 

// C Original: RLAPI void SetTargetFPS(int fps);                                 // Set target FPS (maximum)
// C.SetTargetFPS - Set target FPS (maximum)
fn C.SetTargetFPS(c_fps int)                                       

// C Original: RLAPI int GetFPS(void);                                           // Returns current FPS
// C.GetFPS - Returns current FPS
fn C.GetFPS() int                                                  

// C Original: RLAPI float GetFrameTime(void);                                   // Returns time in seconds for last frame drawn
// C.GetFrameTime - Returns time in seconds for last frame drawn
fn C.GetFrameTime() f32                                            

// C Original: RLAPI double GetTime(void);                                       // Returns elapsed time in seconds since InitWindow()
// C.GetTime - Returns elapsed time in seconds since InitWindow()
fn C.GetTime() f64                                                 

// C Original: RLAPI int ColorToInt(Color color);                                // Returns hexadecimal value for a Color
// C.ColorToInt - Returns hexadecimal value for a Color
fn C.ColorToInt(c_color C.Color) int                               

// C Original: RLAPI Vector4 ColorNormalize(Color color);                        // Returns color normalized as float [0..1]
// C.ColorNormalize - Returns color normalized as float [0..1]
fn C.ColorNormalize(c_color C.Color) C.Vector4                     

// C Original: RLAPI Color ColorFromNormalized(Vector4 normalized);              // Returns color from normalized values [0..1]
// C.ColorFromNormalized - Returns color from normalized values [0..1]
fn C.ColorFromNormalized(c_normalized C.Vector4) C.Color           

// C Original: RLAPI Vector3 ColorToHSV(Color color);                            // Returns HSV values for a Color
// C.ColorToHSV - Returns HSV values for a Color
fn C.ColorToHSV(c_color C.Color) C.Vector3                         

// C Original: RLAPI Color ColorFromHSV(Vector3 hsv);                            // Returns a Color from HSV values
// C.ColorFromHSV - Returns a Color from HSV values
fn C.ColorFromHSV(c_hsv C.Vector3) C.Color                         

// C Original: RLAPI Color GetColor(int hexValue);                               // Returns a Color struct from hexadecimal value
// C.GetColor - Returns a Color struct from hexadecimal value
fn C.GetColor(c_hexValue int) C.Color                              

// C Original: RLAPI Color Fade(Color color, float alpha);                       // Color fade-in or fade-out, alpha goes from 0.0f to 1.0f
// C.Fade - Color fade-in or fade-out, alpha goes from 0.0f to 1.0f
fn C.Fade(c_color C.Color, c_alpha f32) C.Color                    

// C Original: RLAPI void SetConfigFlags(unsigned int flags);                    // Setup window configuration flags (view FLAGS)
// C.SetConfigFlags - Setup window configuration flags (view FLAGS)
fn C.SetConfigFlags(c_flags u32)                                   

// C Original: RLAPI void SetTraceLogLevel(int logType);                         // Set the current threshold (minimum) log level
// C.SetTraceLogLevel - Set the current threshold (minimum) log level
fn C.SetTraceLogLevel(c_logType int)                               

// C Original: RLAPI void SetTraceLogExit(int logType);                          // Set the exit threshold (minimum) log level
// C.SetTraceLogExit - Set the exit threshold (minimum) log level
fn C.SetTraceLogExit(c_logType int)                                

// C Original: RLAPI void SetTraceLogCallback(TraceLogCallback callback);        // Set a trace log callback to enable custom logging
// C Original: RLAPI void TraceLog(int logType, const char *text, ...);          // Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR)
// C.TraceLog - Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR)
fn C.TraceLog(c_logType int, c_text charptr, x ...charptr)         

// C Original: RLAPI void TakeScreenshot(const char *fileName);                  // Takes a screenshot of current screen (saved a .png)
// C.TakeScreenshot - Takes a screenshot of current screen (saved a .png)
fn C.TakeScreenshot(c_fileName charptr)                            

// C Original: RLAPI int GetRandomValue(int min, int max);                       // Returns a random value between min and max (both included)
// C.GetRandomValue - Returns a random value between min and max (both included)
fn C.GetRandomValue(c_min int, c_max int) int                      

// C Original: RLAPI bool FileExists(const char *fileName);                      // Check if file exists
// C.FileExists - Check if file exists
fn C.FileExists(c_fileName charptr) bool                           

// C Original: RLAPI bool IsFileExtension(const char *fileName, const char *ext);// Check file extension
// C.IsFileExtension - Check file extension
fn C.IsFileExtension(c_fileName charptr, c_ext charptr) bool       

// C Original: RLAPI bool DirectoryExists(const char *dirPath);                  // Check if a directory path exists
// C.DirectoryExists - Check if a directory path exists
fn C.DirectoryExists(c_dirPath charptr) bool                       

// C Original: RLAPI const char *GetExtension(const char *fileName);             // Get pointer to extension for a filename string
// C.GetExtension - Get pointer to extension for a filename string
fn C.GetExtension(c_fileName charptr) charptr                      

// C Original: RLAPI const char *GetFileName(const char *filePath);              // Get pointer to filename for a path string
// C.GetFileName - Get pointer to filename for a path string
fn C.GetFileName(c_filePath charptr) charptr                       

// C Original: RLAPI const char *GetFileNameWithoutExt(const char *filePath);    // Get filename string without extension (uses static string)
// C.GetFileNameWithoutExt - Get filename string without extension (uses static string)
fn C.GetFileNameWithoutExt(c_filePath charptr) charptr             

// C Original: RLAPI const char *GetDirectoryPath(const char *filePath);         // Get full path for a given fileName with path (uses static string)
// C.GetDirectoryPath - Get full path for a given fileName with path (uses static string)
fn C.GetDirectoryPath(c_filePath charptr) charptr                  

// C Original: RLAPI const char *GetPrevDirectoryPath(const char *dirPath);      // Get previous directory path for a given path (uses static string)
// C.GetPrevDirectoryPath - Get previous directory path for a given path (uses static string)
fn C.GetPrevDirectoryPath(c_dirPath charptr) charptr               

// C Original: RLAPI const char *GetWorkingDirectory(void);                      // Get current working directory (uses static string)
// C.GetWorkingDirectory - Get current working directory (uses static string)
fn C.GetWorkingDirectory() charptr                                 

// C Original: RLAPI char **GetDirectoryFiles(const char *dirPath, int *count);  // Get filenames in a directory path (memory should be freed)
// C.GetDirectoryFiles - Get filenames in a directory path (memory should be freed)
fn C.GetDirectoryFiles(c_dirPath charptr, c_count &int) &charptr   

// C Original: RLAPI void ClearDirectoryFiles(void);                             // Clear directory files paths buffers (free memory)
// C.ClearDirectoryFiles - Clear directory files paths buffers (free memory)
fn C.ClearDirectoryFiles()                                         

// C Original: RLAPI bool ChangeDirectory(const char *dir);                      // Change working directory, returns true if success
// C.ChangeDirectory - Change working directory, returns true if success
fn C.ChangeDirectory(c_dir charptr) bool                           

// C Original: RLAPI bool IsFileDropped(void);                                   // Check if a file has been dropped into window
// C.IsFileDropped - Check if a file has been dropped into window
fn C.IsFileDropped() bool                                          

// C Original: RLAPI char **GetDroppedFiles(int *count);                         // Get dropped files names (memory should be freed)
// C.GetDroppedFiles - Get dropped files names (memory should be freed)
fn C.GetDroppedFiles(c_count &int) &charptr                        

// C Original: RLAPI void ClearDroppedFiles(void);                               // Clear dropped files paths buffer (free memory)
// C.ClearDroppedFiles - Clear dropped files paths buffer (free memory)
fn C.ClearDroppedFiles()                                           

// C Original: RLAPI long GetFileModTime(const char *fileName);                  // Get file modification time (last write time)
// C.GetFileModTime - Get file modification time (last write time)
fn C.GetFileModTime(c_fileName charptr) i64                        

// C Original: RLAPI unsigned char *CompressData(unsigned char *data, int dataLength, int *compDataLength);        // Compress data (DEFLATE algorythm)
// C.CompressData - Compress data (DEFLATE algorythm)
fn C.CompressData(c_data byteptr, c_dataLength int, c_compDataLength &int) byteptr 

// C Original: RLAPI unsigned char *DecompressData(unsigned char *compData, int compDataLength, int *dataLength);  // Decompress data (DEFLATE algorythm)
// C.DecompressData - Decompress data (DEFLATE algorythm)
fn C.DecompressData(c_compData byteptr, c_compDataLength int, c_dataLength &int) byteptr 

// C Original: RLAPI void StorageSaveValue(int position, int value);             // Save integer value to storage file (to defined position)
// C.StorageSaveValue - Save integer value to storage file (to defined position)
fn C.StorageSaveValue(c_position int, c_value int)                 

// C Original: RLAPI int StorageLoadValue(int position);                         // Load integer value from storage file (from defined position)
// C.StorageLoadValue - Load integer value from storage file (from defined position)
fn C.StorageLoadValue(c_position int) int                          

// C Original: RLAPI void OpenURL(const char *url);                              // Open URL with default system browser (if available)
// C.OpenURL - Open URL with default system browser (if available)
fn C.OpenURL(c_url charptr)                                        

// C Original: RLAPI bool IsKeyPressed(int key);                             // Detect if a key has been pressed once
// C.IsKeyPressed - Detect if a key has been pressed once
fn C.IsKeyPressed(c_key int) bool                                  

// C Original: RLAPI bool IsKeyDown(int key);                                // Detect if a key is being pressed
// C.IsKeyDown - Detect if a key is being pressed
fn C.IsKeyDown(c_key int) bool                                     

// C Original: RLAPI bool IsKeyReleased(int key);                            // Detect if a key has been released once
// C.IsKeyReleased - Detect if a key has been released once
fn C.IsKeyReleased(c_key int) bool                                 

// C Original: RLAPI bool IsKeyUp(int key);                                  // Detect if a key is NOT being pressed
// C.IsKeyUp - Detect if a key is NOT being pressed
fn C.IsKeyUp(c_key int) bool                                       

// C Original: RLAPI void SetExitKey(int key);                               // Set a custom key to exit program (default is ESC)
// C.SetExitKey - Set a custom key to exit program (default is ESC)
fn C.SetExitKey(c_key int)                                         

// C Original: RLAPI int GetKeyPressed(void);                                // Get key pressed, call it multiple times for chars queued
// C.GetKeyPressed - Get key pressed, call it multiple times for chars queued
fn C.GetKeyPressed() int                                           

// C Original: RLAPI bool IsGamepadAvailable(int gamepad);                   // Detect if a gamepad is available
// C.IsGamepadAvailable - Detect if a gamepad is available
fn C.IsGamepadAvailable(c_gamepad int) bool                        

// C Original: RLAPI bool IsGamepadName(int gamepad, const char *name);      // Check gamepad name (if available)
// C.IsGamepadName - Check gamepad name (if available)
fn C.IsGamepadName(c_gamepad int, c_name charptr) bool             

// C Original: RLAPI const char *GetGamepadName(int gamepad);                // Return gamepad internal name id
// C.GetGamepadName - Return gamepad internal name id
fn C.GetGamepadName(c_gamepad int) charptr                         

// C Original: RLAPI bool IsGamepadButtonPressed(int gamepad, int button);   // Detect if a gamepad button has been pressed once
// C.IsGamepadButtonPressed - Detect if a gamepad button has been pressed once
fn C.IsGamepadButtonPressed(c_gamepad int, c_button int) bool      

// C Original: RLAPI bool IsGamepadButtonDown(int gamepad, int button);      // Detect if a gamepad button is being pressed
// C.IsGamepadButtonDown - Detect if a gamepad button is being pressed
fn C.IsGamepadButtonDown(c_gamepad int, c_button int) bool         

// C Original: RLAPI bool IsGamepadButtonReleased(int gamepad, int button);  // Detect if a gamepad button has been released once
// C.IsGamepadButtonReleased - Detect if a gamepad button has been released once
fn C.IsGamepadButtonReleased(c_gamepad int, c_button int) bool     

// C Original: RLAPI bool IsGamepadButtonUp(int gamepad, int button);        // Detect if a gamepad button is NOT being pressed
// C.IsGamepadButtonUp - Detect if a gamepad button is NOT being pressed
fn C.IsGamepadButtonUp(c_gamepad int, c_button int) bool           

// C Original: RLAPI int GetGamepadButtonPressed(void);                      // Get the last gamepad button pressed
// C.GetGamepadButtonPressed - Get the last gamepad button pressed
fn C.GetGamepadButtonPressed() int                                 

// C Original: RLAPI int GetGamepadAxisCount(int gamepad);                   // Return gamepad axis count for a gamepad
// C.GetGamepadAxisCount - Return gamepad axis count for a gamepad
fn C.GetGamepadAxisCount(c_gamepad int) int                        

// C Original: RLAPI float GetGamepadAxisMovement(int gamepad, int axis);    // Return axis movement value for a gamepad axis
// C.GetGamepadAxisMovement - Return axis movement value for a gamepad axis
fn C.GetGamepadAxisMovement(c_gamepad int, c_axis int) f32         

// C Original: RLAPI bool IsMouseButtonPressed(int button);                  // Detect if a mouse button has been pressed once
// C.IsMouseButtonPressed - Detect if a mouse button has been pressed once
fn C.IsMouseButtonPressed(c_button int) bool                       

// C Original: RLAPI bool IsMouseButtonDown(int button);                     // Detect if a mouse button is being pressed
// C.IsMouseButtonDown - Detect if a mouse button is being pressed
fn C.IsMouseButtonDown(c_button int) bool                          

// C Original: RLAPI bool IsMouseButtonReleased(int button);                 // Detect if a mouse button has been released once
// C.IsMouseButtonReleased - Detect if a mouse button has been released once
fn C.IsMouseButtonReleased(c_button int) bool                      

// C Original: RLAPI bool IsMouseButtonUp(int button);                       // Detect if a mouse button is NOT being pressed
// C.IsMouseButtonUp - Detect if a mouse button is NOT being pressed
fn C.IsMouseButtonUp(c_button int) bool                            

// C Original: RLAPI int GetMouseX(void);                                    // Returns mouse position X
// C.GetMouseX - Returns mouse position X
fn C.GetMouseX() int                                               

// C Original: RLAPI int GetMouseY(void);                                    // Returns mouse position Y
// C.GetMouseY - Returns mouse position Y
fn C.GetMouseY() int                                               

// C Original: RLAPI Vector2 GetMousePosition(void);                         // Returns mouse position XY
// C.GetMousePosition - Returns mouse position XY
fn C.GetMousePosition() C.Vector2                                  

// C Original: RLAPI void SetMousePosition(int x, int y);                    // Set mouse position XY
// C.SetMousePosition - Set mouse position XY
fn C.SetMousePosition(c_x int, c_y int)                            

// C Original: RLAPI void SetMouseOffset(int offsetX, int offsetY);          // Set mouse offset
// C.SetMouseOffset - Set mouse offset
fn C.SetMouseOffset(c_offsetX int, c_offsetY int)                  

// C Original: RLAPI void SetMouseScale(float scaleX, float scaleY);         // Set mouse scaling
// C.SetMouseScale - Set mouse scaling
fn C.SetMouseScale(c_scaleX f32, c_scaleY f32)                     

// C Original: RLAPI int GetMouseWheelMove(void);                            // Returns mouse wheel movement Y
// C.GetMouseWheelMove - Returns mouse wheel movement Y
fn C.GetMouseWheelMove() int                                       

// C Original: RLAPI int GetTouchX(void);                                    // Returns touch position X for touch point 0 (relative to screen size)
// C.GetTouchX - Returns touch position X for touch point 0 (relative to screen size)
fn C.GetTouchX() int                                               

// C Original: RLAPI int GetTouchY(void);                                    // Returns touch position Y for touch point 0 (relative to screen size)
// C.GetTouchY - Returns touch position Y for touch point 0 (relative to screen size)
fn C.GetTouchY() int                                               

// C Original: RLAPI Vector2 GetTouchPosition(int index);                    // Returns touch position XY for a touch point index (relative to screen size)
// C.GetTouchPosition - Returns touch position XY for a touch point index (relative to screen size)
fn C.GetTouchPosition(c_index int) C.Vector2                       

// C Original: RLAPI void SetGesturesEnabled(unsigned int gestureFlags);     // Enable a set of gestures using flags
// C.SetGesturesEnabled - Enable a set of gestures using flags
fn C.SetGesturesEnabled(c_gestureFlags u32)                        

// C Original: RLAPI bool IsGestureDetected(int gesture);                    // Check if a gesture have been detected
// C.IsGestureDetected - Check if a gesture have been detected
fn C.IsGestureDetected(c_gesture int) bool                         

// C Original: RLAPI int GetGestureDetected(void);                           // Get latest detected gesture
// C.GetGestureDetected - Get latest detected gesture
fn C.GetGestureDetected() int                                      

// C Original: RLAPI int GetTouchPointsCount(void);                          // Get touch points count
// C.GetTouchPointsCount - Get touch points count
fn C.GetTouchPointsCount() int                                     

// C Original: RLAPI float GetGestureHoldDuration(void);                     // Get gesture hold time in milliseconds
// C.GetGestureHoldDuration - Get gesture hold time in milliseconds
fn C.GetGestureHoldDuration() f32                                  

// C Original: RLAPI Vector2 GetGestureDragVector(void);                     // Get gesture drag vector
// C.GetGestureDragVector - Get gesture drag vector
fn C.GetGestureDragVector() C.Vector2                              

// C Original: RLAPI float GetGestureDragAngle(void);                        // Get gesture drag angle
// C.GetGestureDragAngle - Get gesture drag angle
fn C.GetGestureDragAngle() f32                                     

// C Original: RLAPI Vector2 GetGesturePinchVector(void);                    // Get gesture pinch delta
// C.GetGesturePinchVector - Get gesture pinch delta
fn C.GetGesturePinchVector() C.Vector2                             

// C Original: RLAPI float GetGesturePinchAngle(void);                       // Get gesture pinch angle
// C.GetGesturePinchAngle - Get gesture pinch angle
fn C.GetGesturePinchAngle() f32                                    

// C Original: RLAPI void SetCameraMode(Camera camera, int mode);                // Set camera mode (multiple camera modes available)
// C.SetCameraMode - Set camera mode (multiple camera modes available)
fn C.SetCameraMode(c_camera C.Camera, c_mode int)                  

// C Original: RLAPI void UpdateCamera(Camera *camera);                          // Update camera position for selected mode
// C.UpdateCamera - Update camera position for selected mode
fn C.UpdateCamera(c_camera &C.Camera )                             

// C Original: RLAPI void SetCameraPanControl(int panKey);                       // Set camera pan key to combine with mouse movement (free camera)
// C.SetCameraPanControl - Set camera pan key to combine with mouse movement (free camera)
fn C.SetCameraPanControl(c_panKey int)                             

// C Original: RLAPI void SetCameraAltControl(int altKey);                       // Set camera alt key to combine with mouse movement (free camera)
// C.SetCameraAltControl - Set camera alt key to combine with mouse movement (free camera)
fn C.SetCameraAltControl(c_altKey int)                             

// C Original: RLAPI void SetCameraSmoothZoomControl(int szKey);                 // Set camera smooth zoom key to combine with mouse (free camera)
// C.SetCameraSmoothZoomControl - Set camera smooth zoom key to combine with mouse (free camera)
fn C.SetCameraSmoothZoomControl(c_szKey int)                       

// C Original: RLAPI void SetCameraMoveControls(int frontKey, int backKey, int rightKey, int leftKey, int upKey, int downKey); // Set camera move controls (1st person and 3rd person cameras)
// C.SetCameraMoveControls - Set camera move controls (1st person and 3rd person cameras)
fn C.SetCameraMoveControls(c_frontKey int, c_backKey int, c_rightKey int, c_leftKey int, c_upKey int, c_downKey int)  

// C Original: RLAPI void DrawPixel(int posX, int posY, Color color);                                                   // Draw a pixel
// C.DrawPixel - Draw a pixel
fn C.DrawPixel(c_posX int, c_posY int, c_color C.Color)            

// C Original: RLAPI void DrawPixelV(Vector2 position, Color color);                                                    // Draw a pixel (Vector version)
// C.DrawPixelV - Draw a pixel (Vector version)
fn C.DrawPixelV(c_position C.Vector2, c_color C.Color)             

// C Original: RLAPI void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);                // Draw a line
// C.DrawLine - Draw a line
fn C.DrawLine(c_startPosX int, c_startPosY int, c_endPosX int, c_endPosY int, c_color C.Color)  

// C Original: RLAPI void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);                                     // Draw a line (Vector version)
// C.DrawLineV - Draw a line (Vector version)
fn C.DrawLineV(c_startPos C.Vector2, c_endPos C.Vector2, c_color C.Color)  

// C Original: RLAPI void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);                       // Draw a line defining thickness
// C.DrawLineEx - Draw a line defining thickness
fn C.DrawLineEx(c_startPos C.Vector2, c_endPos C.Vector2, c_thick f32, c_color C.Color)  

// C Original: RLAPI void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);                   // Draw a line using cubic-bezier curves in-out
// C.DrawLineBezier - Draw a line using cubic-bezier curves in-out
fn C.DrawLineBezier(c_startPos C.Vector2, c_endPos C.Vector2, c_thick f32, c_color C.Color)  

// C Original: RLAPI void DrawLineStrip(Vector2 *points, int numPoints, Color color);                                   // Draw lines sequence
// C.DrawLineStrip - Draw lines sequence
fn C.DrawLineStrip(c_points &C.Vector2 , c_numPoints int, c_color C.Color)  

// C Original: RLAPI void DrawCircle(int centerX, int centerY, float radius, Color color);                              // Draw a color-filled circle
// C.DrawCircle - Draw a color-filled circle
fn C.DrawCircle(c_centerX int, c_centerY int, c_radius f32, c_color C.Color)  

// C Original: RLAPI void DrawCircleSector(Vector2 center, float radius, int startAngle, int endAngle, int segments, Color color);     // Draw a piece of a circle
// C.DrawCircleSector - Draw a piece of a circle
fn C.DrawCircleSector(c_center C.Vector2, c_radius f32, c_startAngle int, c_endAngle int, c_segments int, c_color C.Color)  

// C Original: RLAPI void DrawCircleSectorLines(Vector2 center, float radius, int startAngle, int endAngle, int segments, Color color);    // Draw circle sector outline
// C.DrawCircleSectorLines - Draw circle sector outline
fn C.DrawCircleSectorLines(c_center C.Vector2, c_radius f32, c_startAngle int, c_endAngle int, c_segments int, c_color C.Color)  

// C Original: RLAPI void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2);       // Draw a gradient-filled circle
// C.DrawCircleGradient - Draw a gradient-filled circle
fn C.DrawCircleGradient(c_centerX int, c_centerY int, c_radius f32, c_color1 C.Color, c_color2 C.Color)  

// C Original: RLAPI void DrawCircleV(Vector2 center, float radius, Color color);                                       // Draw a color-filled circle (Vector version)
// C.DrawCircleV - Draw a color-filled circle (Vector version)
fn C.DrawCircleV(c_center C.Vector2, c_radius f32, c_color C.Color)  

// C Original: RLAPI void DrawCircleLines(int centerX, int centerY, float radius, Color color);                         // Draw circle outline
// C.DrawCircleLines - Draw circle outline
fn C.DrawCircleLines(c_centerX int, c_centerY int, c_radius f32, c_color C.Color)  

// C Original: RLAPI void DrawRing(Vector2 center, float innerRadius, float outerRadius, int startAngle, int endAngle, int segments, Color color); // Draw ring
// C.DrawRing - Draw ring
fn C.DrawRing(c_center C.Vector2, c_innerRadius f32, c_outerRadius f32, c_startAngle int, c_endAngle int, c_segments int, c_color C.Color)  

// C Original: RLAPI void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, int startAngle, int endAngle, int segments, Color color);    // Draw ring outline
// C.DrawRingLines - Draw ring outline
fn C.DrawRingLines(c_center C.Vector2, c_innerRadius f32, c_outerRadius f32, c_startAngle int, c_endAngle int, c_segments int, c_color C.Color)  

// C Original: RLAPI void DrawRectangle(int posX, int posY, int width, int height, Color color);                        // Draw a color-filled rectangle
// C.DrawRectangle - Draw a color-filled rectangle
fn C.DrawRectangle(c_posX int, c_posY int, c_width int, c_height int, c_color C.Color)  

// C Original: RLAPI void DrawRectangleV(Vector2 position, Vector2 size, Color color);                                  // Draw a color-filled rectangle (Vector version)
// C.DrawRectangleV - Draw a color-filled rectangle (Vector version)
fn C.DrawRectangleV(c_position C.Vector2, c_size C.Vector2, c_color C.Color)  

// C Original: RLAPI void DrawRectangleRec(Rectangle rec, Color color);                                                 // Draw a color-filled rectangle
// C.DrawRectangleRec - Draw a color-filled rectangle
fn C.DrawRectangleRec(c_rec C.Rectangle, c_color C.Color)          

// C Original: RLAPI void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);                 // Draw a color-filled rectangle with pro parameters
// C.DrawRectanglePro - Draw a color-filled rectangle with pro parameters
fn C.DrawRectanglePro(c_rec C.Rectangle, c_origin C.Vector2, c_rotation f32, c_color C.Color)  

// C Original: RLAPI void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color color2);// Draw a vertical-gradient-filled rectangle
// C.DrawRectangleGradientV - Draw a vertical-gradient-filled rectangle
fn C.DrawRectangleGradientV(c_posX int, c_posY int, c_width int, c_height int, c_color1 C.Color, c_color2 C.Color)  

// C Original: RLAPI void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color color2);// Draw a horizontal-gradient-filled rectangle
// C.DrawRectangleGradientH - Draw a horizontal-gradient-filled rectangle
fn C.DrawRectangleGradientH(c_posX int, c_posY int, c_width int, c_height int, c_color1 C.Color, c_color2 C.Color)  

// C Original: RLAPI void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);       // Draw a gradient-filled rectangle with custom vertex colors
// C.DrawRectangleGradientEx - Draw a gradient-filled rectangle with custom vertex colors
fn C.DrawRectangleGradientEx(c_rec C.Rectangle, c_col1 C.Color, c_col2 C.Color, c_col3 C.Color, c_col4 C.Color)  

// C Original: RLAPI void DrawRectangleLines(int posX, int posY, int width, int height, Color color);                   // Draw rectangle outline
// C.DrawRectangleLines - Draw rectangle outline
fn C.DrawRectangleLines(c_posX int, c_posY int, c_width int, c_height int, c_color C.Color)  

// C Original: RLAPI void DrawRectangleLinesEx(Rectangle rec, int lineThick, Color color);                              // Draw rectangle outline with extended parameters
// C.DrawRectangleLinesEx - Draw rectangle outline with extended parameters
fn C.DrawRectangleLinesEx(c_rec C.Rectangle, c_lineThick int, c_color C.Color)  

// C Original: RLAPI void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);              // Draw rectangle with rounded edges
// C.DrawRectangleRounded - Draw rectangle with rounded edges
fn C.DrawRectangleRounded(c_rec C.Rectangle, c_roundness f32, c_segments int, c_color C.Color)  

// C Original: RLAPI void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, int lineThick, Color color); // Draw rectangle with rounded edges outline
// C.DrawRectangleRoundedLines - Draw rectangle with rounded edges outline
fn C.DrawRectangleRoundedLines(c_rec C.Rectangle, c_roundness f32, c_segments int, c_lineThick int, c_color C.Color)  

// C Original: RLAPI void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);                                // Draw a color-filled triangle (vertex in counter-clockwise order!)
// C.DrawTriangle - Draw a color-filled triangle (vertex in counter-clockwise order!)
fn C.DrawTriangle(c_v1 C.Vector2, c_v2 C.Vector2, c_v3 C.Vector2, c_color C.Color)  

// C Original: RLAPI void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);                           // Draw triangle outline (vertex in counter-clockwise order!)
// C.DrawTriangleLines - Draw triangle outline (vertex in counter-clockwise order!)
fn C.DrawTriangleLines(c_v1 C.Vector2, c_v2 C.Vector2, c_v3 C.Vector2, c_color C.Color)  

// C Original: RLAPI void DrawTriangleFan(Vector2 *points, int numPoints, Color color);                                 // Draw a triangle fan defined by points (first vertex is the center)
// C.DrawTriangleFan - Draw a triangle fan defined by points (first vertex is the center)
fn C.DrawTriangleFan(c_points &C.Vector2 , c_numPoints int, c_color C.Color)  

// C Original: RLAPI void DrawTriangleStrip(Vector2 *points, int pointsCount, Color color);                             // Draw a triangle strip defined by points
// C.DrawTriangleStrip - Draw a triangle strip defined by points
fn C.DrawTriangleStrip(c_points &C.Vector2 , c_pointsCount int, c_color C.Color)  

// C Original: RLAPI void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);               // Draw a regular polygon (Vector version)
// C.DrawPoly - Draw a regular polygon (Vector version)
fn C.DrawPoly(c_center C.Vector2, c_sides int, c_radius f32, c_rotation f32, c_color C.Color)  

// C Original: RLAPI void SetShapesTexture(Texture2D texture, Rectangle source);                                        // Define default texture used to draw shapes
// C.SetShapesTexture - Define default texture used to draw shapes
fn C.SetShapesTexture(c_texture C.Texture2D, c_source C.Rectangle)  

// C Original: RLAPI bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);                                           // Check collision between two rectangles
// C.CheckCollisionRecs - Check collision between two rectangles
fn C.CheckCollisionRecs(c_rec1 C.Rectangle, c_rec2 C.Rectangle) bool 

// C Original: RLAPI bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);        // Check collision between two circles
// C.CheckCollisionCircles - Check collision between two circles
fn C.CheckCollisionCircles(c_center1 C.Vector2, c_radius1 f32, c_center2 C.Vector2, c_radius2 f32) bool 

// C Original: RLAPI bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);                         // Check collision between circle and rectangle
// C.CheckCollisionCircleRec - Check collision between circle and rectangle
fn C.CheckCollisionCircleRec(c_center C.Vector2, c_radius f32, c_rec C.Rectangle) bool 

// C Original: RLAPI Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);                                         // Get collision rectangle for two rectangles collision
// C.GetCollisionRec - Get collision rectangle for two rectangles collision
fn C.GetCollisionRec(c_rec1 C.Rectangle, c_rec2 C.Rectangle) C.Rectangle 

// C Original: RLAPI bool CheckCollisionPointRec(Vector2 point, Rectangle rec);                                         // Check if point is inside rectangle
// C.CheckCollisionPointRec - Check if point is inside rectangle
fn C.CheckCollisionPointRec(c_point C.Vector2, c_rec C.Rectangle) bool 

// C Original: RLAPI bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);                       // Check if point is inside circle
// C.CheckCollisionPointCircle - Check if point is inside circle
fn C.CheckCollisionPointCircle(c_point C.Vector2, c_center C.Vector2, c_radius f32) bool 

// C Original: RLAPI bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);               // Check if point is inside a triangle
// C.CheckCollisionPointTriangle - Check if point is inside a triangle
fn C.CheckCollisionPointTriangle(c_point C.Vector2, c_p1 C.Vector2, c_p2 C.Vector2, c_p3 C.Vector2) bool 

// C Original: RLAPI Image LoadImage(const char *fileName);                                                             // Load image from file into CPU memory (RAM)
// C.LoadImage - Load image from file into CPU memory (RAM)
fn C.LoadImage(c_fileName charptr) C.Image                         

// C Original: RLAPI Image LoadImageEx(Color *pixels, int width, int height);                                           // Load image from Color array data (RGBA - 32bit)
// C.LoadImageEx - Load image from Color array data (RGBA - 32bit)
fn C.LoadImageEx(c_pixels &C.Color , c_width int, c_height int) C.Image 

// C Original: RLAPI Image LoadImagePro(void *data, int width, int height, int format);                                 // Load image from raw data with parameters
// C.LoadImagePro - Load image from raw data with parameters
fn C.LoadImagePro(c_data voidptr, c_width int, c_height int, c_format int) C.Image 

// C Original: RLAPI Image LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize);       // Load image from RAW file data
// C.LoadImageRaw - Load image from RAW file data
fn C.LoadImageRaw(c_fileName charptr, c_width int, c_height int, c_format int, c_headerSize int) C.Image 

// C Original: RLAPI void ExportImage(Image image, const char *fileName);                                               // Export image data to file
// C.ExportImage - Export image data to file
fn C.ExportImage(c_image C.Image, c_fileName charptr)              

// C Original: RLAPI void ExportImageAsCode(Image image, const char *fileName);                                         // Export image as code file defining an array of bytes
// C.ExportImageAsCode - Export image as code file defining an array of bytes
fn C.ExportImageAsCode(c_image C.Image, c_fileName charptr)        

// C Original: RLAPI Texture2D LoadTexture(const char *fileName);                                                       // Load texture from file into GPU memory (VRAM)
// C.LoadTexture - Load texture from file into GPU memory (VRAM)
fn C.LoadTexture(c_fileName charptr) C.Texture2D                   

// C Original: RLAPI Texture2D LoadTextureFromImage(Image image);                                                       // Load texture from image data
// C.LoadTextureFromImage - Load texture from image data
fn C.LoadTextureFromImage(c_image C.Image) C.Texture2D             

// C Original: RLAPI TextureCubemap LoadTextureCubemap(Image image, int layoutType);                                    // Load cubemap from image, multiple image cubemap layouts supported
// C.LoadTextureCubemap - Load cubemap from image, multiple image cubemap layouts supported
fn C.LoadTextureCubemap(c_image C.Image, c_layoutType int) C.TextureCubemap 

// C Original: RLAPI RenderTexture2D LoadRenderTexture(int width, int height);                                          // Load texture for rendering (framebuffer)
// C.LoadRenderTexture - Load texture for rendering (framebuffer)
fn C.LoadRenderTexture(c_width int, c_height int) C.RenderTexture2D 

// C Original: RLAPI void UnloadImage(Image image);                                                                     // Unload image from CPU memory (RAM)
// C.UnloadImage - Unload image from CPU memory (RAM)
fn C.UnloadImage(c_image C.Image)                                  

// C Original: RLAPI void UnloadTexture(Texture2D texture);                                                             // Unload texture from GPU memory (VRAM)
// C.UnloadTexture - Unload texture from GPU memory (VRAM)
fn C.UnloadTexture(c_texture C.Texture2D)                          

// C Original: RLAPI void UnloadRenderTexture(RenderTexture2D target);                                                  // Unload render texture from GPU memory (VRAM)
// C.UnloadRenderTexture - Unload render texture from GPU memory (VRAM)
fn C.UnloadRenderTexture(c_target C.RenderTexture2D)               

// C Original: RLAPI Color *GetImageData(Image image);                                                                  // Get pixel data from image as a Color struct array
// C.GetImageData - Get pixel data from image as a Color struct array
fn C.GetImageData(c_image C.Image) &C.Color                        

// C Original: RLAPI Vector4 *GetImageDataNormalized(Image image);                                                      // Get pixel data from image as Vector4 array (float normalized)
// C.GetImageDataNormalized - Get pixel data from image as Vector4 array (float normalized)
fn C.GetImageDataNormalized(c_image C.Image) &C.Vector4            

// C Original: RLAPI Rectangle GetImageAlphaBorder(Image image, float threshold);                                       // Get image alpha border rectangle
// C.GetImageAlphaBorder - Get image alpha border rectangle
fn C.GetImageAlphaBorder(c_image C.Image, c_threshold f32) C.Rectangle 

// C Original: RLAPI int GetPixelDataSize(int width, int height, int format);                                           // Get pixel data size in bytes (image or texture)
// C.GetPixelDataSize - Get pixel data size in bytes (image or texture)
fn C.GetPixelDataSize(c_width int, c_height int, c_format int) int 

// C Original: RLAPI Image GetTextureData(Texture2D texture);                                                           // Get pixel data from GPU texture and return an Image
// C.GetTextureData - Get pixel data from GPU texture and return an Image
fn C.GetTextureData(c_texture C.Texture2D) C.Image                 

// C Original: RLAPI Image GetScreenData(void);                                                                         // Get pixel data from screen buffer and return an Image (screenshot)
// C.GetScreenData - Get pixel data from screen buffer and return an Image (screenshot)
fn C.GetScreenData() C.Image                                       

// C Original: RLAPI void UpdateTexture(Texture2D texture, const void *pixels);                                         // Update GPU texture with new data
// C.UpdateTexture - Update GPU texture with new data
fn C.UpdateTexture(c_texture C.Texture2D, c_pixels voidptr)        

// C Original: RLAPI Image ImageCopy(Image image);                                                                      // Create an image duplicate (useful for transformations)
// C.ImageCopy - Create an image duplicate (useful for transformations)
fn C.ImageCopy(c_image C.Image) C.Image                            

// C Original: RLAPI Image ImageFromImage(Image image, Rectangle rec);                                                  // Create an image from another image piece
// C.ImageFromImage - Create an image from another image piece
fn C.ImageFromImage(c_image C.Image, c_rec C.Rectangle) C.Image    

// C Original: RLAPI void ImageToPOT(Image *image, Color fillColor);                                                    // Convert image to POT (power-of-two)
// C.ImageToPOT - Convert image to POT (power-of-two)
fn C.ImageToPOT(c_image &C.Image , c_fillColor C.Color)            

// C Original: RLAPI void ImageFormat(Image *image, int newFormat);                                                     // Convert image data to desired format
// C.ImageFormat - Convert image data to desired format
fn C.ImageFormat(c_image &C.Image , c_newFormat int)               

// C Original: RLAPI void ImageAlphaMask(Image *image, Image alphaMask);                                                // Apply alpha mask to image
// C.ImageAlphaMask - Apply alpha mask to image
fn C.ImageAlphaMask(c_image &C.Image , c_alphaMask C.Image)        

// C Original: RLAPI void ImageAlphaClear(Image *image, Color color, float threshold);                                  // Clear alpha channel to desired color
// C.ImageAlphaClear - Clear alpha channel to desired color
fn C.ImageAlphaClear(c_image &C.Image , c_color C.Color, c_threshold f32)  

// C Original: RLAPI void ImageAlphaCrop(Image *image, float threshold);                                                // Crop image depending on alpha value
// C.ImageAlphaCrop - Crop image depending on alpha value
fn C.ImageAlphaCrop(c_image &C.Image , c_threshold f32)            

// C Original: RLAPI void ImageAlphaPremultiply(Image *image);                                                          // Premultiply alpha channel
// C.ImageAlphaPremultiply - Premultiply alpha channel
fn C.ImageAlphaPremultiply(c_image &C.Image )                      

// C Original: RLAPI void ImageCrop(Image *image, Rectangle crop);                                                      // Crop an image to a defined rectangle
// C.ImageCrop - Crop an image to a defined rectangle
fn C.ImageCrop(c_image &C.Image , c_crop C.Rectangle)              

// C Original: RLAPI void ImageResize(Image *image, int newWidth, int newHeight);                                       // Resize image (Bicubic scaling algorithm)
// C.ImageResize - Resize image (Bicubic scaling algorithm)
fn C.ImageResize(c_image &C.Image , c_newWidth int, c_newHeight int)  

// C Original: RLAPI void ImageResizeNN(Image *image, int newWidth,int newHeight);                                      // Resize image (Nearest-Neighbor scaling algorithm)
// C.ImageResizeNN - Resize image (Nearest-Neighbor scaling algorithm)
fn C.ImageResizeNN(c_image &C.Image , c_newWidth int, c_newHeight int)  

// C Original: RLAPI void ImageResizeCanvas(Image *image, int newWidth, int newHeight, int offsetX, int offsetY, Color color);  // Resize canvas and fill with color
// C.ImageResizeCanvas - Resize canvas and fill with color
fn C.ImageResizeCanvas(c_image &C.Image , c_newWidth int, c_newHeight int, c_offsetX int, c_offsetY int, c_color C.Color)  

// C Original: RLAPI void ImageMipmaps(Image *image);                                                                   // Generate all mipmap levels for a provided image
// C.ImageMipmaps - Generate all mipmap levels for a provided image
fn C.ImageMipmaps(c_image &C.Image )                               

// C Original: RLAPI void ImageDither(Image *image, int rBpp, int gBpp, int bBpp, int aBpp);                            // Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
// C.ImageDither - Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
fn C.ImageDither(c_image &C.Image , c_rBpp int, c_gBpp int, c_bBpp int, c_aBpp int)  

// C Original: RLAPI Color *ImageExtractPalette(Image image, int maxPaletteSize, int *extractCount);                    // Extract color palette from image to maximum size (memory should be freed)
// C.ImageExtractPalette - Extract color palette from image to maximum size (memory should be freed)
fn C.ImageExtractPalette(c_image C.Image, c_maxPaletteSize int, c_extractCount &int) &C.Color  

// C Original: RLAPI Image ImageText(const char *text, int fontSize, Color color);                                      // Create an image from text (default font)
// C.ImageText - Create an image from text (default font)
fn C.ImageText(c_text charptr, c_fontSize int, c_color C.Color) C.Image 

// C Original: RLAPI Image ImageTextEx(Font font, const char *text, float fontSize, float spacing, Color tint);         // Create an image from text (custom sprite font)
// C.ImageTextEx - Create an image from text (custom sprite font)
fn C.ImageTextEx(c_font C.Font, c_text charptr, c_fontSize f32, c_spacing f32, c_tint C.Color) C.Image 

// C Original: RLAPI void ImageDraw(Image *dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);             // Draw a source image within a destination image (tint applied to source)
// C.ImageDraw - Draw a source image within a destination image (tint applied to source)
fn C.ImageDraw(c_dst &C.Image , c_src C.Image, c_srcRec C.Rectangle, c_dstRec C.Rectangle, c_tint C.Color)  

// C Original: RLAPI void ImageDrawRectangle(Image *dst, Rectangle rec, Color color);                                   // Draw rectangle within an image
// C.ImageDrawRectangle - Draw rectangle within an image
fn C.ImageDrawRectangle(c_dst &C.Image , c_rec C.Rectangle, c_color C.Color)  

// C Original: RLAPI void ImageDrawRectangleLines(Image *dst, Rectangle rec, int thick, Color color);                   // Draw rectangle lines within an image
// C.ImageDrawRectangleLines - Draw rectangle lines within an image
fn C.ImageDrawRectangleLines(c_dst &C.Image , c_rec C.Rectangle, c_thick int, c_color C.Color)  

// C Original: RLAPI void ImageDrawText(Image *dst, Vector2 position, const char *text, int fontSize, Color color);     // Draw text (default font) within an image (destination)
// C.ImageDrawText - Draw text (default font) within an image (destination)
fn C.ImageDrawText(c_dst &C.Image , c_position C.Vector2, c_text charptr, c_fontSize int, c_color C.Color)  

// C Original: RLAPI void ImageDrawTextEx(Image *dst, Vector2 position, Font font, const char *text, float fontSize, float spacing, Color color); // Draw text (custom sprite font) within an image (destination)
// C.ImageDrawTextEx - Draw text (custom sprite font) within an image (destination)
fn C.ImageDrawTextEx(c_dst &C.Image , c_position C.Vector2, c_font C.Font, c_text charptr, c_fontSize f32, c_spacing f32, c_color C.Color)  

// C Original: RLAPI void ImageFlipVertical(Image *image);                                                              // Flip image vertically
// C.ImageFlipVertical - Flip image vertically
fn C.ImageFlipVertical(c_image &C.Image )                          

// C Original: RLAPI void ImageFlipHorizontal(Image *image);                                                            // Flip image horizontally
// C.ImageFlipHorizontal - Flip image horizontally
fn C.ImageFlipHorizontal(c_image &C.Image )                        

// C Original: RLAPI void ImageRotateCW(Image *image);                                                                  // Rotate image clockwise 90deg
// C.ImageRotateCW - Rotate image clockwise 90deg
fn C.ImageRotateCW(c_image &C.Image )                              

// C Original: RLAPI void ImageRotateCCW(Image *image);                                                                 // Rotate image counter-clockwise 90deg
// C.ImageRotateCCW - Rotate image counter-clockwise 90deg
fn C.ImageRotateCCW(c_image &C.Image )                             

// C Original: RLAPI void ImageColorTint(Image *image, Color color);                                                    // Modify image color: tint
// C.ImageColorTint - Modify image color: tint
fn C.ImageColorTint(c_image &C.Image , c_color C.Color)            

// C Original: RLAPI void ImageColorInvert(Image *image);                                                               // Modify image color: invert
// C.ImageColorInvert - Modify image color: invert
fn C.ImageColorInvert(c_image &C.Image )                           

// C Original: RLAPI void ImageColorGrayscale(Image *image);                                                            // Modify image color: grayscale
// C.ImageColorGrayscale - Modify image color: grayscale
fn C.ImageColorGrayscale(c_image &C.Image )                        

// C Original: RLAPI void ImageColorContrast(Image *image, float contrast);                                             // Modify image color: contrast (-100 to 100)
// C.ImageColorContrast - Modify image color: contrast (-100 to 100)
fn C.ImageColorContrast(c_image &C.Image , c_contrast f32)         

// C Original: RLAPI void ImageColorBrightness(Image *image, int brightness);                                           // Modify image color: brightness (-255 to 255)
// C.ImageColorBrightness - Modify image color: brightness (-255 to 255)
fn C.ImageColorBrightness(c_image &C.Image , c_brightness int)     

// C Original: RLAPI void ImageColorReplace(Image *image, Color color, Color replace);                                  // Modify image color: replace color
// C.ImageColorReplace - Modify image color: replace color
fn C.ImageColorReplace(c_image &C.Image , c_color C.Color, c_replace C.Color)  

// C Original: RLAPI Image GenImageColor(int width, int height, Color color);                                           // Generate image: plain color
// C.GenImageColor - Generate image: plain color
fn C.GenImageColor(c_width int, c_height int, c_color C.Color) C.Image 

// C Original: RLAPI Image GenImageGradientV(int width, int height, Color top, Color bottom);                           // Generate image: vertical gradient
// C.GenImageGradientV - Generate image: vertical gradient
fn C.GenImageGradientV(c_width int, c_height int, c_top C.Color, c_bottom C.Color) C.Image 

// C Original: RLAPI Image GenImageGradientH(int width, int height, Color left, Color right);                           // Generate image: horizontal gradient
// C.GenImageGradientH - Generate image: horizontal gradient
fn C.GenImageGradientH(c_width int, c_height int, c_left C.Color, c_right C.Color) C.Image 

// C Original: RLAPI Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer);      // Generate image: radial gradient
// C.GenImageGradientRadial - Generate image: radial gradient
fn C.GenImageGradientRadial(c_width int, c_height int, c_density f32, c_inner C.Color, c_outer C.Color) C.Image 

// C Original: RLAPI Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2);    // Generate image: checked
// C.GenImageChecked - Generate image: checked
fn C.GenImageChecked(c_width int, c_height int, c_checksX int, c_checksY int, c_col1 C.Color, c_col2 C.Color) C.Image 

// C Original: RLAPI Image GenImageWhiteNoise(int width, int height, float factor);                                     // Generate image: white noise
// C.GenImageWhiteNoise - Generate image: white noise
fn C.GenImageWhiteNoise(c_width int, c_height int, c_factor f32) C.Image 

// C Original: RLAPI Image GenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale);           // Generate image: perlin noise
// C.GenImagePerlinNoise - Generate image: perlin noise
fn C.GenImagePerlinNoise(c_width int, c_height int, c_offsetX int, c_offsetY int, c_scale f32) C.Image 

// C Original: RLAPI Image GenImageCellular(int width, int height, int tileSize);                                       // Generate image: cellular algorithm. Bigger tileSize means bigger cells
// C.GenImageCellular - Generate image: cellular algorithm. Bigger tileSize means bigger cells
fn C.GenImageCellular(c_width int, c_height int, c_tileSize int) C.Image 

// C Original: RLAPI void GenTextureMipmaps(Texture2D *texture);                                                        // Generate GPU mipmaps for a texture
// C.GenTextureMipmaps - Generate GPU mipmaps for a texture
fn C.GenTextureMipmaps(c_texture &C.Texture2D )                    

// C Original: RLAPI void SetTextureFilter(Texture2D texture, int filterMode);                                          // Set texture scaling filter mode
// C.SetTextureFilter - Set texture scaling filter mode
fn C.SetTextureFilter(c_texture C.Texture2D, c_filterMode int)     

// C Original: RLAPI void SetTextureWrap(Texture2D texture, int wrapMode);                                              // Set texture wrapping mode
// C.SetTextureWrap - Set texture wrapping mode
fn C.SetTextureWrap(c_texture C.Texture2D, c_wrapMode int)         

// C Original: RLAPI void DrawTexture(Texture2D texture, int posX, int posY, Color tint);                               // Draw a Texture2D
// C.DrawTexture - Draw a Texture2D
fn C.DrawTexture(c_texture C.Texture2D, c_posX int, c_posY int, c_tint C.Color)  

// C Original: RLAPI void DrawTextureV(Texture2D texture, Vector2 position, Color tint);                                // Draw a Texture2D with position defined as Vector2
// C.DrawTextureV - Draw a Texture2D with position defined as Vector2
fn C.DrawTextureV(c_texture C.Texture2D, c_position C.Vector2, c_tint C.Color)  

// C Original: RLAPI void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);  // Draw a Texture2D with extended parameters
// C.DrawTextureEx - Draw a Texture2D with extended parameters
fn C.DrawTextureEx(c_texture C.Texture2D, c_position C.Vector2, c_rotation f32, c_scale f32, c_tint C.Color)  

// C Original: RLAPI void DrawTextureRec(Texture2D texture, Rectangle sourceRec, Vector2 position, Color tint);         // Draw a part of a texture defined by a rectangle
// C.DrawTextureRec - Draw a part of a texture defined by a rectangle
fn C.DrawTextureRec(c_texture C.Texture2D, c_sourceRec C.Rectangle, c_position C.Vector2, c_tint C.Color)  

// C Original: RLAPI void DrawTextureQuad(Texture2D texture, Vector2 tiling, Vector2 offset, Rectangle quad, Color tint);  // Draw texture quad with tiling and offset parameters
// C.DrawTextureQuad - Draw texture quad with tiling and offset parameters
fn C.DrawTextureQuad(c_texture C.Texture2D, c_tiling C.Vector2, c_offset C.Vector2, c_quad C.Rectangle, c_tint C.Color)  

// C Original: RLAPI void DrawTexturePro(Texture2D texture, Rectangle sourceRec, Rectangle destRec, Vector2 origin, float rotation, Color tint);       // Draw a part of a texture defined by a rectangle with 'pro' parameters
// C.DrawTexturePro - Draw a part of a texture defined by a rectangle with 'pro' parameters
fn C.DrawTexturePro(c_texture C.Texture2D, c_sourceRec C.Rectangle, c_destRec C.Rectangle, c_origin C.Vector2, c_rotation f32, c_tint C.Color)  

// C Original: RLAPI void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle destRec, Vector2 origin, float rotation, Color tint);  // Draws a texture (or part of it) that stretches or shrinks nicely
// C.DrawTextureNPatch - Draws a texture (or part of it) that stretches or shrinks nicely
fn C.DrawTextureNPatch(c_texture C.Texture2D, c_nPatchInfo C.NPatchInfo, c_destRec C.Rectangle, c_origin C.Vector2, c_rotation f32, c_tint C.Color)  

// C Original: RLAPI Font GetFontDefault(void);                                                            // Get the default Font
// C.GetFontDefault - Get the default Font
fn C.GetFontDefault() C.Font                                       

// C Original: RLAPI Font LoadFont(const char *fileName);                                                  // Load font from file into GPU memory (VRAM)
// C.LoadFont - Load font from file into GPU memory (VRAM)
fn C.LoadFont(c_fileName charptr) C.Font                           

// C Original: RLAPI Font LoadFontEx(const char *fileName, int fontSize, int *fontChars, int charsCount);  // Load font from file with extended parameters
// C.LoadFontEx - Load font from file with extended parameters
fn C.LoadFontEx(c_fileName charptr, c_fontSize int, c_fontChars &int, c_charsCount int) C.Font 

// C Original: RLAPI Font LoadFontFromImage(Image image, Color key, int firstChar);                        // Load font from Image (XNA style)
// C.LoadFontFromImage - Load font from Image (XNA style)
fn C.LoadFontFromImage(c_image C.Image, c_key C.Color, c_firstChar int) C.Font 

// C Original: RLAPI CharInfo *LoadFontData(const char *fileName, int fontSize, int *fontChars, int charsCount, int type); // Load font data for further use
// C.LoadFontData - Load font data for further use
fn C.LoadFontData(c_fileName charptr, c_fontSize int, c_fontChars &int, c_charsCount int, c_type int) &C.CharInfo  

// C Original: RLAPI Image GenImageFontAtlas(const CharInfo *chars, Rectangle **recs, int charsCount, int fontSize, int padding, int packMethod);  // Generate image font atlas using chars info
// C.GenImageFontAtlas - Generate image font atlas using chars info
fn C.GenImageFontAtlas(c_chars &CharInfo, c_recs &PRectangle, c_charsCount int, c_fontSize int, c_padding int, c_packMethod int) C.Image 

// C Original: RLAPI void UnloadFont(Font font);                                                           // Unload Font from GPU memory (VRAM)
// C.UnloadFont - Unload Font from GPU memory (VRAM)
fn C.UnloadFont(c_font C.Font)                                     

// C Original: RLAPI void DrawFPS(int posX, int posY);                                                     // Shows current FPS
// C.DrawFPS - Shows current FPS
fn C.DrawFPS(c_posX int, c_posY int)                               

// C Original: RLAPI void DrawText(const char *text, int posX, int posY, int fontSize, Color color);       // Draw text (using default font)
// C.DrawText - Draw text (using default font)
fn C.DrawText(c_text charptr, c_posX int, c_posY int, c_fontSize int, c_color C.Color)  

// C Original: RLAPI void DrawTextEx(Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint);                // Draw text using font and additional parameters
// C.DrawTextEx - Draw text using font and additional parameters
fn C.DrawTextEx(c_font C.Font, c_text charptr, c_position C.Vector2, c_fontSize f32, c_spacing f32, c_tint C.Color)  

// C Original: RLAPI void DrawTextRec(Font font, const char *text, Rectangle rec, float fontSize, float spacing, bool wordWrap, Color tint);   // Draw text using font inside rectangle limits
// C.DrawTextRec - Draw text using font inside rectangle limits
fn C.DrawTextRec(c_font C.Font, c_text charptr, c_rec C.Rectangle, c_fontSize f32, c_spacing f32, c_wordWrap bool, c_tint C.Color)  

// C Original: RLAPI void DrawTextRecEx(Font font, const char *text, Rectangle rec, float fontSize, float spacing, bool wordWrap, Color tint,int selectStart, int selectLength, Color selectTint, Color selectBackTint); // Draw text using font inside rectangle limits with support for text selection
// C.DrawTextRecEx - Draw text using font inside rectangle limits with support for text selection
fn C.DrawTextRecEx(c_font C.Font, c_text charptr, c_rec C.Rectangle, c_fontSize f32, c_spacing f32, c_wordWrap bool, c_tint C.Color, c_selectStart int, c_selectLength int, c_selectTint C.Color, c_selectBackTint C.Color)  

// C Original: RLAPI void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float scale, Color tint);   // Draw one character (codepoint)
// C.DrawTextCodepoint - Draw one character (codepoint)
fn C.DrawTextCodepoint(c_font C.Font, c_codepoint int, c_position C.Vector2, c_scale f32, c_tint C.Color)  

// C Original: RLAPI int MeasureText(const char *text, int fontSize);                                      // Measure string width for default font
// C.MeasureText - Measure string width for default font
fn C.MeasureText(c_text charptr, c_fontSize int) int               

// C Original: RLAPI Vector2 MeasureTextEx(Font font, const char *text, float fontSize, float spacing);    // Measure string size for Font
// C.MeasureTextEx - Measure string size for Font
fn C.MeasureTextEx(c_font C.Font, c_text charptr, c_fontSize f32, c_spacing f32) C.Vector2 

// C Original: RLAPI int GetGlyphIndex(Font font, int codepoint);                                          // Get index position for a unicode character on font
// C.GetGlyphIndex - Get index position for a unicode character on font
fn C.GetGlyphIndex(c_font C.Font, c_codepoint int) int             

// C Original: RLAPI bool TextIsEqual(const char *text1, const char *text2);                               // Check if two text string are equal
// C.TextIsEqual - Check if two text string are equal
fn C.TextIsEqual(c_text1 charptr, c_text2 charptr) bool            

// C Original: RLAPI unsigned int TextLength(const char *text);                                            // Get text length, checks for '\0' ending
// C.TextLength - Get text length, checks for '\0' ending
fn C.TextLength(c_text charptr) u32                                

// C Original: RLAPI const char *TextFormat(const char *text, ...);                                        // Text formatting with variables (sprintf style)
// C.TextFormat - Text formatting with variables (sprintf style)
fn C.TextFormat(c_text charptr, x ...charptr) charptr              

// C Original: RLAPI const char *TextSubtext(const char *text, int position, int length);                  // Get a piece of a text string
// C.TextSubtext - Get a piece of a text string
fn C.TextSubtext(c_text charptr, c_position int, c_length int) charptr 

// C Original: RLAPI char *TextReplace(char *text, const char *replace, const char *by);                   // Replace text string (memory must be freed!)
// C.TextReplace - Replace text string (memory must be freed!)
fn C.TextReplace(c_text &char , c_replace charptr, c_by charptr) &char  

// C Original: RLAPI char *TextInsert(const char *text, const char *insert, int position);                 // Insert text in a position (memory must be freed!)
// C.TextInsert - Insert text in a position (memory must be freed!)
fn C.TextInsert(c_text charptr, c_insert charptr, c_position int) &char  

// C Original: RLAPI const char *TextJoin(const char **textList, int count, const char *delimiter);        // Join text strings with delimiter
// C.TextJoin - Join text strings with delimiter
fn C.TextJoin(c_textList &charptr, c_count int, c_delimiter charptr) charptr 

// C Original: RLAPI const char **TextSplit(const char *text, char delimiter, int *count);                 // Split text into multiple strings
// C.TextSplit - Split text into multiple strings
fn C.TextSplit(c_text charptr, c_delimiter char, c_count &int) &charptr 

// C Original: RLAPI void TextAppend(char *text, const char *append, int *position);                       // Append text at specific position and move cursor!
// C.TextAppend - Append text at specific position and move cursor!
fn C.TextAppend(c_text &char , c_append charptr, c_position &int)  

// C Original: RLAPI int TextFindIndex(const char *text, const char *find);                                // Find first text occurrence within a string
// C.TextFindIndex - Find first text occurrence within a string
fn C.TextFindIndex(c_text charptr, c_find charptr) int             

// C Original: RLAPI const char *TextToUpper(const char *text);                      // Get upper case version of provided string
// C.TextToUpper - Get upper case version of provided string
fn C.TextToUpper(c_text charptr) charptr                           

// C Original: RLAPI const char *TextToLower(const char *text);                      // Get lower case version of provided string
// C.TextToLower - Get lower case version of provided string
fn C.TextToLower(c_text charptr) charptr                           

// C Original: RLAPI const char *TextToPascal(const char *text);                     // Get Pascal case notation version of provided string
// C.TextToPascal - Get Pascal case notation version of provided string
fn C.TextToPascal(c_text charptr) charptr                          

// C Original: RLAPI int TextToInteger(const char *text);                            // Get integer value from text (negative values not supported)
// C.TextToInteger - Get integer value from text (negative values not supported)
fn C.TextToInteger(c_text charptr) int                             

// C Original: RLAPI char *TextToUtf8(int *codepoints, int length);                  // Encode text codepoint into utf8 text (memory must be freed!)
// C.TextToUtf8 - Encode text codepoint into utf8 text (memory must be freed!)
fn C.TextToUtf8(c_codepoints &int, c_length int) &char             

// C Original: RLAPI int *GetCodepoints(const char *text, int *count);               // Get all codepoints in a string, codepoints count returned by parameters
// C.GetCodepoints - Get all codepoints in a string, codepoints count returned by parameters
fn C.GetCodepoints(c_text charptr, c_count &int) &int              

// C Original: RLAPI int GetCodepointsCount(const char *text);                       // Get total number of characters (codepoints) in a UTF8 encoded string
// C.GetCodepointsCount - Get total number of characters (codepoints) in a UTF8 encoded string
fn C.GetCodepointsCount(c_text charptr) int                        

// C Original: RLAPI int GetNextCodepoint(const char *text, int *bytesProcessed);    // Returns next codepoint in a UTF8 encoded string; 0x3f('?') is returned on failure
// C.GetNextCodepoint - Returns next codepoint in a UTF8 encoded string; 0x3f('?') is returned on failure
fn C.GetNextCodepoint(c_text charptr, c_bytesProcessed &int) int   

// C Original: RLAPI const char *CodepointToUtf8(int codepoint, int *byteLength);    // Encode codepoint into utf8 text (char array length returned as parameter)
// C.CodepointToUtf8 - Encode codepoint into utf8 text (char array length returned as parameter)
fn C.CodepointToUtf8(c_codepoint int, c_byteLength &int) charptr   

// C Original: RLAPI void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color);                                    // Draw a line in 3D world space
// C.DrawLine3D - Draw a line in 3D world space
fn C.DrawLine3D(c_startPos C.Vector3, c_endPos C.Vector3, c_color C.Color)  

// C Original: RLAPI void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color); // Draw a circle in 3D world space
// C.DrawCircle3D - Draw a circle in 3D world space
fn C.DrawCircle3D(c_center C.Vector3, c_radius f32, c_rotationAxis C.Vector3, c_rotationAngle f32, c_color C.Color)  

// C Original: RLAPI void DrawCube(Vector3 position, float width, float height, float length, Color color);             // Draw cube
// C.DrawCube - Draw cube
fn C.DrawCube(c_position C.Vector3, c_width f32, c_height f32, c_length f32, c_color C.Color)  

// C Original: RLAPI void DrawCubeV(Vector3 position, Vector3 size, Color color);                                       // Draw cube (Vector version)
// C.DrawCubeV - Draw cube (Vector version)
fn C.DrawCubeV(c_position C.Vector3, c_size C.Vector3, c_color C.Color)  

// C Original: RLAPI void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);        // Draw cube wires
// C.DrawCubeWires - Draw cube wires
fn C.DrawCubeWires(c_position C.Vector3, c_width f32, c_height f32, c_length f32, c_color C.Color)  

// C Original: RLAPI void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);                                  // Draw cube wires (Vector version)
// C.DrawCubeWiresV - Draw cube wires (Vector version)
fn C.DrawCubeWiresV(c_position C.Vector3, c_size C.Vector3, c_color C.Color)  

// C Original: RLAPI void DrawCubeTexture(Texture2D texture, Vector3 position, float width, float height, float length, Color color); // Draw cube textured
// C.DrawCubeTexture - Draw cube textured
fn C.DrawCubeTexture(c_texture C.Texture2D, c_position C.Vector3, c_width f32, c_height f32, c_length f32, c_color C.Color)  

// C Original: RLAPI void DrawSphere(Vector3 centerPos, float radius, Color color);                                     // Draw sphere
// C.DrawSphere - Draw sphere
fn C.DrawSphere(c_centerPos C.Vector3, c_radius f32, c_color C.Color)  

// C Original: RLAPI void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color);            // Draw sphere with extended parameters
// C.DrawSphereEx - Draw sphere with extended parameters
fn C.DrawSphereEx(c_centerPos C.Vector3, c_radius f32, c_rings int, c_slices int, c_color C.Color)  

// C Original: RLAPI void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color);         // Draw sphere wires
// C.DrawSphereWires - Draw sphere wires
fn C.DrawSphereWires(c_centerPos C.Vector3, c_radius f32, c_rings int, c_slices int, c_color C.Color)  

// C Original: RLAPI void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color); // Draw a cylinder/cone
// C.DrawCylinder - Draw a cylinder/cone
fn C.DrawCylinder(c_position C.Vector3, c_radiusTop f32, c_radiusBottom f32, c_height f32, c_slices int, c_color C.Color)  

// C Original: RLAPI void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color); // Draw a cylinder/cone wires
// C.DrawCylinderWires - Draw a cylinder/cone wires
fn C.DrawCylinderWires(c_position C.Vector3, c_radiusTop f32, c_radiusBottom f32, c_height f32, c_slices int, c_color C.Color)  

// C Original: RLAPI void DrawPlane(Vector3 centerPos, Vector2 size, Color color);                                      // Draw a plane XZ
// C.DrawPlane - Draw a plane XZ
fn C.DrawPlane(c_centerPos C.Vector3, c_size C.Vector2, c_color C.Color)  

// C Original: RLAPI void DrawRay(Ray ray, Color color);                                                                // Draw a ray line
// C.DrawRay - Draw a ray line
fn C.DrawRay(c_ray C.Ray, c_color C.Color)                         

// C Original: RLAPI void DrawGrid(int slices, float spacing);                                                          // Draw a grid (centered at (0, 0, 0))
// C.DrawGrid - Draw a grid (centered at (0, 0, 0))
fn C.DrawGrid(c_slices int, c_spacing f32)                         

// C Original: RLAPI void DrawGizmo(Vector3 position);                                                                  // Draw simple gizmo
// C.DrawGizmo - Draw simple gizmo
fn C.DrawGizmo(c_position C.Vector3)                               

// C Original: RLAPI Model LoadModel(const char *fileName);                                                            // Load model from files (meshes and materials)
// C.LoadModel - Load model from files (meshes and materials)
fn C.LoadModel(c_fileName charptr) C.Model                         

// C Original: RLAPI Model LoadModelFromMesh(Mesh mesh);                                                               // Load model from generated mesh (default material)
// C.LoadModelFromMesh - Load model from generated mesh (default material)
fn C.LoadModelFromMesh(c_mesh C.Mesh) C.Model                      

// C Original: RLAPI void UnloadModel(Model model);                                                                    // Unload model from memory (RAM and/or VRAM)
// C.UnloadModel - Unload model from memory (RAM and/or VRAM)
fn C.UnloadModel(c_model C.Model)                                  

// C Original: RLAPI Mesh *LoadMeshes(const char *fileName, int *meshCount);                                           // Load meshes from model file
// C.LoadMeshes - Load meshes from model file
fn C.LoadMeshes(c_fileName charptr, c_meshCount &int) &C.Mesh      

// C Original: RLAPI void ExportMesh(Mesh mesh, const char *fileName);                                                 // Export mesh data to file
// C.ExportMesh - Export mesh data to file
fn C.ExportMesh(c_mesh C.Mesh, c_fileName charptr)                 

// C Original: RLAPI void UnloadMesh(Mesh mesh);                                                                       // Unload mesh from memory (RAM and/or VRAM)
// C.UnloadMesh - Unload mesh from memory (RAM and/or VRAM)
fn C.UnloadMesh(c_mesh C.Mesh)                                     

// C Original: RLAPI Material *LoadMaterials(const char *fileName, int *materialCount);                                // Load materials from model file
// C.LoadMaterials - Load materials from model file
fn C.LoadMaterials(c_fileName charptr, c_materialCount &int) &C.Material  

// C Original: RLAPI Material LoadMaterialDefault(void);                                                               // Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
// C.LoadMaterialDefault - Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
fn C.LoadMaterialDefault() C.Material                              

// C Original: RLAPI void UnloadMaterial(Material material);                                                           // Unload material from GPU memory (VRAM)
// C.UnloadMaterial - Unload material from GPU memory (VRAM)
fn C.UnloadMaterial(c_material C.Material)                         

// C Original: RLAPI void SetMaterialTexture(Material *material, int mapType, Texture2D texture);                      // Set texture for a material map type (MAP_DIFFUSE, MAP_SPECULAR...)
// C.SetMaterialTexture - Set texture for a material map type (MAP_DIFFUSE, MAP_SPECULAR...)
fn C.SetMaterialTexture(c_material &C.Material , c_mapType int, c_texture C.Texture2D)  

// C Original: RLAPI void SetModelMeshMaterial(Model *model, int meshId, int materialId);                              // Set material for a mesh
// C.SetModelMeshMaterial - Set material for a mesh
fn C.SetModelMeshMaterial(c_model &C.Model , c_meshId int, c_materialId int)  

// C Original: RLAPI ModelAnimation *LoadModelAnimations(const char *fileName, int *animsCount);                       // Load model animations from file
// C.LoadModelAnimations - Load model animations from file
fn C.LoadModelAnimations(c_fileName charptr, c_animsCount &int) &C.ModelAnimation  

// C Original: RLAPI void UpdateModelAnimation(Model model, ModelAnimation anim, int frame);                           // Update model animation pose
// C.UpdateModelAnimation - Update model animation pose
fn C.UpdateModelAnimation(c_model C.Model, c_anim C.ModelAnimation, c_frame int)  

// C Original: RLAPI void UnloadModelAnimation(ModelAnimation anim);                                                   // Unload animation data
// C.UnloadModelAnimation - Unload animation data
fn C.UnloadModelAnimation(c_anim C.ModelAnimation)                 

// C Original: RLAPI bool IsModelAnimationValid(Model model, ModelAnimation anim);                                     // Check model animation skeleton match
// C.IsModelAnimationValid - Check model animation skeleton match
fn C.IsModelAnimationValid(c_model C.Model, c_anim C.ModelAnimation) bool 

// C Original: RLAPI Mesh GenMeshPoly(int sides, float radius);                                                        // Generate polygonal mesh
// C.GenMeshPoly - Generate polygonal mesh
fn C.GenMeshPoly(c_sides int, c_radius f32) C.Mesh                 

// C Original: RLAPI Mesh GenMeshPlane(float width, float length, int resX, int resZ);                                 // Generate plane mesh (with subdivisions)
// C.GenMeshPlane - Generate plane mesh (with subdivisions)
fn C.GenMeshPlane(c_width f32, c_length f32, c_resX int, c_resZ int) C.Mesh 

// C Original: RLAPI Mesh GenMeshCube(float width, float height, float length);                                        // Generate cuboid mesh
// C.GenMeshCube - Generate cuboid mesh
fn C.GenMeshCube(c_width f32, c_height f32, c_length f32) C.Mesh   

// C Original: RLAPI Mesh GenMeshSphere(float radius, int rings, int slices);                                          // Generate sphere mesh (standard sphere)
// C.GenMeshSphere - Generate sphere mesh (standard sphere)
fn C.GenMeshSphere(c_radius f32, c_rings int, c_slices int) C.Mesh 

// C Original: RLAPI Mesh GenMeshHemiSphere(float radius, int rings, int slices);                                      // Generate half-sphere mesh (no bottom cap)
// C.GenMeshHemiSphere - Generate half-sphere mesh (no bottom cap)
fn C.GenMeshHemiSphere(c_radius f32, c_rings int, c_slices int) C.Mesh 

// C Original: RLAPI Mesh GenMeshCylinder(float radius, float height, int slices);                                     // Generate cylinder mesh
// C.GenMeshCylinder - Generate cylinder mesh
fn C.GenMeshCylinder(c_radius f32, c_height f32, c_slices int) C.Mesh 

// C Original: RLAPI Mesh GenMeshTorus(float radius, float size, int radSeg, int sides);                               // Generate torus mesh
// C.GenMeshTorus - Generate torus mesh
fn C.GenMeshTorus(c_radius f32, c_size f32, c_radSeg int, c_sides int) C.Mesh 

// C Original: RLAPI Mesh GenMeshKnot(float radius, float size, int radSeg, int sides);                                // Generate trefoil knot mesh
// C.GenMeshKnot - Generate trefoil knot mesh
fn C.GenMeshKnot(c_radius f32, c_size f32, c_radSeg int, c_sides int) C.Mesh 

// C Original: RLAPI Mesh GenMeshHeightmap(Image heightmap, Vector3 size);                                             // Generate heightmap mesh from image data
// C.GenMeshHeightmap - Generate heightmap mesh from image data
fn C.GenMeshHeightmap(c_heightmap C.Image, c_size C.Vector3) C.Mesh 

// C Original: RLAPI Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);                                           // Generate cubes-based map mesh from image data
// C.GenMeshCubicmap - Generate cubes-based map mesh from image data
fn C.GenMeshCubicmap(c_cubicmap C.Image, c_cubeSize C.Vector3) C.Mesh 

// C Original: RLAPI BoundingBox MeshBoundingBox(Mesh mesh);                                                           // Compute mesh bounding box limits
// C.MeshBoundingBox - Compute mesh bounding box limits
fn C.MeshBoundingBox(c_mesh C.Mesh) C.BoundingBox                  

// C Original: RLAPI void MeshTangents(Mesh *mesh);                                                                    // Compute mesh tangents
// C.MeshTangents - Compute mesh tangents
fn C.MeshTangents(c_mesh &C.Mesh )                                 

// C Original: RLAPI void MeshBinormals(Mesh *mesh);                                                                   // Compute mesh binormals
// C.MeshBinormals - Compute mesh binormals
fn C.MeshBinormals(c_mesh &C.Mesh )                                

// C Original: RLAPI void DrawModel(Model model, Vector3 position, float scale, Color tint);                           // Draw a model (with texture if set)
// C.DrawModel - Draw a model (with texture if set)
fn C.DrawModel(c_model C.Model, c_position C.Vector3, c_scale f32, c_tint C.Color)  

// C Original: RLAPI void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint); // Draw a model with extended parameters
// C.DrawModelEx - Draw a model with extended parameters
fn C.DrawModelEx(c_model C.Model, c_position C.Vector3, c_rotationAxis C.Vector3, c_rotationAngle f32, c_scale C.Vector3, c_tint C.Color)  

// C Original: RLAPI void DrawModelWires(Model model, Vector3 position, float scale, Color tint);                      // Draw a model wires (with texture if set)
// C.DrawModelWires - Draw a model wires (with texture if set)
fn C.DrawModelWires(c_model C.Model, c_position C.Vector3, c_scale f32, c_tint C.Color)  

// C Original: RLAPI void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint); // Draw a model wires (with texture if set) with extended parameters
// C.DrawModelWiresEx - Draw a model wires (with texture if set) with extended parameters
fn C.DrawModelWiresEx(c_model C.Model, c_position C.Vector3, c_rotationAxis C.Vector3, c_rotationAngle f32, c_scale C.Vector3, c_tint C.Color)  

// C Original: RLAPI void DrawBoundingBox(BoundingBox box, Color color);                                               // Draw bounding box (wires)
// C.DrawBoundingBox - Draw bounding box (wires)
fn C.DrawBoundingBox(c_box C.BoundingBox, c_color C.Color)         

// C Original: RLAPI void DrawBillboard(Camera camera, Texture2D texture, Vector3 center, float size, Color tint);     // Draw a billboard texture
// C.DrawBillboard - Draw a billboard texture
fn C.DrawBillboard(c_camera C.Camera, c_texture C.Texture2D, c_center C.Vector3, c_size f32, c_tint C.Color)  

// C Original: RLAPI void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle sourceRec, Vector3 center, float size, Color tint); // Draw a billboard texture defined by sourceRec
// C.DrawBillboardRec - Draw a billboard texture defined by sourceRec
fn C.DrawBillboardRec(c_camera C.Camera, c_texture C.Texture2D, c_sourceRec C.Rectangle, c_center C.Vector3, c_size f32, c_tint C.Color)  

// C Original: RLAPI bool CheckCollisionSpheres(Vector3 centerA, float radiusA, Vector3 centerB, float radiusB);       // Detect collision between two spheres
// C.CheckCollisionSpheres - Detect collision between two spheres
fn C.CheckCollisionSpheres(c_centerA C.Vector3, c_radiusA f32, c_centerB C.Vector3, c_radiusB f32) bool 

// C Original: RLAPI bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2);                                     // Detect collision between two bounding boxes
// C.CheckCollisionBoxes - Detect collision between two bounding boxes
fn C.CheckCollisionBoxes(c_box1 C.BoundingBox, c_box2 C.BoundingBox) bool 

// C Original: RLAPI bool CheckCollisionBoxSphere(BoundingBox box, Vector3 center, float radius);                      // Detect collision between box and sphere
// C.CheckCollisionBoxSphere - Detect collision between box and sphere
fn C.CheckCollisionBoxSphere(c_box C.BoundingBox, c_center C.Vector3, c_radius f32) bool 

// C Original: RLAPI bool CheckCollisionRaySphere(Ray ray, Vector3 center, float radius);                              // Detect collision between ray and sphere
// C.CheckCollisionRaySphere - Detect collision between ray and sphere
fn C.CheckCollisionRaySphere(c_ray C.Ray, c_center C.Vector3, c_radius f32) bool 

// C Original: RLAPI bool CheckCollisionRaySphereEx(Ray ray, Vector3 center, float radius, Vector3 *collisionPoint);   // Detect collision between ray and sphere, returns collision point
// C.CheckCollisionRaySphereEx - Detect collision between ray and sphere, returns collision point
fn C.CheckCollisionRaySphereEx(c_ray C.Ray, c_center C.Vector3, c_radius f32, c_collisionPoint &C.Vector3 ) bool 

// C Original: RLAPI bool CheckCollisionRayBox(Ray ray, BoundingBox box);                                              // Detect collision between ray and box
// C.CheckCollisionRayBox - Detect collision between ray and box
fn C.CheckCollisionRayBox(c_ray C.Ray, c_box C.BoundingBox) bool   

// C Original: RLAPI RayHitInfo GetCollisionRayModel(Ray ray, Model model);                                            // Get collision info between ray and model
// C.GetCollisionRayModel - Get collision info between ray and model
fn C.GetCollisionRayModel(c_ray C.Ray, c_model C.Model) C.RayHitInfo 

// C Original: RLAPI RayHitInfo GetCollisionRayTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);                  // Get collision info between ray and triangle
// C.GetCollisionRayTriangle - Get collision info between ray and triangle
fn C.GetCollisionRayTriangle(c_ray C.Ray, c_p1 C.Vector3, c_p2 C.Vector3, c_p3 C.Vector3) C.RayHitInfo 

// C Original: RLAPI RayHitInfo GetCollisionRayGround(Ray ray, float groundHeight);                                    // Get collision info between ray and ground plane (Y-normal plane)
// C.GetCollisionRayGround - Get collision info between ray and ground plane (Y-normal plane)
fn C.GetCollisionRayGround(c_ray C.Ray, c_groundHeight f32) C.RayHitInfo 

// C Original: RLAPI char *LoadText(const char *fileName);                               // Load chars array from text file
// C.LoadText - Load chars array from text file
fn C.LoadText(c_fileName charptr) &char                            

// C Original: RLAPI Shader LoadShader(const char *vsFileName, const char *fsFileName);  // Load shader from files and bind default locations
// C.LoadShader - Load shader from files and bind default locations
fn C.LoadShader(c_vsFileName charptr, c_fsFileName charptr) C.Shader 

// C Original: RLAPI Shader LoadShaderCode(const char *vsCode, const char *fsCode);                  // Load shader from code strings and bind default locations
// C.LoadShaderCode - Load shader from code strings and bind default locations
fn C.LoadShaderCode(c_vsCode charptr, c_fsCode charptr) C.Shader   

// C Original: RLAPI void UnloadShader(Shader shader);                                   // Unload shader from GPU memory (VRAM)
// C.UnloadShader - Unload shader from GPU memory (VRAM)
fn C.UnloadShader(c_shader C.Shader)                               

// C Original: RLAPI Shader GetShaderDefault(void);                                      // Get default shader
// C.GetShaderDefault - Get default shader
fn C.GetShaderDefault() C.Shader                                   

// C Original: RLAPI Texture2D GetTextureDefault(void);                                  // Get default texture
// C.GetTextureDefault - Get default texture
fn C.GetTextureDefault() C.Texture2D                               

// C Original: RLAPI int GetShaderLocation(Shader shader, const char *uniformName);      // Get shader uniform location
// C.GetShaderLocation - Get shader uniform location
fn C.GetShaderLocation(c_shader C.Shader, c_uniformName charptr) int 

// C Original: RLAPI void SetShaderValue(Shader shader, int uniformLoc, const void *value, int uniformType);               // Set shader uniform value
// C.SetShaderValue - Set shader uniform value
fn C.SetShaderValue(c_shader C.Shader, c_uniformLoc int, c_value voidptr, c_uniformType int)  

// C Original: RLAPI void SetShaderValueV(Shader shader, int uniformLoc, const void *value, int uniformType, int count);   // Set shader uniform value vector
// C.SetShaderValueV - Set shader uniform value vector
fn C.SetShaderValueV(c_shader C.Shader, c_uniformLoc int, c_value voidptr, c_uniformType int, c_count int)  

// C Original: RLAPI void SetShaderValueMatrix(Shader shader, int uniformLoc, Matrix mat);         // Set shader uniform value (matrix 4x4)
// C.SetShaderValueMatrix - Set shader uniform value (matrix 4x4)
fn C.SetShaderValueMatrix(c_shader C.Shader, c_uniformLoc int, c_mat C.Matrix)  

// C Original: RLAPI void SetShaderValueTexture(Shader shader, int uniformLoc, Texture2D texture); // Set shader uniform value for texture
// C.SetShaderValueTexture - Set shader uniform value for texture
fn C.SetShaderValueTexture(c_shader C.Shader, c_uniformLoc int, c_texture C.Texture2D)  

// C Original: RLAPI void SetMatrixProjection(Matrix proj);                              // Set a custom projection matrix (replaces internal projection matrix)
// C.SetMatrixProjection - Set a custom projection matrix (replaces internal projection matrix)
fn C.SetMatrixProjection(c_proj C.Matrix)                          

// C Original: RLAPI void SetMatrixModelview(Matrix view);                               // Set a custom modelview matrix (replaces internal modelview matrix)
// C.SetMatrixModelview - Set a custom modelview matrix (replaces internal modelview matrix)
fn C.SetMatrixModelview(c_view C.Matrix)                           

// C Original: RLAPI Matrix GetMatrixModelview(void);                                    // Get internal modelview matrix
// C.GetMatrixModelview - Get internal modelview matrix
fn C.GetMatrixModelview() C.Matrix                                 

// C Original: RLAPI Matrix GetMatrixProjection(void);                                   // Get internal projection matrix
// C.GetMatrixProjection - Get internal projection matrix
fn C.GetMatrixProjection() C.Matrix                                

// C Original: RLAPI Texture2D GenTextureCubemap(Shader shader, Texture2D map, int size);          // Generate cubemap texture from 2D texture
// C.GenTextureCubemap - Generate cubemap texture from 2D texture
fn C.GenTextureCubemap(c_shader C.Shader, c_map C.Texture2D, c_size int) C.Texture2D 

// C Original: RLAPI Texture2D GenTextureIrradiance(Shader shader, Texture2D cubemap, int size);   // Generate irradiance texture using cubemap data
// C.GenTextureIrradiance - Generate irradiance texture using cubemap data
fn C.GenTextureIrradiance(c_shader C.Shader, c_cubemap C.Texture2D, c_size int) C.Texture2D 

// C Original: RLAPI Texture2D GenTexturePrefilter(Shader shader, Texture2D cubemap, int size);    // Generate prefilter texture using cubemap data
// C.GenTexturePrefilter - Generate prefilter texture using cubemap data
fn C.GenTexturePrefilter(c_shader C.Shader, c_cubemap C.Texture2D, c_size int) C.Texture2D 

// C Original: RLAPI Texture2D GenTextureBRDF(Shader shader, int size);                  // Generate BRDF texture
// C.GenTextureBRDF - Generate BRDF texture
fn C.GenTextureBRDF(c_shader C.Shader, c_size int) C.Texture2D     

// C Original: RLAPI void BeginShaderMode(Shader shader);                                // Begin custom shader drawing
// C.BeginShaderMode - Begin custom shader drawing
fn C.BeginShaderMode(c_shader C.Shader)                            

// C Original: RLAPI void EndShaderMode(void);                                           // End custom shader drawing (use default shader)
// C.EndShaderMode - End custom shader drawing (use default shader)
fn C.EndShaderMode()                                               

// C Original: RLAPI void BeginBlendMode(int mode);                                      // Begin blending mode (alpha, additive, multiplied)
// C.BeginBlendMode - Begin blending mode (alpha, additive, multiplied)
fn C.BeginBlendMode(c_mode int)                                    

// C Original: RLAPI void EndBlendMode(void);                                            // End blending mode (reset to default: alpha blending)
// C.EndBlendMode - End blending mode (reset to default: alpha blending)
fn C.EndBlendMode()                                                

// C Original: RLAPI void InitVrSimulator(void);                       // Init VR simulator for selected device parameters
// C.InitVrSimulator - Init VR simulator for selected device parameters
fn C.InitVrSimulator()                                             

// C Original: RLAPI void CloseVrSimulator(void);                      // Close VR simulator for current device
// C.CloseVrSimulator - Close VR simulator for current device
fn C.CloseVrSimulator()                                            

// C Original: RLAPI void UpdateVrTracking(Camera *camera);            // Update VR tracking (position and orientation) and camera
// C.UpdateVrTracking - Update VR tracking (position and orientation) and camera
fn C.UpdateVrTracking(c_camera &C.Camera )                         

// C Original: RLAPI void SetVrConfiguration(VrDeviceInfo info, Shader distortion);      // Set stereo rendering configuration parameters
// C.SetVrConfiguration - Set stereo rendering configuration parameters
fn C.SetVrConfiguration(c_info C.VrDeviceInfo, c_distortion C.Shader)  

// C Original: RLAPI bool IsVrSimulatorReady(void);                    // Detect if VR simulator is ready
// C.IsVrSimulatorReady - Detect if VR simulator is ready
fn C.IsVrSimulatorReady() bool                                     

// C Original: RLAPI void ToggleVrMode(void);                          // Enable/Disable VR experience
// C.ToggleVrMode - Enable/Disable VR experience
fn C.ToggleVrMode()                                                

// C Original: RLAPI void BeginVrDrawing(void);                        // Begin VR simulator stereo rendering
// C.BeginVrDrawing - Begin VR simulator stereo rendering
fn C.BeginVrDrawing()                                              

// C Original: RLAPI void EndVrDrawing(void);                          // End VR simulator stereo rendering
// C.EndVrDrawing - End VR simulator stereo rendering
fn C.EndVrDrawing()                                                

// C Original: RLAPI void InitAudioDevice(void);                                     // Initialize audio device and context
// C.InitAudioDevice - Initialize audio device and context
fn C.InitAudioDevice()                                             

// C Original: RLAPI void CloseAudioDevice(void);                                    // Close the audio device and context
// C.CloseAudioDevice - Close the audio device and context
fn C.CloseAudioDevice()                                            

// C Original: RLAPI bool IsAudioDeviceReady(void);                                  // Check if audio device has been initialized successfully
// C.IsAudioDeviceReady - Check if audio device has been initialized successfully
fn C.IsAudioDeviceReady() bool                                     

// C Original: RLAPI void SetMasterVolume(float volume);                             // Set master volume (listener)
// C.SetMasterVolume - Set master volume (listener)
fn C.SetMasterVolume(c_volume f32)                                 

// C Original: RLAPI Wave LoadWave(const char *fileName);                            // Load wave data from file
// C.LoadWave - Load wave data from file
fn C.LoadWave(c_fileName charptr) C.Wave                           

// C Original: RLAPI Sound LoadSound(const char *fileName);                          // Load sound from file
// C.LoadSound - Load sound from file
fn C.LoadSound(c_fileName charptr) C.Sound                         

// C Original: RLAPI Sound LoadSoundFromWave(Wave wave);                             // Load sound from wave data
// C.LoadSoundFromWave - Load sound from wave data
fn C.LoadSoundFromWave(c_wave C.Wave) C.Sound                      

// C Original: RLAPI void UpdateSound(Sound sound, const void *data, int samplesCount);// Update sound buffer with new data
// C.UpdateSound - Update sound buffer with new data
fn C.UpdateSound(c_sound C.Sound, c_data voidptr, c_samplesCount int)  

// C Original: RLAPI void UnloadWave(Wave wave);                                     // Unload wave data
// C.UnloadWave - Unload wave data
fn C.UnloadWave(c_wave C.Wave)                                     

// C Original: RLAPI void UnloadSound(Sound sound);                                  // Unload sound
// C.UnloadSound - Unload sound
fn C.UnloadSound(c_sound C.Sound)                                  

// C Original: RLAPI void ExportWave(Wave wave, const char *fileName);               // Export wave data to file
// C.ExportWave - Export wave data to file
fn C.ExportWave(c_wave C.Wave, c_fileName charptr)                 

// C Original: RLAPI void ExportWaveAsCode(Wave wave, const char *fileName);         // Export wave sample data to code (.h)
// C.ExportWaveAsCode - Export wave sample data to code (.h)
fn C.ExportWaveAsCode(c_wave C.Wave, c_fileName charptr)           

// C Original: RLAPI void PlaySound(Sound sound);                                    // Play a sound
// C.PlaySound - Play a sound
fn C.PlaySound(c_sound C.Sound)                                    

// C Original: RLAPI void StopSound(Sound sound);                                    // Stop playing a sound
// C.StopSound - Stop playing a sound
fn C.StopSound(c_sound C.Sound)                                    

// C Original: RLAPI void PauseSound(Sound sound);                                   // Pause a sound
// C.PauseSound - Pause a sound
fn C.PauseSound(c_sound C.Sound)                                   

// C Original: RLAPI void ResumeSound(Sound sound);                                  // Resume a paused sound
// C.ResumeSound - Resume a paused sound
fn C.ResumeSound(c_sound C.Sound)                                  

// C Original: RLAPI void PlaySoundMulti(Sound sound);                               // Play a sound (using multichannel buffer pool)
// C.PlaySoundMulti - Play a sound (using multichannel buffer pool)
fn C.PlaySoundMulti(c_sound C.Sound)                               

// C Original: RLAPI void StopSoundMulti(void);                                      // Stop any sound playing (using multichannel buffer pool)
// C.StopSoundMulti - Stop any sound playing (using multichannel buffer pool)
fn C.StopSoundMulti()                                              

// C Original: RLAPI int GetSoundsPlaying(void);                                     // Get number of sounds playing in the multichannel
// C.GetSoundsPlaying - Get number of sounds playing in the multichannel
fn C.GetSoundsPlaying() int                                        

// C Original: RLAPI bool IsSoundPlaying(Sound sound);                               // Check if a sound is currently playing
// C.IsSoundPlaying - Check if a sound is currently playing
fn C.IsSoundPlaying(c_sound C.Sound) bool                          

// C Original: RLAPI void SetSoundVolume(Sound sound, float volume);                 // Set volume for a sound (1.0 is max level)
// C.SetSoundVolume - Set volume for a sound (1.0 is max level)
fn C.SetSoundVolume(c_sound C.Sound, c_volume f32)                 

// C Original: RLAPI void SetSoundPitch(Sound sound, float pitch);                   // Set pitch for a sound (1.0 is base level)
// C.SetSoundPitch - Set pitch for a sound (1.0 is base level)
fn C.SetSoundPitch(c_sound C.Sound, c_pitch f32)                   

// C Original: RLAPI void WaveFormat(Wave *wave, int sampleRate, int sampleSize, int channels);  // Convert wave data to desired format
// C.WaveFormat - Convert wave data to desired format
fn C.WaveFormat(c_wave &C.Wave , c_sampleRate int, c_sampleSize int, c_channels int)  

// C Original: RLAPI Wave WaveCopy(Wave wave);                                       // Copy a wave to a new wave
// C.WaveCopy - Copy a wave to a new wave
fn C.WaveCopy(c_wave C.Wave) C.Wave                                

// C Original: RLAPI void WaveCrop(Wave *wave, int initSample, int finalSample);     // Crop a wave to defined samples range
// C.WaveCrop - Crop a wave to defined samples range
fn C.WaveCrop(c_wave &C.Wave , c_initSample int, c_finalSample int)  

// C Original: RLAPI float *GetWaveData(Wave wave);                                  // Get samples data from wave as a floats array
// C.GetWaveData - Get samples data from wave as a floats array
fn C.GetWaveData(c_wave C.Wave) &f32                               

// C Original: RLAPI Music LoadMusicStream(const char *fileName);                    // Load music stream from file
// C.LoadMusicStream - Load music stream from file
fn C.LoadMusicStream(c_fileName charptr) C.Music                   

// C Original: RLAPI void UnloadMusicStream(Music music);                            // Unload music stream
// C.UnloadMusicStream - Unload music stream
fn C.UnloadMusicStream(c_music C.Music)                            

// C Original: RLAPI void PlayMusicStream(Music music);                              // Start music playing
// C.PlayMusicStream - Start music playing
fn C.PlayMusicStream(c_music C.Music)                              

// C Original: RLAPI void UpdateMusicStream(Music music);                            // Updates buffers for music streaming
// C.UpdateMusicStream - Updates buffers for music streaming
fn C.UpdateMusicStream(c_music C.Music)                            

// C Original: RLAPI void StopMusicStream(Music music);                              // Stop music playing
// C.StopMusicStream - Stop music playing
fn C.StopMusicStream(c_music C.Music)                              

// C Original: RLAPI void PauseMusicStream(Music music);                             // Pause music playing
// C.PauseMusicStream - Pause music playing
fn C.PauseMusicStream(c_music C.Music)                             

// C Original: RLAPI void ResumeMusicStream(Music music);                            // Resume playing paused music
// C.ResumeMusicStream - Resume playing paused music
fn C.ResumeMusicStream(c_music C.Music)                            

// C Original: RLAPI bool IsMusicPlaying(Music music);                               // Check if music is playing
// C.IsMusicPlaying - Check if music is playing
fn C.IsMusicPlaying(c_music C.Music) bool                          

// C Original: RLAPI void SetMusicVolume(Music music, float volume);                 // Set volume for music (1.0 is max level)
// C.SetMusicVolume - Set volume for music (1.0 is max level)
fn C.SetMusicVolume(c_music C.Music, c_volume f32)                 

// C Original: RLAPI void SetMusicPitch(Music music, float pitch);                   // Set pitch for a music (1.0 is base level)
// C.SetMusicPitch - Set pitch for a music (1.0 is base level)
fn C.SetMusicPitch(c_music C.Music, c_pitch f32)                   

// C Original: RLAPI void SetMusicLoopCount(Music music, int count);                 // Set music loop count (loop repeats)
// C.SetMusicLoopCount - Set music loop count (loop repeats)
fn C.SetMusicLoopCount(c_music C.Music, c_count int)               

// C Original: RLAPI float GetMusicTimeLength(Music music);                          // Get music time length (in seconds)
// C.GetMusicTimeLength - Get music time length (in seconds)
fn C.GetMusicTimeLength(c_music C.Music) f32                       

// C Original: RLAPI float GetMusicTimePlayed(Music music);                          // Get current music time played (in seconds)
// C.GetMusicTimePlayed - Get current music time played (in seconds)
fn C.GetMusicTimePlayed(c_music C.Music) f32                       

// C Original: RLAPI AudioStream InitAudioStream(unsigned int sampleRate, unsigned int sampleSize, unsigned int channels); // Init audio stream (to stream raw audio pcm data)
// C.InitAudioStream - Init audio stream (to stream raw audio pcm data)
fn C.InitAudioStream(c_sampleRate u32, c_sampleSize u32, c_channels u32) C.AudioStream 

// C Original: RLAPI void UpdateAudioStream(AudioStream stream, const void *data, int samplesCount); // Update audio stream buffers with data
// C.UpdateAudioStream - Update audio stream buffers with data
fn C.UpdateAudioStream(c_stream C.AudioStream, c_data voidptr, c_samplesCount int)  

// C Original: RLAPI void CloseAudioStream(AudioStream stream);                      // Close audio stream and free memory
// C.CloseAudioStream - Close audio stream and free memory
fn C.CloseAudioStream(c_stream C.AudioStream)                      

// C Original: RLAPI bool IsAudioStreamProcessed(AudioStream stream);                // Check if any audio stream buffers requires refill
// C.IsAudioStreamProcessed - Check if any audio stream buffers requires refill
fn C.IsAudioStreamProcessed(c_stream C.AudioStream) bool           

// C Original: RLAPI void PlayAudioStream(AudioStream stream);                       // Play audio stream
// C.PlayAudioStream - Play audio stream
fn C.PlayAudioStream(c_stream C.AudioStream)                       

// C Original: RLAPI void PauseAudioStream(AudioStream stream);                      // Pause audio stream
// C.PauseAudioStream - Pause audio stream
fn C.PauseAudioStream(c_stream C.AudioStream)                      

// C Original: RLAPI void ResumeAudioStream(AudioStream stream);                     // Resume audio stream
// C.ResumeAudioStream - Resume audio stream
fn C.ResumeAudioStream(c_stream C.AudioStream)                     

// C Original: RLAPI bool IsAudioStreamPlaying(AudioStream stream);                  // Check if audio stream is playing
// C.IsAudioStreamPlaying - Check if audio stream is playing
fn C.IsAudioStreamPlaying(c_stream C.AudioStream) bool             

// C Original: RLAPI void StopAudioStream(AudioStream stream);                       // Stop audio stream
// C.StopAudioStream - Stop audio stream
fn C.StopAudioStream(c_stream C.AudioStream)                       

// C Original: RLAPI void SetAudioStreamVolume(AudioStream stream, float volume);    // Set volume for audio stream (1.0 is max level)
// C.SetAudioStreamVolume - Set volume for audio stream (1.0 is max level)
fn C.SetAudioStreamVolume(c_stream C.AudioStream, c_volume f32)    

// C Original: RLAPI void SetAudioStreamPitch(AudioStream stream, float pitch);      // Set pitch for audio stream (1.0 is base level)
// C.SetAudioStreamPitch - Set pitch for audio stream (1.0 is base level)
fn C.SetAudioStreamPitch(c_stream C.AudioStream, c_pitch f32)      

// CType: C.Image | 55
// CType: C.Color | 108
// CType: C.Camera2D | 4
// CType: C.Camera | 6
// CType: C.BoundingBox | 7
// CType: C.AudioStream | 12
// CType: C.Camera * | 2
// CType: C.Camera3D | 1
// CType: C.CharInfo * | 2
// CType: C.Color * | 5
// CType: C.Font | 17
// CType: C.Vector2 | 65
// CType: C.RenderTexture2D | 4
// CType: C.Ray | 9
// CType: C.Matrix | 11
// CType: C.Image * | 27
// CType: C.Material * | 3
// CType: C.Material | 3
// CType: C.NPatchInfo | 1
// CType: C.Model | 12
// CType: C.Mesh | 24
// CType: C.Mesh * | 4
// CType: C.Model * | 1
// CType: C.ModelAnimation * | 2
// CType: C.ModelAnimation | 3
// CType: C.Music | 14
// CType: C.Rectangle | 31
// CType: C.RayHitInfo | 6
// CType: C.Texture2D | 35
// CType: C.Shader | 18
// CType: C.Sound | 14
// CType: C.TextureCubemap | 2
// CType: C.Texture2D * | 1
// CType: C.Vector3 | 42
// CType: C.Vector2 * | 3
// CType: C.Vector4 | 3
// CType: C.Vector3 * | 1
// CType: C.Vector4 * | 2
// CType: C.VrDeviceInfo | 1
// CType: C.Wave | 10
// CType: C.Wave * | 2
