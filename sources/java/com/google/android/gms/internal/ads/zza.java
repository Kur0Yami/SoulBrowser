package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zza {

    /* renamed from: a, reason: collision with root package name */
    public final int f3841a;
    public final Uri[] b;

    /* renamed from: c, reason: collision with root package name */
    public final zzak[] f3842c;
    public final int[] d;
    public final long[] e;
    public final String[] f;
    public final zzb[] g;

    static {
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
        Integer.toString(8, 36);
        Integer.toString(9, 36);
        Integer.toString(10, 36);
        Integer.toString(11, 36);
    }

    public zza(int i, int[] iArr, zzak[] zzakVarArr, long[] jArr, String[] strArr, zzb[] zzbVarArr) {
        boolean z;
        Uri uri;
        int length = iArr.length;
        int length2 = zzakVarArr.length;
        int i2 = 0;
        if (length == length2) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        zzgqa.a(length == zzbVarArr.length);
        this.f3841a = i;
        this.d = iArr;
        this.f3842c = zzakVarArr;
        this.e = jArr;
        this.b = new Uri[length2];
        while (true) {
            Uri[] uriArr = this.b;
            if (i2 < uriArr.length) {
                zzak zzakVar = zzakVarArr[i2];
                if (zzakVar == null) {
                    uri = null;
                } else {
                    zzag zzagVar = zzakVar.b;
                    zzagVar.getClass();
                    uri = zzagVar.f3994a;
                }
                uriArr[i2] = uri;
                i2++;
            } else {
                this.f = strArr;
                this.g = zzbVarArr;
                return;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zza.class == obj.getClass()) {
            zza zzaVar = (zza) obj;
            if (this.f3841a == zzaVar.f3841a && Arrays.equals(this.f3842c, zzaVar.f3842c) && Arrays.equals(this.d, zzaVar.d) && Arrays.equals(this.e, zzaVar.e) && Arrays.equals(this.f, zzaVar.f) && Arrays.equals(this.g, zzaVar.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.g) + ((((Arrays.hashCode(this.e) + ((Arrays.hashCode(this.d) + ((Arrays.hashCode(this.f3842c) + (((this.f3841a * 31) - 1) * 961)) * 31)) * 31)) * 29791) + Arrays.hashCode(this.f)) * 31)) * 31;
    }
}
