package com.google.android.gms.internal.fido;

import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzcu extends zzcf {
    public static final Object[] m;
    public static final zzcu n;
    public final transient Object[] h;
    public final transient int i;
    public final transient Object[] j;
    public final transient int k;
    public final transient int l;

    static {
        Object[] objArr = new Object[0];
        m = objArr;
        n = new zzcu(objArr, objArr, 0, 0, 0);
    }

    public zzcu(Object[] objArr, Object[] objArr2, int i, int i2, int i3) {
        this.h = objArr;
        this.i = i;
        this.j = objArr2;
        this.k = i2;
        this.l = i3;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int a(Object[] objArr) {
        Object[] objArr2 = this.h;
        int i = this.l;
        System.arraycopy(objArr2, 0, objArr, 0, i);
        return i;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int c() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.j;
            if (objArr.length != 0) {
                int rotateLeft = (int) (Integer.rotateLeft((int) (obj.hashCode() * (-862048943)), 15) * 461845907);
                while (true) {
                    int i = rotateLeft & this.k;
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

    @Override // com.google.android.gms.internal.fido.zzby
    public final int g() {
        return 0;
    }

    @Override // com.google.android.gms.internal.fido.zzcf, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.fido.zzby
    /* renamed from: i */
    public final zzdc iterator() {
        return r().listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzcf, com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return r().listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final Object[] k() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    public final zzcc s() {
        return zzcc.q(this.l, this.h);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.l;
    }
}
