package org.tukaani.xz;

import java.lang.ref.Reference;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class BasicArrayCache extends ArrayCache {

    /* loaded from: classes4.dex */
    public static class CacheMap<T> extends LinkedHashMap<Integer, CyclicStack<Reference<T>>> {
        public CacheMap() {
            super(64, 0.75f, true);
        }

        @Override // java.util.LinkedHashMap
        public final boolean removeEldestEntry(Map.Entry entry) {
            if (size() > 32) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes4.dex */
    public static class CyclicStack<T> {
    }

    /* loaded from: classes4.dex */
    public static final class LazyHolder {
        static {
            new CacheMap();
            new CacheMap();
        }
    }
}
