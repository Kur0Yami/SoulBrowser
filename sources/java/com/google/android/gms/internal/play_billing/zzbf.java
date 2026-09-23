package com.google.android.gms.internal.play_billing;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzbf {

    /* renamed from: a, reason: collision with root package name */
    public final String f11451a;
    public final zzbe b;

    /* renamed from: c, reason: collision with root package name */
    public zzbe f11452c;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.play_billing.zzbe, java.lang.Object] */
    public zzbf(String str) {
        ?? obj = new Object();
        this.b = obj;
        this.f11452c = obj;
        this.f11451a = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.f11451a);
        sb.append('{');
        zzbe zzbeVar = this.b.b;
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        while (zzbeVar != null) {
            Object obj = zzbeVar.f11450a;
            sb.append(str);
            if (obj != null && obj.getClass().isArray()) {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r3.length() - 1);
            } else {
                sb.append(obj);
            }
            zzbeVar = zzbeVar.b;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }
}
