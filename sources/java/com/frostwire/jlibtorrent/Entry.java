package com.frostwire.jlibtorrent;

import java.util.AbstractList;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class Entry {

    /* loaded from: classes.dex */
    public static final class EntryList extends AbstractList<Entry> {
        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean add(Object obj) {
            throw null;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final void clear() {
            throw null;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static final class EntryMap extends AbstractMap<String, Entry> {
        @Override // java.util.AbstractMap, java.util.Map
        public final void clear() {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            obj.toString();
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Set entrySet() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            obj.toString();
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean isEmpty() {
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            new HashSet();
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object put(Object obj, Object obj2) {
            ((String) obj).toString();
            throw null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            throw null;
        }
    }

    public final String toString() {
        throw null;
    }
}
