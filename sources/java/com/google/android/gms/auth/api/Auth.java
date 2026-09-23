package com.google.android.gms.auth.api;

import com.google.android.gms.common.api.Api;

/* loaded from: classes.dex */
public final class Auth {

    /* renamed from: a, reason: collision with root package name */
    public static final Api f3340a;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        Api.ClientKey clientKey2 = new Api.ClientKey();
        Api.AbstractClientBuilder abstractClientBuilder = new Api.AbstractClientBuilder();
        Api.AbstractClientBuilder abstractClientBuilder2 = new Api.AbstractClientBuilder();
        Api api = AuthProxy.f3341a;
        new Api("Auth.CREDENTIALS_API", abstractClientBuilder, clientKey);
        f3340a = new Api("Auth.GOOGLE_SIGN_IN_API", abstractClientBuilder2, clientKey2);
        Api api2 = AuthProxy.f3341a;
    }
}
