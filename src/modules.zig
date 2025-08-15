pub const Server = @import("modules/Server.zig");
pub const Client = @import("modules/Client.zig");
pub const Northstar = @import("modules/Northstar.zig");
pub const Tier0 = @import("modules/Tier0.zig");
pub const Engine = @import("modules/Engine.zig");
const interfaces = @import("interfaces.zig");

/// Global instance of the server address collection.
/// Initialized after server.dll is loaded.
///
/// server.dll handles most things related to game logic & game servers
pub var server: ?Server = null;

/// Global instance of the client address collection.
/// Initialized after client.dll is loaded.
///
/// client.dll deals with everything that's not on the server. For example UI and client scripts
pub var client: ?Client = null;

/// Global instance of northstar interfaces & wrappers.
/// Initialized in the plugin init calback.
///
/// It is safe to use this global inside the init callback of your plugin.
pub var northstar: ?Northstar = null;

/// Global instance of the tier0 address collection
///
/// tier0 provides a low level standard library for memory management etc.
pub var tier0: ?Tier0 = null;

pub var engine: ?Engine = null;

const abi = @import("abi.zig");
