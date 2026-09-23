package com.bumptech.glide.load.engine.bitmap_recycle;

import android.util.Log;
import com.bumptech.glide.util.Preconditions;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class LruArrayPool implements ArrayPool {

    /* renamed from: a, reason: collision with root package name */
    public final GroupedLinkedMap f2240a = new GroupedLinkedMap();
    public final KeyPool b = new BaseKeyPool();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f2241c = new HashMap();
    public final HashMap d = new HashMap();
    public final int e;
    public int f;

    /* loaded from: classes.dex */
    public static final class Key implements Poolable {

        /* renamed from: a, reason: collision with root package name */
        public final KeyPool f2242a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public Class f2243c;

        public Key(KeyPool keyPool) {
            this.f2242a = keyPool;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public final void a() {
            this.f2242a.c(this);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (this.b == key.b && this.f2243c == key.f2243c) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i;
            int i2 = this.b * 31;
            Class cls = this.f2243c;
            if (cls != null) {
                i = cls.hashCode();
            } else {
                i = 0;
            }
            return i2 + i;
        }

        public final String toString() {
            return "Key{size=" + this.b + "array=" + this.f2243c + '}';
        }
    }

    /* loaded from: classes.dex */
    public static final class KeyPool extends BaseKeyPool<Key> {
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool
        public final Poolable a() {
            return new Key(this);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool$KeyPool, com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool] */
    public LruArrayPool(int i) {
        this.e = i;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public final synchronized void a(int i) {
        try {
            if (i >= 40) {
                b();
            } else if (i >= 20 || i == 15) {
                g(this.e / 2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public final synchronized void b() {
        g(0);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public final synchronized void c(Object obj) {
        Class<?> cls = obj.getClass();
        ArrayAdapterInterface h = h(cls);
        int b = h.b(obj);
        int a2 = h.a() * b;
        if (a2 <= this.e / 2) {
            Key key = (Key) this.b.b();
            key.b = b;
            key.f2243c = cls;
            this.f2240a.b(key, obj);
            NavigableMap j = j(cls);
            Integer num = (Integer) j.get(Integer.valueOf(key.b));
            Integer valueOf = Integer.valueOf(key.b);
            int i = 1;
            if (num != null) {
                i = 1 + num.intValue();
            }
            j.put(valueOf, Integer.valueOf(i));
            this.f += a2;
            g(this.e);
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public final synchronized Object d(int i, Class cls) {
        Key key;
        int i2;
        try {
            Integer num = (Integer) j(cls).ceilingKey(Integer.valueOf(i));
            if (num == null || ((i2 = this.f) != 0 && this.e / i2 < 2 && num.intValue() > i * 8)) {
                Key key2 = (Key) this.b.b();
                key2.b = i;
                key2.f2243c = cls;
                key = key2;
            }
            KeyPool keyPool = this.b;
            int intValue = num.intValue();
            key = (Key) keyPool.b();
            key.b = intValue;
            key.f2243c = cls;
        } catch (Throwable th) {
            throw th;
        }
        return i(key, cls);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public final synchronized Object e() {
        Key key;
        key = (Key) this.b.b();
        key.b = 8;
        key.f2243c = byte[].class;
        return i(key, byte[].class);
    }

    public final void f(int i, Class cls) {
        NavigableMap j = j(cls);
        Integer num = (Integer) j.get(Integer.valueOf(i));
        if (num != null) {
            if (num.intValue() == 1) {
                j.remove(Integer.valueOf(i));
                return;
            } else {
                j.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
    }

    public final void g(int i) {
        while (this.f > i) {
            Object c2 = this.f2240a.c();
            Preconditions.b(c2);
            ArrayAdapterInterface h = h(c2.getClass());
            this.f -= h.b(c2) * h.a();
            f(h.b(c2), c2.getClass());
            if (Log.isLoggable(h.getTag(), 2)) {
                Log.v(h.getTag(), "evicted: " + h.b(c2));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface, java.lang.Object] */
    public final ArrayAdapterInterface h(Class cls) {
        ?? r1;
        HashMap hashMap = this.d;
        ArrayAdapterInterface arrayAdapterInterface = (ArrayAdapterInterface) hashMap.get(cls);
        if (arrayAdapterInterface == null) {
            if (cls.equals(int[].class)) {
                r1 = new Object();
            } else if (cls.equals(byte[].class)) {
                r1 = new Object();
            } else {
                throw new IllegalArgumentException("No array pool found for: ".concat(cls.getSimpleName()));
            }
            hashMap.put(cls, r1);
            return r1;
        }
        return arrayAdapterInterface;
    }

    public final Object i(Key key, Class cls) {
        ArrayAdapterInterface h = h(cls);
        Object a2 = this.f2240a.a(key);
        if (a2 != null) {
            this.f -= h.b(a2) * h.a();
            f(h.b(a2), cls);
        }
        if (a2 == null) {
            if (Log.isLoggable(h.getTag(), 2)) {
                Log.v(h.getTag(), "Allocated " + key.b + " bytes");
            }
            return h.newArray(key.b);
        }
        return a2;
    }

    public final NavigableMap j(Class cls) {
        HashMap hashMap = this.f2241c;
        NavigableMap navigableMap = (NavigableMap) hashMap.get(cls);
        if (navigableMap == null) {
            TreeMap treeMap = new TreeMap();
            hashMap.put(cls, treeMap);
            return treeMap;
        }
        return navigableMap;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool
    public final void put(Object obj) {
        c(obj);
    }
}
