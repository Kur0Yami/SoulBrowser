package com.google.android.gms.signin;

import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;

/* loaded from: classes3.dex */
public final class zad {

    /* renamed from: a, reason: collision with root package name */
    public static final Api.AbstractClientBuilder f11602a;
    public static final Api b;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        Api.ClientKey clientKey2 = new Api.ClientKey();
        Api.AbstractClientBuilder abstractClientBuilder = new Api.AbstractClientBuilder();
        f11602a = abstractClientBuilder;
        Api.AbstractClientBuilder abstractClientBuilder2 = new Api.AbstractClientBuilder();
        new Scope(Scopes.PROFILE);
        new Scope(Scopes.EMAIL);
        b = new Api("SignIn.API", abstractClientBuilder, clientKey);
        new Api("SignIn.INTERNAL_API", abstractClientBuilder2, clientKey2);
    }
}
