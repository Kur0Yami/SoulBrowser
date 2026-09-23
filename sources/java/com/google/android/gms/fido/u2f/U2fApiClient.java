package com.google.android.gms.fido.u2f;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

@Deprecated
/* loaded from: classes.dex */
public class U2fApiClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    static {
        new Api("Fido.U2F_API", new Api.AbstractClientBuilder(), new Api.ClientKey());
    }
}
