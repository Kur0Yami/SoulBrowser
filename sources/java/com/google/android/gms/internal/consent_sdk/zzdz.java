package com.google.android.gms.internal.consent_sdk;

import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdz extends zzdw {
    public static final Object[] l;
    public static final zzdz m;
    public final transient Object[] g;
    public final transient int h;
    public final transient Object[] i;
    public final transient int j;
    public final transient int k;

    static {
        Object[] objArr = new Object[0];
        l = objArr;
        m = new zzdz(objArr, objArr, 0, 0, 0);
    }

    public zzdz(Object[] objArr, Object[] objArr2, int i, int i2, int i3) {
        this.g = objArr;
        this.h = i;
        this.i = objArr2;
        this.j = i2;
        this.k = i3;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    public final void a(Object[] objArr) {
        System.arraycopy(this.g, 0, objArr, 0, this.k);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    public final int c() {
        return this.k;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.i;
            if (objArr.length != 0) {
                int rotateLeft = (int) (Integer.rotateLeft((int) (obj.hashCode() * (-862048943)), 15) * 461845907);
                while (true) {
                    int i = rotateLeft & this.j;
                    Object obj2 = objArr[i];
                    if (obj2 != null) {
                        if (obj2.equals(obj)) {
                            return true;
                        }
                        rotateLeft = i + 1;
                    } else {
                        return false;
                    }
                }
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    public final int g() {
        return 0;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdw, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    /* renamed from: i */
    public final zzeb iterator() {
        zzdv zzdvVar = this.f;
        if (zzdvVar == null) {
            zzec zzecVar = zzdv.f;
            int i = this.k;
            if (i == 0) {
                zzdvVar = zzdy.i;
            } else {
                zzdvVar = new zzdy(this.g, i);
            }
            this.f = zzdvVar;
        }
        return zzdvVar.listIterator(0);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdw, com.google.android.gms.internal.consent_sdk.zzds, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzdv zzdvVar = this.f;
        if (zzdvVar == null) {
            zzec zzecVar = zzdv.f;
            int i = this.k;
            if (i == 0) {
                zzdvVar = zzdy.i;
            } else {
                zzdvVar = new zzdy(this.g, i);
            }
            this.f = zzdvVar;
        }
        return zzdvVar.listIterator(0);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzds
    public final Object[] k() {
        return this.g;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.k;
    }
}
