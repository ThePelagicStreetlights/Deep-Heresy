use gdnative::prelude::*;

mod hello_world;
// Function that registers all exposed classes to Godot
fn init(handle: InitHandle) {
    handle.add_class::<hello_world::HelloWorld>();
}

// Macro that creates the entry-points of the dynamic library.
godot_init!(init);
