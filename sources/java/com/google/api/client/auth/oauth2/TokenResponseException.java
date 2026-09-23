package com.google.api.client.auth.oauth2;

import com.google.api.client.http.HttpResponseException;

/* loaded from: classes3.dex */
public class TokenResponseException extends HttpResponseException {
    public static final /* synthetic */ int f = 0;

    /* renamed from: c, reason: collision with root package name */
    public final transient TokenErrorResponse f12077c;

    public TokenResponseException(HttpResponseException.Builder builder, TokenErrorResponse tokenErrorResponse) {
        super(builder);
        this.f12077c = tokenErrorResponse;
    }
}
