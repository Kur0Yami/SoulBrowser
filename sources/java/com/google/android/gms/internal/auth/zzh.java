package com.google.android.gms.internal.auth;

import android.content.Context;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

/* loaded from: classes.dex */
public final class zzh {
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.common.api.GoogleApi, com.google.android.gms.internal.auth.zzg] */
    public static zzg a(Context context) {
        return new GoogleApi(context, (Api<Api.ApiOptions.NoOptions>) zzab.f9478a, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }
}
