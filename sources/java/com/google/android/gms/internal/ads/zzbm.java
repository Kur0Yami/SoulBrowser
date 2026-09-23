package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzbm {

    /* renamed from: a, reason: collision with root package name */
    public final int f4762a;
    public final zzbg b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4763c;
    public final int[] d;
    public final boolean[] e;

    static {
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public zzbm(zzbg zzbgVar, boolean z, int[] iArr, boolean[] zArr) {
        boolean z2;
        int i = zzbgVar.f4645a;
        this.f4762a = i;
        if (i == iArr.length && i == zArr.length) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzgqa.a(z2);
        this.b = zzbgVar;
        this.f4763c = z && i > 1;
        this.d = (int[]) iArr.clone();
        this.e = (boolean[]) zArr.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbm.class == obj.getClass()) {
            zzbm zzbmVar = (zzbm) obj;
            if (this.f4763c == zzbmVar.f4763c && this.b.equals(zzbmVar.b) && Arrays.equals(this.d, zzbmVar.d) && Arrays.equals(this.e, zzbmVar.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.e) + ((Arrays.hashCode(this.d) + (((this.b.hashCode() * 31) + (this.f4763c ? 1 : 0)) * 31)) * 31);
    }
}
