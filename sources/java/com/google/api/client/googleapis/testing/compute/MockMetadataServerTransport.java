package com.google.api.client.googleapis.testing.compute;

import android.support.v4.media.a;
import com.google.api.client.googleapis.auth.oauth2.OAuth2Utils;
import com.google.api.client.http.LowLevelHttpRequest;
import com.google.api.client.http.LowLevelHttpResponse;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.testing.http.MockHttpTransport;
import com.google.api.client.testing.http.MockLowLevelHttpRequest;
import com.google.api.client.testing.http.MockLowLevelHttpResponse;
import com.google.api.client.util.Beta;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Preconditions;
import java.io.IOException;

@Beta
/* loaded from: classes3.dex */
public class MockMetadataServerTransport extends MockHttpTransport {
    static final JsonFactory JSON_FACTORY;
    private static final String METADATA_SERVER_URL;
    private static final String METADATA_TOKEN_SERVER_URL;
    String accessToken;
    Integer tokenRequestStatusCode;

    static {
        String metadataServerUrl = OAuth2Utils.getMetadataServerUrl();
        METADATA_SERVER_URL = metadataServerUrl;
        METADATA_TOKEN_SERVER_URL = a.k(metadataServerUrl, "/computeMetadata/v1/instance/service-accounts/default/token");
        JSON_FACTORY = new GsonFactory();
    }

    public MockMetadataServerTransport(String str) {
        this.accessToken = str;
    }

    @Override // com.google.api.client.testing.http.MockHttpTransport, com.google.api.client.http.HttpTransport
    public LowLevelHttpRequest buildRequest(String str, String str2) {
        if (str2.equals(METADATA_TOKEN_SERVER_URL)) {
            return new MockLowLevelHttpRequest(str2) { // from class: com.google.api.client.googleapis.testing.compute.MockMetadataServerTransport.1
                /* JADX WARN: Type inference failed for: r0v6, types: [com.google.api.client.util.GenericData, com.google.api.client.json.GenericJson] */
                @Override // com.google.api.client.testing.http.MockLowLevelHttpRequest, com.google.api.client.http.LowLevelHttpRequest
                public LowLevelHttpResponse execute() {
                    if (MockMetadataServerTransport.this.tokenRequestStatusCode != null) {
                        MockLowLevelHttpResponse mockLowLevelHttpResponse = new MockLowLevelHttpResponse();
                        mockLowLevelHttpResponse.f12091c = MockMetadataServerTransport.this.tokenRequestStatusCode.intValue();
                        mockLowLevelHttpResponse.a("Token Fetch Error");
                        return mockLowLevelHttpResponse;
                    }
                    if ("Google".equals(getFirstHeaderValue("Metadata-Flavor"))) {
                        ?? genericData = new GenericData();
                        genericData.setFactory(MockMetadataServerTransport.JSON_FACTORY);
                        genericData.put("access_token", MockMetadataServerTransport.this.accessToken);
                        genericData.put("expires_in", 3600000);
                        genericData.put("token_type", "Bearer");
                        String prettyString = genericData.toPrettyString();
                        MockLowLevelHttpResponse mockLowLevelHttpResponse2 = new MockLowLevelHttpResponse();
                        mockLowLevelHttpResponse2.b = "application/json; charset=UTF-8";
                        mockLowLevelHttpResponse2.a(prettyString);
                        return mockLowLevelHttpResponse2;
                    }
                    throw new IOException("Metadata request header not found.");
                }
            };
        }
        if (str2.equals(METADATA_SERVER_URL)) {
            return new MockLowLevelHttpRequest(str2) { // from class: com.google.api.client.googleapis.testing.compute.MockMetadataServerTransport.2
                @Override // com.google.api.client.testing.http.MockLowLevelHttpRequest, com.google.api.client.http.LowLevelHttpRequest
                public LowLevelHttpResponse execute() {
                    MockLowLevelHttpResponse mockLowLevelHttpResponse = new MockLowLevelHttpResponse();
                    mockLowLevelHttpResponse.e.add(Preconditions.checkNotNull("Metadata-Flavor"));
                    mockLowLevelHttpResponse.f.add(Preconditions.checkNotNull("Google"));
                    return mockLowLevelHttpResponse;
                }
            };
        }
        return super.buildRequest(str, str2);
    }

    public void setTokenRequestStatusCode(Integer num) {
        this.tokenRequestStatusCode = num;
    }
}
