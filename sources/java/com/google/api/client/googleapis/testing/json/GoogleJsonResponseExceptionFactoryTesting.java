package com.google.api.client.googleapis.testing.json;

import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.testing.http.HttpTesting;
import com.google.api.client.testing.http.MockHttpTransport;
import com.google.api.client.testing.http.MockLowLevelHttpResponse;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Preconditions;

@Beta
/* loaded from: classes3.dex */
public final class GoogleJsonResponseExceptionFactoryTesting {
    /* JADX WARN: Type inference failed for: r4v3, types: [com.google.api.client.testing.http.MockHttpTransport$Builder, java.lang.Object] */
    public static GoogleJsonResponseException newMock(JsonFactory jsonFactory, int i, String str) {
        boolean z;
        MockLowLevelHttpResponse mockLowLevelHttpResponse = new MockLowLevelHttpResponse();
        mockLowLevelHttpResponse.f12091c = i;
        mockLowLevelHttpResponse.d = str;
        mockLowLevelHttpResponse.b = "application/json; charset=UTF-8";
        mockLowLevelHttpResponse.a("{ \"error\": { \"errors\": [ { \"reason\": \"" + str + "\" } ], \"code\": " + i + " } }");
        ?? obj = new Object();
        if (obj.f12089a == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, "Cannot set a low level HTTP response when a low level HTTP request has been set.");
        obj.b = mockLowLevelHttpResponse;
        HttpRequest buildGetRequest = new MockHttpTransport(obj).createRequestFactory().buildGetRequest(HttpTesting.f12088a);
        buildGetRequest.setThrowExceptionOnExecuteError(false);
        return GoogleJsonResponseException.from(jsonFactory, buildGetRequest.execute());
    }
}
