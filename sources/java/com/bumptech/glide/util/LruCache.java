package com.bumptech.glide.util;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.Resource;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class LruCache<T, Y> {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f2491a = new LinkedHashMap(100, 0.75f, true);
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public long f2492c;

    /* loaded from: classes.dex */
    public static final class Entry<Y> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f2493a;
        public final int b;

        public Entry(int i, Object obj) {
            this.f2493a = obj;
            this.b = i;
        }
    }

    public LruCache(long j) {
        this.b = j;
    }

    public final void b() {
        j(0L);
    }

    public /* bridge */ /* synthetic */ Resource d(Key key, Resource resource) {
        return (Resource) i(key, resource);
    }

    public Resource e(Key key) {
        Object obj;
        synchronized (this) {
            Entry entry = (Entry) this.f2491a.remove(key);
            if (entry == null) {
                obj = null;
            } else {
                this.f2492c -= entry.b;
                obj = entry.f2493a;
            }
        }
        return (Resource) obj;
    }

    public final synchronized Object f(Object obj) {
        Object obj2;
        Entry entry = (Entry) this.f2491a.get(obj);
        if (entry != null) {
            obj2 = entry.f2493a;
        } else {
            obj2 = null;
        }
        return obj2;
    }

    public int g(Object obj) {
        return 1;
    }

    public void h(Object obj, Object obj2) {
    }

    public final synchronized Object i(Object obj, Object obj2) {
        Entry entry;
        int g = g(obj2);
        long j = g;
        Object obj3 = null;
        if (j >= this.b) {
            h(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.f2492c += j;
        }
        LinkedHashMap linkedHashMap = this.f2491a;
        if (obj2 == null) {
            entry = null;
        } else {
            entry = new Entry(g, obj2);
        }
        Entry entry2 = (Entry) linkedHashMap.put(obj, entry);
        if (entry2 != null) {
            this.f2492c -= entry2.b;
            if (!entry2.f2493a.equals(obj2)) {
                h(obj, entry2.f2493a);
            }
        }
        j(this.b);
        if (entry2 != null) {
            obj3 = entry2.f2493a;
        }
        return obj3;
    }

    public final synchronized void j(long j) {
        while (this.f2492c > j) {
            Iterator it = this.f2491a.entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            Entry entry2 = (Entry) entry.getValue();
            this.f2492c -= entry2.b;
            Object key = entry.getKey();
            it.remove();
            h(key, entry2.f2493a);
        }
    }
}
