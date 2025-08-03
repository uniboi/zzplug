pub const Server = @import("modules/Server.zig");
pub const Client = @import("modules/Client.zig");
pub const Northstar = @import("modules/Northstar.zig");
pub const Tier0 = @import("modules/Tier0.zig");
const interfaces = @import("interfaces.zig");

/// Global instance of the server address collection.
/// Initialized after server.dll is loaded.
///
/// server.dll handles most things related to game logic & game servers
pub var server: Server = undefined;

/// Global instance of the client address collection.
/// Initialized after client.dll is loaded.
///
/// client.dll deals with everything that's not on the server. For example UI and client scripts
pub var client: Client = undefined;

/// Global instance of northstar interfaces & wrappers.
/// Initialized in the plugin init calback.
///
/// It is safe to use this global inside the init callback of your plugin.
pub var northstar: Northstar = undefined;

/// Global instance of the tier0 address collection
///
/// tier0 provides a low level standard library for memory management etc.
pub var tier0: Tier0 = undefined;

pub fn initServer(server_module: *abi.Module) void {
    server = .init(server_module);
}

pub fn initClient(client_module: *abi.Module) void {
    client = .init(client_module);
}

pub fn initNorthstar(ns_module: *abi.Module, id: *const interfaces.PluginCallbacks.InitData) void {
    northstar = .init(ns_module, id);
}

pub fn initTier0(tier0_module: *abi.Module) void {
    tier0 = .init(tier0_module);
}

const abi = @import("abi.zig");
