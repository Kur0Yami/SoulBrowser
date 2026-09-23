package com.google.auth.oauth2;

import com.google.api.client.http.HttpResponseException;
import com.google.auth.Retryable;
import java.io.IOException;

/* loaded from: classes3.dex */
class GoogleAuthException extends IOException implements Retryable {
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.auth.oauth2.GoogleAuthException, java.io.IOException] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.auth.oauth2.GoogleAuthException, java.io.IOException] */
    public static GoogleAuthException a(HttpResponseException httpResponseException, String str) {
        OAuth2Utils.g.contains(Integer.valueOf(httpResponseException.getStatusCode()));
        httpResponseException.getAttemptCount();
        if (str == null) {
            return new IOException(httpResponseException);
        }
        return new IOException(str, httpResponseException);
    }
}
