package com.google.api.client.googleapis.testing.auth.oauth2;

import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.testing.http.MockHttpTransport;
import com.google.api.client.testing.http.MockLowLevelHttpRequest;
import com.google.api.client.testing.http.MockLowLevelHttpResponse;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Clock;
import com.google.api.client.util.Preconditions;

@Beta
/* loaded from: classes3.dex */
public class MockGoogleCredential extends GoogleCredential {
    public static final String ACCESS_TOKEN = "access_xyz";
    private static final String DEFAULT_TOKEN_RESPONSE_JSON = "{\"access_token\": \"access_xyz\", \"expires_in\":  3600, \"refresh_token\": \"refresh123\", \"token_type\": \"Bearer\"}";
    private static final String EXPIRES_IN_SECONDS = "3600";
    public static final String REFRESH_TOKEN = "refresh123";
    private static final String TOKEN_RESPONSE = "{\"access_token\": \"%s\", \"expires_in\":  %s, \"refresh_token\": \"%s\", \"token_type\": \"%s\"}";
    private static final String TOKEN_TYPE = "Bearer";

    @Beta
    /* loaded from: classes3.dex */
    public static class MockClientAuthentication implements HttpExecuteInterceptor {
        private MockClientAuthentication() {
        }

        @Override // com.google.api.client.http.HttpExecuteInterceptor
        public void intercept(HttpRequest httpRequest) {
        }
    }

    public MockGoogleCredential(Builder builder) {
        super(builder);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.api.client.testing.http.MockHttpTransport$Builder, java.lang.Object] */
    public static MockHttpTransport newMockHttpTransportWithSampleTokenResponse() {
        boolean z;
        MockLowLevelHttpResponse mockLowLevelHttpResponse = new MockLowLevelHttpResponse();
        mockLowLevelHttpResponse.b = "application/json; charset=UTF-8";
        mockLowLevelHttpResponse.a(DEFAULT_TOKEN_RESPONSE_JSON);
        MockLowLevelHttpRequest response = new MockLowLevelHttpRequest().setResponse(mockLowLevelHttpResponse);
        ?? obj = new Object();
        if (obj.b == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, "Cannnot set a low level HTTP request when a low level HTTP response has been set.");
        obj.f12089a = response;
        return new MockHttpTransport(obj);
    }

    @Beta
    /* loaded from: classes3.dex */
    public static class Builder extends GoogleCredential.Builder {
        /* JADX WARN: Type inference failed for: r0v6, types: [com.google.api.client.testing.http.MockHttpTransport$Builder, java.lang.Object] */
        @Override // com.google.api.client.googleapis.auth.oauth2.GoogleCredential.Builder
        public MockGoogleCredential build() {
            if (getTransport() == null) {
                setTransport((HttpTransport) new MockHttpTransport(new Object()));
            }
            if (getClientAuthentication() == null) {
                setClientAuthentication((HttpExecuteInterceptor) new MockClientAuthentication());
            }
            if (getJsonFactory() == null) {
                setJsonFactory((JsonFactory) new GsonFactory());
            }
            return new MockGoogleCredential(this);
        }

        @Override // com.google.api.client.googleapis.auth.oauth2.GoogleCredential.Builder, com.google.api.client.auth.oauth2.Credential.Builder
        public Builder setClientAuthentication(HttpExecuteInterceptor httpExecuteInterceptor) {
            return (Builder) super.setClientAuthentication(httpExecuteInterceptor);
        }

        @Override // com.google.api.client.googleapis.auth.oauth2.GoogleCredential.Builder, com.google.api.client.auth.oauth2.Credential.Builder
        public Builder setClock(Clock clock) {
            return (Builder) super.setClock(clock);
        }

        @Override // com.google.api.client.googleapis.auth.oauth2.GoogleCredential.Builder, com.google.api.client.auth.oauth2.Credential.Builder
        public Builder setJsonFactory(JsonFactory jsonFactory) {
            return (Builder) super.setJsonFactory(jsonFactory);
        }

        @Override // com.google.api.client.googleapis.auth.oauth2.GoogleCredential.Builder, com.google.api.client.auth.oauth2.Credential.Builder
        public Builder setTransport(HttpTransport httpTransport) {
            return (Builder) super.setTransport(httpTransport);
        }
    }
}
