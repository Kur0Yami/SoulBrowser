package com.google.api.client.testing.http;

import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.LowLevelHttpRequest;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Preconditions;
import j$.util.DesugarCollections;
import java.util.Set;

@Beta
/* loaded from: classes3.dex */
public class MockHttpTransport extends HttpTransport {
    private MockLowLevelHttpRequest lowLevelHttpRequest;
    private MockLowLevelHttpResponse lowLevelHttpResponse;
    private Set<String> supportedMethods = null;

    @Beta
    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public MockLowLevelHttpRequest f12089a;
        public MockLowLevelHttpResponse b;
    }

    public MockHttpTransport(Builder builder) {
        this.lowLevelHttpRequest = builder.f12089a;
        this.lowLevelHttpResponse = builder.b;
    }

    @Override // com.google.api.client.http.HttpTransport
    public LowLevelHttpRequest buildRequest(String str, String str2) {
        Preconditions.checkArgument(supportsMethod(str), "HTTP method %s not supported", str);
        MockLowLevelHttpRequest mockLowLevelHttpRequest = this.lowLevelHttpRequest;
        if (mockLowLevelHttpRequest != null) {
            return mockLowLevelHttpRequest;
        }
        MockLowLevelHttpRequest mockLowLevelHttpRequest2 = new MockLowLevelHttpRequest(str2);
        this.lowLevelHttpRequest = mockLowLevelHttpRequest2;
        MockLowLevelHttpResponse mockLowLevelHttpResponse = this.lowLevelHttpResponse;
        if (mockLowLevelHttpResponse != null) {
            mockLowLevelHttpRequest2.setResponse(mockLowLevelHttpResponse);
        }
        return this.lowLevelHttpRequest;
    }

    public final MockLowLevelHttpRequest getLowLevelHttpRequest() {
        return this.lowLevelHttpRequest;
    }

    public final Set<String> getSupportedMethods() {
        Set<String> set = this.supportedMethods;
        if (set == null) {
            return null;
        }
        return DesugarCollections.unmodifiableSet(set);
    }

    @Override // com.google.api.client.http.HttpTransport
    public boolean supportsMethod(String str) {
        Set<String> set = this.supportedMethods;
        if (set != null && !set.contains(str)) {
            return false;
        }
        return true;
    }
}
