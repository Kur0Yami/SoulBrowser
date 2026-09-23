package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzes {

    /* renamed from: c, reason: collision with root package name */
    public static final zzes f6870c = new zzes(-1, -1);

    /* renamed from: a, reason: collision with root package name */
    public final int f6871a;
    public final int b;

    static {
        new zzes(0, 0);
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public zzes(int i, int i2) {
        boolean z = false;
        if ((i == -1 || i >= 0) && (i2 == -1 || i2 >= 0)) {
            z = true;
        }
        zzgqa.a(z);
        this.f6871a = i;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzes) {
            zzes zzesVar = (zzes) obj;
            if (this.f6871a == zzesVar.f6871a && this.b == zzesVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f6871a;
        return ((i >>> 16) | (i << 16)) ^ this.b;
    }

    public final String toString() {
        int i = this.f6871a;
        int length = String.valueOf(i).length();
        int i2 = this.b;
        StringBuilder sb = new StringBuilder(length + 1 + String.valueOf(i2).length());
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        return sb.toString();
    }
}
