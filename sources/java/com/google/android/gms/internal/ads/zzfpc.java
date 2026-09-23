package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
final /* synthetic */ class zzfpc implements zzgpr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzfpc f7523a = new Object();

    @Override // com.google.android.gms.internal.ads.zzgpr
    public final Object apply(Object obj) {
        String str = ((zzfid) obj).b;
        if (TextUtils.isEmpty(str)) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (com.google.android.gms.ads.internal.util.client.zzl.zzj()) {
            return "fakeForAdDebugLog";
        }
        return str;
    }
}
