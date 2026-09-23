package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzz {

    /* renamed from: a, reason: collision with root package name */
    public String f9404a;
    public Uri b;

    /* renamed from: c, reason: collision with root package name */
    public final List f9405c;
    public final zzgtd d;
    public final zzai e;

    public zzz() {
        zzgvs zzgvsVar = zzgtd.f;
        zzgtd zzgtdVar = zzguy.i;
        this.f9405c = Collections.EMPTY_LIST;
        this.d = zzguy.i;
        this.e = zzai.f4053a;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.ads.zzab, com.google.android.gms.internal.ads.zzac] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzaf] */
    public final zzak a() {
        zzag zzagVar;
        Uri uri = this.b;
        if (uri != null) {
            zzagVar = new zzag(uri, this.f9405c, this.d);
        } else {
            zzagVar = null;
        }
        zzag zzagVar2 = zzagVar;
        String str = this.f9404a;
        if (str == null) {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return new zzak(str, new zzab(), zzagVar2, new Object(), zzan.B, this.e);
    }
}
