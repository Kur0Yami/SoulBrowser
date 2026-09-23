package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.devicesuggestions.DeviceSuggestionsClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

/* loaded from: classes.dex */
public final class zzav extends GoogleApi implements DeviceSuggestionsClient {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f9623a;

    static {
        new Api("DeviceSuggestions.API", new Api.AbstractClientBuilder(), new Api.ClientKey());
        f9623a = new Logger("InternalDeviceSuggestionsClient", null);
    }
}
