package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
final /* synthetic */ class zzfpd implements zzgpr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzfpd f7524a = new Object();

    @Override // com.google.android.gms.internal.ads.zzgpr
    public final Object apply(Object obj) {
        String str = ((zzfid) obj).f7384a;
        if (TextUtils.isEmpty(str)) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (com.google.android.gms.ads.internal.util.client.zzl.zzj()) {
            return "fakeForAdDebugLog";
        }
        return str;
    }
}
