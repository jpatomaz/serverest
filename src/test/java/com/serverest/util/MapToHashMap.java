package com.serverest.util;

import java.util.HashMap;
import java.util.Map;

public class MapToHashMap {

    public static HashMap<String, String> mapToHashMapString(Map<String, String> data) {
        return new HashMap<>(data);
    }

    public static HashMap<String, Object> mapToHashMap(Map<String, Object> data) {
        return new HashMap<String, Object>(data);
    }


}
