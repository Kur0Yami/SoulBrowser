package com.google.api.client.testing.http;

import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpUnsuccessfulResponseHandler;
import com.google.api.client.util.Beta;

@Beta
/* loaded from: classes3.dex */
public class MockHttpUnsuccessfulResponseHandler implements HttpUnsuccessfulResponseHandler {
    @Override // com.google.api.client.http.HttpUnsuccessfulResponseHandler
    public final boolean handleResponse(HttpRequest httpRequest, HttpResponse httpResponse, boolean z) {
        return false;
    }
}
