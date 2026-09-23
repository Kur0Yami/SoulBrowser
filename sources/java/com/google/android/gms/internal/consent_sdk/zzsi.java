package com.google.android.gms.internal.consent_sdk;

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
public class zzsi extends AbstractMap {
    public static final /* synthetic */ int k = 0;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f10113c;
    public int f;
    public Map g;
    public boolean h;
    public volatile zzsg i;
    public Map j;

    public /* synthetic */ zzsi() {
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

    public final Set b() {
        if (this.g.isEmpty()) {
            return Collections.EMPTY_SET;
        }
        return this.g.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        h();
        int e = e(comparable);
        if (e >= 0) {
            return ((zzse) this.f10113c[e]).setValue(obj);
        }
        h();
        if (this.f10113c == null) {
            this.f10113c = new Object[16];
        }
        int i = -(e + 1);
        if (i >= 16) {
            return g().put(comparable, obj);
        }
        if (this.f == 16) {
            zzse zzseVar = (zzse) this.f10113c[15];
            this.f = 15;
            g().put(zzseVar.f10110c, zzseVar.f);
        }
        Object[] objArr = this.f10113c;
        int length = objArr.length;
        System.arraycopy(objArr, i, objArr, i + 1, 15 - i);
        this.f10113c[i] = new zzse(this, comparable, obj);
        this.f++;
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        h();
        if (this.f != 0) {
            this.f10113c = null;
            this.f = 0;
        }
        if (!this.g.isEmpty()) {
            this.g.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (e(comparable) < 0 && !this.g.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    public final Map.Entry d(int i) {
        if (i < this.f) {
            return (zzse) this.f10113c[i];
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    public final int e(Comparable comparable) {
        int i = this.f;
        int i2 = i - 1;
        int i3 = 0;
        if (i2 >= 0) {
            int compareTo = comparable.compareTo(((zzse) this.f10113c[i2]).f10110c);
            if (compareTo > 0) {
                return -(i + 1);
            }
            if (compareTo == 0) {
                return i2;
            }
        }
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            int compareTo2 = comparable.compareTo(((zzse) this.f10113c[i4]).f10110c);
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

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.i == null) {
            this.i = new zzsg(this);
        }
        return this.i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzsi)) {
            return super.equals(obj);
        }
        zzsi zzsiVar = (zzsi) obj;
        int size = size();
        if (size != zzsiVar.size()) {
            return false;
        }
        int i = this.f;
        if (i == zzsiVar.f) {
            for (int i2 = 0; i2 < i; i2++) {
                if (!d(i2).equals(zzsiVar.d(i2))) {
                    return false;
                }
            }
            if (i == size) {
                return true;
            }
            return this.g.equals(zzsiVar.g);
        }
        return entrySet().equals(zzsiVar.entrySet());
    }

    public final Object f(int i) {
        h();
        Object[] objArr = this.f10113c;
        Object obj = ((zzse) objArr[i]).f;
        System.arraycopy(objArr, i + 1, objArr, i, (this.f - i) - 1);
        this.f--;
        if (!this.g.isEmpty()) {
            Iterator it = g().entrySet().iterator();
            Object[] objArr2 = this.f10113c;
            int i2 = this.f;
            Map.Entry entry = (Map.Entry) it.next();
            objArr2[i2] = new zzse(this, (Comparable) entry.getKey(), entry.getValue());
            this.f++;
            it.remove();
        }
        return obj;
    }

    public final SortedMap g() {
        h();
        if (this.g.isEmpty() && !(this.g instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.g = treeMap;
            this.j = treeMap.descendingMap();
        }
        return (SortedMap) this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int e = e(comparable);
        if (e >= 0) {
            return ((zzse) this.f10113c[e]).f;
        }
        return this.g.get(comparable);
    }

    public final void h() {
        if (!this.h) {
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = this.f;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += this.f10113c[i3].hashCode();
        }
        if (this.g.size() > 0) {
            return this.g.hashCode() + i2;
        }
        return i2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        h();
        Comparable comparable = (Comparable) obj;
        int e = e(comparable);
        if (e >= 0) {
            return f(e);
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
