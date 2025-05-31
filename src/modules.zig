pub const Server = @import("modules/Server.zig");
pub const Client = @import("modules/Client.zig");
pub const Northstar = @import("modules/Northstar.zig");

/// Global instance of the server address collection.
/// Initialized after server.dll is loaded.
pub var server: Server = undefined;

/// Global instance of the client address collection.
/// Initialized after client.dll is loaded.
pub var client: Client = undefined;

/// Global instance of northstar interfaces & wrappers.
/// Initialized in the plugin init calback.
///
/// It is safe to use this global inside the init callback of your plugin.
pub var northstar: Northstar = undefined;

pub fn initServer(server_module: *abi.Module) void {
    server = .init(server_module);
}

pub fn initClient(client_module: *abi.Module) void {
    client = .init(client_module);
}

pub fn initNorthstar(ns_module: *abi.Module) void {
    northstar = .init(ns_module);
}

const abi = @import("abi.zig");
