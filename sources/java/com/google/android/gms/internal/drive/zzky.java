package com.google.android.gms.internal.drive;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class zzky extends zziw<String> implements zzkz, RandomAccess {
    public final ArrayList f;

    static {
        new zzky(10).f10199c = false;
    }

    public zzky(int i) {
        this(new ArrayList(i));
    }

    @Override // com.google.android.gms.internal.drive.zziw, com.google.android.gms.internal.drive.zzkp
    public final boolean W() {
        return this.f10199c;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        a();
        this.f.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f.size(), collection);
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        a();
        this.f.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        String c2;
        ArrayList arrayList = this.f;
        Object obj = arrayList.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzjc) {
            zzjc zzjcVar = (zzjc) obj;
            Charset charset = zzkm.f10222a;
            if (zzjcVar.size() == 0) {
                c2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } else {
                c2 = zzjcVar.c(charset);
            }
            if (zzjcVar.i()) {
                arrayList.set(i, c2);
            }
            return c2;
        }
        byte[] bArr = (byte[]) obj;
        String str = new String(bArr, zzkm.f10222a);
        if (zznf.f10262a.b(bArr, 0, bArr.length) == 0) {
            arrayList.set(i, str);
        }
        return str;
    }

    @Override // com.google.android.gms.internal.drive.zzkp
    public final zzkp l(int i) {
        ArrayList arrayList = this.f;
        if (i >= arrayList.size()) {
            ArrayList arrayList2 = new ArrayList(i);
            arrayList2.addAll(arrayList);
            return new zzky(arrayList2);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.drive.zzkz
    public final List n() {
        return DesugarCollections.unmodifiableList(this.f);
    }

    @Override // com.google.android.gms.internal.drive.zzkz
    public final zzkz o() {
        if (this.f10199c) {
            return new zzna(this);
        }
        return this;
    }

    @Override // com.google.android.gms.internal.drive.zzkz
    public final Object q0(int i) {
        return this.f.get(i);
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        a();
        Object remove = this.f.remove(i);
        ((AbstractList) this).modCount++;
        if (remove instanceof String) {
            return (String) remove;
        }
        if (remove instanceof zzjc) {
            zzjc zzjcVar = (zzjc) remove;
            Charset charset = zzkm.f10222a;
            if (zzjcVar.size() == 0) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return zzjcVar.c(charset);
        }
        return new String((byte[]) remove, zzkm.f10222a);
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        a();
        Object obj2 = this.f.set(i, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (obj2 instanceof zzjc) {
            zzjc zzjcVar = (zzjc) obj2;
            Charset charset = zzkm.f10222a;
            if (zzjcVar.size() == 0) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return zzjcVar.c(charset);
        }
        return new String((byte[]) obj2, zzkm.f10222a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f.size();
    }

    public zzky(ArrayList arrayList) {
        this.f = arrayList;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        a();
        if (collection instanceof zzkz) {
            collection = ((zzkz) collection).n();
        }
        boolean addAll = this.f.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }
}
