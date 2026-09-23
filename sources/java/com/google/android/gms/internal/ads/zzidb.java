package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzidb extends AbstractMap {

    /* renamed from: c, reason: collision with root package name */
    public Object[] f8949c;
    public int f;
    public Map g;
    public boolean h;
    public volatile zzida i;
    public Map j;

    public /* synthetic */ zzidb() {
        Map map = Collections.EMPTY_MAP;
        this.g = map;
        this.j = map;
    }

    public void a() {
        Map unmodifiableMap;
        Map unmodifiableMap2;
        if (!this.h) {
            if (this.g.isEmpty()) {
                unmodifiableMap = Collections.EMPTY_MAP;
            } else {
                unmodifiableMap = DesugarCollections.unmodifiableMap(this.g);
            }
            this.g = unmodifiableMap;
            if (this.j.isEmpty()) {
                unmodifiableMap2 = Collections.EMPTY_MAP;
            } else {
                unmodifiableMap2 = DesugarCollections.unmodifiableMap(this.j);
            }
            this.j = unmodifiableMap2;
            this.h = true;
        }
    }

    public final Map.Entry b(int i) {
        if (i < this.f) {
            return (zzicy) this.f8949c[i];
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    public final Set c() {
        if (this.g.isEmpty()) {
            return Collections.EMPTY_SET;
        }
        return this.g.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        g();
        if (this.f != 0) {
            this.f8949c = null;
            this.f = 0;
        }
        if (!this.g.isEmpty()) {
            this.g.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (f(comparable) < 0 && !this.g.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        g();
        int f = f(comparable);
        if (f >= 0) {
            return ((zzicy) this.f8949c[f]).setValue(obj);
        }
        g();
        if (this.f8949c == null) {
            this.f8949c = new Object[16];
        }
        int i = -(f + 1);
        if (i >= 16) {
            return h().put(comparable, obj);
        }
        if (this.f == 16) {
            zzicy zzicyVar = (zzicy) this.f8949c[15];
            this.f = 15;
            h().put(zzicyVar.f8945c, zzicyVar.f);
        }
        Object[] objArr = this.f8949c;
        int length = objArr.length;
        System.arraycopy(objArr, i, objArr, i + 1, 15 - i);
        this.f8949c[i] = new zzicy(this, comparable, obj);
        this.f++;
        return null;
    }

    public final Object e(int i) {
        g();
        Object[] objArr = this.f8949c;
        Object obj = ((zzicy) objArr[i]).f;
        System.arraycopy(objArr, i + 1, objArr, i, (this.f - i) - 1);
        this.f--;
        if (!this.g.isEmpty()) {
            Iterator it = h().entrySet().iterator();
            Object[] objArr2 = this.f8949c;
            int i2 = this.f;
            Map.Entry entry = (Map.Entry) it.next();
            objArr2[i2] = new zzicy(this, (Comparable) entry.getKey(), entry.getValue());
            this.f++;
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.i == null) {
            this.i = new zzida(this);
        }
        return this.i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzidb)) {
            return super.equals(obj);
        }
        zzidb zzidbVar = (zzidb) obj;
        int size = size();
        if (size != zzidbVar.size()) {
            return false;
        }
        int i = this.f;
        if (i == zzidbVar.f) {
            for (int i2 = 0; i2 < i; i2++) {
                if (!b(i2).equals(zzidbVar.b(i2))) {
                    return false;
                }
            }
            if (i == size) {
                return true;
            }
            return this.g.equals(zzidbVar.g);
        }
        return entrySet().equals(zzidbVar.entrySet());
    }

    public final int f(Comparable comparable) {
        int i = this.f;
        int i2 = i - 1;
        int i3 = 0;
        if (i2 >= 0) {
            int compareTo = comparable.compareTo(((zzicy) this.f8949c[i2]).f8945c);
            if (compareTo > 0) {
                return -(i + 1);
            }
            if (compareTo == 0) {
                return i2;
            }
        }
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            int compareTo2 = comparable.compareTo(((zzicy) this.f8949c[i4]).f8945c);
            if (compareTo2 < 0) {
                i2 = i4 - 1;
            } else if (compareTo2 > 0) {
                i3 = i4 + 1;
            } else {
                return i4;
            }
        }
        return -(i3 + 1);
    }

    public final void g() {
        if (!this.h) {
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int f = f(comparable);
        if (f >= 0) {
            return ((zzicy) this.f8949c[f]).f;
        }
        return this.g.get(comparable);
    }

    public final SortedMap h() {
        g();
        if (this.g.isEmpty() && !(this.g instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.g = treeMap;
            this.j = treeMap.descendingMap();
        }
        return (SortedMap) this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = this.f;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += this.f8949c[i3].hashCode();
        }
        if (this.g.size() > 0) {
            return this.g.hashCode() + i2;
        }
        return i2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int f = f(comparable);
        if (f >= 0) {
            return e(f);
        }
        if (this.g.isEmpty()) {
            return null;
        }
        return this.g.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.g.size() + this.f;
    }
}
