package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzgpw {

    /* renamed from: a, reason: collision with root package name */
    public final String f8202a;
    public final zzgpv b;

    /* renamed from: c, reason: collision with root package name */
    public zzgpv f8203c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzgpv] */
    public zzgpw(String str) {
        ?? obj = new Object();
        this.b = obj;
        this.f8203c = obj;
        this.f8202a = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f8202a);
        sb.append('{');
        zzgpv zzgpvVar = this.b.b;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        while (zzgpvVar != null) {
            Object obj = zzgpvVar.f8201a;
            sb.append(str);
            if (obj != null && obj.getClass().isArray()) {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r3.length() - 1);
            } else {
                sb.append(obj);
            }
            zzgpvVar = zzgpvVar.b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
