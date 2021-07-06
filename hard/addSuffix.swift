func add_suffix(_ suffix: String) -> (String) -> String {
    return {$0 + suffix}
}

let add_ly = add_suffix("ly")
add_ly("hopeless") == "hopelessly"
add_ly("total") == "totally"

let add_less = add_suffix("less")
add_less("fear") == "fearless"
add_less("ruth") == "ruthless"
