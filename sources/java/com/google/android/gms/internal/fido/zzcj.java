package com.google.android.gms.internal.fido;

import android.support.v4.media.a;
import j$.util.Map;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class zzcj extends zzcd implements NavigableMap, Map {
    public static final zzcj j;
    public final transient zzcv g;
    public final transient zzcc h;
    public final transient zzcj i;

    static {
        zzcv x = zzck.x(zzcq.f10288c);
        zzdd zzddVar = zzcc.f;
        j = new zzcj(x, zzct.i, null);
    }

    public zzcj(zzcv zzcvVar, zzcc zzccVar, zzcj zzcjVar) {
        this.g = zzcvVar;
        this.h = zzccVar;
        this.i = zzcjVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzcj e(TreeMap treeMap) {
        boolean equals;
        Comparator comparator = treeMap.comparator();
        int i = 1;
        zzcq zzcqVar = zzcq.f10288c;
        if (comparator == null) {
            equals = true;
        } else {
            equals = zzcqVar.equals(comparator);
        }
        Set entrySet = treeMap.entrySet();
        if (entrySet == null) {
            Iterator it = entrySet.iterator();
            ArrayList arrayList = new ArrayList();
            it.getClass();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            entrySet = arrayList;
        }
        Map.Entry[] entryArr = (Map.Entry[]) entrySet.toArray(zzcd.f);
        int length = entryArr.length;
        if (length != 0) {
            int i2 = 0;
            if (length != 1) {
                Object[] objArr = new Object[length];
                Object[] objArr2 = new Object[length];
                if (equals) {
                    while (i2 < length) {
                        Map.Entry entry = entryArr[i2];
                        Objects.requireNonNull(entry);
                        Object key = entry.getKey();
                        Object value = entry.getValue();
                        zzbv.a(key, value);
                        objArr[i2] = key;
                        objArr2[i2] = value;
                        i2++;
                    }
                } else {
                    Arrays.sort(entryArr, 0, length, new Comparator() { // from class: com.google.android.gms.internal.fido.zzcg

                        /* renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ Comparator f10286c = zzcq.f10288c;

                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            Map.Entry entry2 = (Map.Entry) obj;
                            Map.Entry entry3 = (Map.Entry) obj2;
                            Objects.requireNonNull(entry2);
                            Objects.requireNonNull(entry3);
                            return this.f10286c.compare(entry2.getKey(), entry3.getKey());
                        }
                    });
                    Map.Entry entry2 = entryArr[0];
                    Objects.requireNonNull(entry2);
                    Object key2 = entry2.getKey();
                    objArr[0] = key2;
                    Object value2 = entry2.getValue();
                    objArr2[0] = value2;
                    zzbv.a(objArr[0], value2);
                    while (i < length) {
                        Map.Entry entry3 = entryArr[i - 1];
                        Objects.requireNonNull(entry3);
                        Map.Entry entry4 = entryArr[i];
                        Objects.requireNonNull(entry4);
                        Object key3 = entry4.getKey();
                        Object value3 = entry4.getValue();
                        zzbv.a(key3, value3);
                        objArr[i] = key3;
                        objArr2[i] = value3;
                        if (zzcqVar.compare(key2, key3) != 0) {
                            i++;
                            key2 = key3;
                        } else {
                            throw new IllegalArgumentException(a.m("Multiple entries with same key: ", String.valueOf(entry3), " and ", String.valueOf(entry4)));
                        }
                    }
                }
                return new zzcj(new zzcv(zzcc.q(length, objArr), zzcqVar), zzcc.q(length, objArr2), null);
            }
            Map.Entry entry5 = entryArr[0];
            Objects.requireNonNull(entry5);
            Object key4 = entry5.getKey();
            Object value4 = entry5.getValue();
            Object[] objArr3 = {key4};
            for (int i3 = 0; i3 < 1; i3++) {
                if (objArr3[i3] == null) {
                    throw new NullPointerException(a.e(i3, "at index "));
                }
            }
            zzcv zzcvVar = new zzcv(zzcc.q(1, objArr3), zzcqVar);
            Object[] objArr4 = {value4};
            while (i2 < 1) {
                if (objArr4[i2] != null) {
                    i2++;
                } else {
                    throw new NullPointerException(a.e(i2, "at index "));
                }
            }
            return new zzcj(zzcvVar, zzcc.q(1, objArr4), null);
        }
        return f(zzcqVar);
    }

    public static zzcj f(Comparator comparator) {
        if (zzcq.f10288c.equals(comparator)) {
            return j;
        }
        zzcv x = zzck.x(comparator);
        zzdd zzddVar = zzcc.f;
        return new zzcj(x, zzct.i, null);
    }

    @Override // com.google.android.gms.internal.fido.zzcd
    /* renamed from: a */
    public final zzby values() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.fido.zzcd
    public final zzcf b() {
        if (isEmpty()) {
            return zzcu.n;
        }
        return new zzci(this);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry ceilingEntry(Object obj) {
        return tailMap(obj, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public final Object ceilingKey(Object obj) {
        Map.Entry ceilingEntry = ceilingEntry(obj);
        if (ceilingEntry == null) {
            return null;
        }
        return ceilingEntry.getKey();
    }

    @Override // java.util.SortedMap
    public final Comparator comparator() {
        return this.g.h;
    }

    @Override // com.google.android.gms.internal.fido.zzcd
    /* renamed from: d */
    public final /* synthetic */ zzcf keySet() {
        return this.g;
    }

    @Override // java.util.NavigableMap
    public final NavigableSet descendingKeySet() {
        zzcv zzcvVar = this.g;
        zzck zzckVar = zzcvVar.i;
        if (zzckVar == null) {
            zzck t = zzcvVar.t();
            zzcvVar.i = t;
            t.i = zzcvVar;
            return t;
        }
        return zzckVar;
    }

    @Override // java.util.NavigableMap
    public final NavigableMap descendingMap() {
        zzcs zzbwVar;
        zzcj zzcjVar = this.i;
        if (zzcjVar == null) {
            boolean isEmpty = isEmpty();
            zzcv zzcvVar = this.g;
            if (isEmpty) {
                Comparator comparator = zzcvVar.h;
                if (comparator instanceof zzcs) {
                    zzbwVar = (zzcs) comparator;
                } else {
                    zzbwVar = new zzbw(comparator);
                }
                return f(zzbwVar.a());
            }
            zzck zzckVar = zzcvVar.i;
            if (zzckVar == null) {
                zzckVar = zzcvVar.t();
                zzcvVar.i = zzckVar;
                zzckVar.i = zzcvVar;
            }
            zzcjVar = new zzcj((zzcv) zzckVar, this.h.m(), this);
        }
        return zzcjVar;
    }

    @Override // com.google.android.gms.internal.fido.zzcd, java.util.Map
    public final /* bridge */ /* synthetic */ Set entrySet() {
        return entrySet();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) entrySet().r().get(0);
    }

    @Override // java.util.SortedMap
    public final Object firstKey() {
        return this.g.first();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry floorEntry(Object obj) {
        return headMap(obj, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public final Object floorKey(Object obj) {
        Map.Entry floorEntry = floorEntry(obj);
        if (floorEntry == null) {
            return null;
        }
        return floorEntry.getKey();
    }

    @Override // java.util.NavigableMap
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public final zzcj headMap(Object obj, boolean z) {
        obj.getClass();
        return j(0, this.g.B(obj, z));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000f, code lost:
    
        if (r4 < 0) goto L4;
     */
    @Override // com.google.android.gms.internal.fido.zzcd, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r4) {
        /*
            r3 = this;
            com.google.android.gms.internal.fido.zzcv r0 = r3.g
            r1 = -1
            if (r4 != 0) goto L7
        L5:
            r4 = r1
            goto L12
        L7:
            com.google.android.gms.internal.fido.zzcc r2 = r0.j     // Catch: java.lang.ClassCastException -> L5
            java.util.Comparator r0 = r0.h     // Catch: java.lang.ClassCastException -> L5
            int r4 = java.util.Collections.binarySearch(r2, r4, r0)     // Catch: java.lang.ClassCastException -> L5
            if (r4 >= 0) goto L12
            goto L5
        L12:
            if (r4 != r1) goto L16
            r4 = 0
            return r4
        L16:
            com.google.android.gms.internal.fido.zzcc r0 = r3.h
            java.lang.Object r4 = r0.get(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.fido.zzcj.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.NavigableMap
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final zzcj subMap(Object obj, boolean z, Object obj2, boolean z2) {
        obj.getClass();
        obj2.getClass();
        if (this.g.h.compare(obj, obj2) <= 0) {
            return headMap(obj2, z2).tailMap(obj, z);
        }
        throw new IllegalArgumentException(zzbo.a("expected fromKey <= toKey but %s > %s", obj, obj2));
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* synthetic */ SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public final Map.Entry higherEntry(Object obj) {
        return tailMap(obj, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public final Object higherKey(Object obj) {
        Map.Entry higherEntry = higherEntry(obj);
        if (higherEntry == null) {
            return null;
        }
        return higherEntry.getKey();
    }

    @Override // java.util.NavigableMap
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public final zzcj tailMap(Object obj, boolean z) {
        obj.getClass();
        return j(this.g.C(obj, z), this.h.size());
    }

    public final zzcj j(int i, int i2) {
        zzcc zzccVar = this.h;
        if (i == 0) {
            if (i2 != zzccVar.size()) {
                i = 0;
            } else {
                return this;
            }
        }
        zzcv zzcvVar = this.g;
        if (i == i2) {
            return f(zzcvVar.h);
        }
        return new zzcj(zzcvVar.D(i, i2), zzccVar.subList(i, i2), null);
    }

    @Override // com.google.android.gms.internal.fido.zzcd, java.util.Map
    public final /* synthetic */ Set keySet() {
        return this.g;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return (Map.Entry) entrySet().r().get(this.h.size() - 1);
    }

    @Override // java.util.SortedMap
    public final Object lastKey() {
        return this.g.last();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry lowerEntry(Object obj) {
        return headMap(obj, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public final Object lowerKey(Object obj) {
        Map.Entry lowerEntry = lowerEntry(obj);
        if (lowerEntry == null) {
            return null;
        }
        return lowerEntry.getKey();
    }

    @Override // java.util.NavigableMap
    public final /* synthetic */ NavigableSet navigableKeySet() {
        return this.g;
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    public final Map.Entry pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final int size() {
        return this.h.size();
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* bridge */ /* synthetic */ SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public final /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }

    @Override // com.google.android.gms.internal.fido.zzcd, java.util.Map
    public final /* synthetic */ Collection values() {
        return this.h;
    }
}
