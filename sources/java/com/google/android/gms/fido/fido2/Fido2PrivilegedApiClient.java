package com.google.android.gms.fido.fido2;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

/* loaded from: classes.dex */
public class Fido2PrivilegedApiClient extends GoogleApi<Api.ApiOptions.NoOptions> {
    static {
        new Api("Fido.FIDO2_PRIVILEGED_API", new Api.AbstractClientBuilder(), new Api.ClientKey());
    }
}
