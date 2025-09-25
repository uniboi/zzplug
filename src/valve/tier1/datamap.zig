/// datamap_t
pub const DataMap = extern struct {
    /// dataDesc
    data_description: *anyopaque,

    /// dataNumFields
    data_fields_count: i32,

    /// dataClassName
    data_class_name: [*:0]const u8,

    paced_size: u64,

    /// baseMap
    base: *anyopaque,

    /// fieldtype_t
    pub const FieldType = enum(u32) {};
};
