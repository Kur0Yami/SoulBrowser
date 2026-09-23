package com.google.android.gms.internal.measurement;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class zzkq extends zzim implements RandomAccess, zzkr {
    public final ArrayList f;

    static {
        new zzkq(10).f10372c = false;
    }

    public zzkq(int i) {
        this.f = new ArrayList(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Object obj) {
        a();
        this.f.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        a();
        if (collection instanceof zzkr) {
            collection = ((zzkr) collection).zzh();
        }
        boolean addAll = this.f.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        a();
        this.f.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        String str;
        ArrayList arrayList = this.f;
        Object obj = arrayList.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzjb) {
            zzjb zzjbVar = (zzjb) obj;
            Charset charset = zzkk.f10385a;
            if (zzjbVar.g() == 0) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } else {
                str = zzjbVar.m(charset);
            }
            if (zzjbVar.p()) {
                arrayList.set(i, str);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            str = new String(bArr, zzkk.f10385a);
            if (zzna.f10412a.a(bArr, bArr.length) == 0) {
                arrayList.set(i, str);
            }
        }
        return str;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        a();
        Object remove = this.f.remove(i);
        ((AbstractList) this).modCount++;
        if (remove instanceof String) {
            return (String) remove;
        }
        if (remove instanceof zzjb) {
            zzjb zzjbVar = (zzjb) remove;
            Charset charset = zzkk.f10385a;
            if (zzjbVar.g() == 0) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return zzjbVar.m(charset);
        }
        return new String((byte[]) remove, zzkk.f10385a);
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        a();
        Object obj2 = this.f.set(i, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (obj2 instanceof zzjb) {
            zzjb zzjbVar = (zzjb) obj2;
            Charset charset = zzkk.f10385a;
            if (zzjbVar.g() == 0) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return zzjbVar.m(charset);
        }
        return new String((byte[]) obj2, zzkk.f10385a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzkr
    public final List zzh() {
        return DesugarCollections.unmodifiableList(this.f);
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f.size(), collection);
    }
}
