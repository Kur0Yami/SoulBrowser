package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzbg {

    /* renamed from: a, reason: collision with root package name */
    public final int f4645a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4646c;
    public final zzv[] d;
    public int e;

    static {
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public zzbg(String str, zzv... zzvVarArr) {
        boolean z;
        String str2;
        int length = zzvVarArr.length;
        int i = 1;
        if (length > 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        this.b = str;
        this.d = zzvVarArr;
        this.f4645a = length;
        int f = zzas.f(zzvVarArr[0].m);
        this.f4646c = f == -1 ? zzas.f(zzvVarArr[0].l) : f;
        zzv zzvVar = zzvVarArr[0];
        String str3 = zzvVar.d;
        str3 = (str3 == null || str3.equals("und")) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str3;
        int i2 = zzvVar.f | 16384;
        while (true) {
            zzv[] zzvVarArr2 = this.d;
            if (i < zzvVarArr2.length) {
                zzv zzvVar2 = zzvVarArr2[i];
                String str4 = zzvVar2.d;
                if (str4 != null && !str4.equals("und")) {
                    str2 = str4;
                } else {
                    str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                if (!str3.equals(str2)) {
                    a(i, "languages", zzvVarArr2[0].d, str4);
                    return;
                } else {
                    if (i2 != (zzvVar2.f | 16384)) {
                        a(i, "role flags", Integer.toBinaryString(zzvVarArr2[0].f), Integer.toBinaryString(this.d[i].f));
                        return;
                    }
                    i++;
                }
            } else {
                return;
            }
        }
    }

    public static void a(int i, String str, String str2, String str3) {
        int length = String.valueOf(str2).length();
        int length2 = String.valueOf(str3).length();
        StringBuilder sb = new StringBuilder(str.length() + 40 + length + 17 + length2 + 9 + String.valueOf(i).length() + 1);
        android.support.v4.media.a.z(sb, "Different ", str, " combined in one TrackGroup: '", str2);
        sb.append("' (track 0) and '");
        sb.append(str3);
        sb.append("' (track ");
        sb.append(i);
        sb.append(")");
        zzee.f("TrackGroup", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new IllegalStateException(sb.toString()));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbg.class == obj.getClass()) {
            zzbg zzbgVar = (zzbg) obj;
            if (this.b.equals(zzbgVar.b) && Arrays.equals(this.d, zzbgVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.e;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.d) + ((this.b.hashCode() + 527) * 31);
            this.e = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        String arrays = Arrays.toString(this.d);
        String str = this.b;
        return android.support.v4.media.a.q(new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(arrays).length()), str, ": ", arrays);
    }
}
