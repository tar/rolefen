package com.mycelium.rolefen.utils;

import java.util.*;

import com.mycelium.rolefen.model.entities.Entity;

public class EntityUtils {
    public static <S extends Entity> Map<Long, S> asMap(Collection<S> col) {
        Map<Long, S> result = new TreeMap<Long, S>();
        for (S s: col) {
            result.put(s.getId(), s);
        }
        return result;
    }

    public static List<Long> extractIds(Collection<? extends Entity> entities) {
        List<Long> result = new ArrayList<Long>(entities.size());
        for (Entity entity : entities) {
            result.add(entity.getId());
        }
        return result;
    }
}
