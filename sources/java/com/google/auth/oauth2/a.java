package com.google.auth.oauth2;

import com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler;
import com.google.api.client.http.HttpResponse;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements HttpBackOffUnsuccessfulResponseHandler.BackOffRequired {
    @Override // com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler.BackOffRequired
    public final boolean isRequired(HttpResponse httpResponse) {
        LoggerProvider loggerProvider = ServiceAccountCredentials.y;
        return OAuth2Utils.g.contains(Integer.valueOf(httpResponse.getStatusCode()));
    }
}
