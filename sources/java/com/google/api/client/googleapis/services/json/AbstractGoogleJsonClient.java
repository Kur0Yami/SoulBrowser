package com.google.api.client.googleapis.services.json;

import com.google.api.client.googleapis.services.AbstractGoogleClient;
import com.google.api.client.googleapis.services.GoogleClientRequestInitializer;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;

/* loaded from: classes3.dex */
public abstract class AbstractGoogleJsonClient extends AbstractGoogleClient {

    /* loaded from: classes3.dex */
    public static abstract class Builder extends AbstractGoogleClient.Builder {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Builder(com.google.api.client.http.HttpTransport r8, com.google.api.client.json.JsonFactory r9, java.lang.String r10, java.lang.String r11, com.google.api.client.http.HttpRequestInitializer r12, boolean r13) {
            /*
                r7 = this;
                com.google.api.client.json.JsonObjectParser$Builder r0 = new com.google.api.client.json.JsonObjectParser$Builder
                r0.<init>(r9)
                if (r13 == 0) goto L14
                java.lang.String r9 = "data"
                java.lang.String r13 = "error"
                java.lang.String[] r9 = new java.lang.String[]{r9, r13}
                java.util.List r9 = java.util.Arrays.asList(r9)
                goto L16
            L14:
                java.util.Set r9 = java.util.Collections.EMPTY_SET
            L16:
                r0.b = r9
                com.google.api.client.json.JsonObjectParser r5 = new com.google.api.client.json.JsonObjectParser
                r5.<init>(r0)
                r1 = r7
                r2 = r8
                r3 = r10
                r4 = r11
                r6 = r12
                r1.<init>(r2, r3, r4, r5, r6)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.googleapis.services.json.AbstractGoogleJsonClient.Builder.<init>(com.google.api.client.http.HttpTransport, com.google.api.client.json.JsonFactory, java.lang.String, java.lang.String, com.google.api.client.http.HttpRequestInitializer, boolean):void");
        }

        @Override // com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public abstract AbstractGoogleJsonClient build();

        public final JsonFactory getJsonFactory() {
            return getObjectParser().f12079a;
        }

        @Override // com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public final JsonObjectParser getObjectParser() {
            return (JsonObjectParser) super.getObjectParser();
        }

        @Override // com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setApplicationName(String str) {
            return (Builder) super.setApplicationName(str);
        }

        @Override // com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setGoogleClientRequestInitializer(GoogleClientRequestInitializer googleClientRequestInitializer) {
            return (Builder) super.setGoogleClientRequestInitializer(googleClientRequestInitializer);
        }

        @Override // com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setHttpRequestInitializer(HttpRequestInitializer httpRequestInitializer) {
            return (Builder) super.setHttpRequestInitializer(httpRequestInitializer);
        }

        @Override // com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setRootUrl(String str) {
            return (Builder) super.setRootUrl(str);
        }

        @Override // com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setServicePath(String str) {
            return (Builder) super.setServicePath(str);
        }

        @Override // com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setSuppressAllChecks(boolean z) {
            return (Builder) super.setSuppressAllChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setSuppressPatternChecks(boolean z) {
            return (Builder) super.setSuppressPatternChecks(z);
        }

        @Override // com.google.api.client.googleapis.services.AbstractGoogleClient.Builder
        public Builder setSuppressRequiredParameterChecks(boolean z) {
            return (Builder) super.setSuppressRequiredParameterChecks(z);
        }
    }

    public AbstractGoogleJsonClient(Builder builder) {
        super(builder);
    }

    public final JsonFactory getJsonFactory() {
        return getObjectParser().f12079a;
    }

    @Override // com.google.api.client.googleapis.services.AbstractGoogleClient
    public JsonObjectParser getObjectParser() {
        return (JsonObjectParser) super.getObjectParser();
    }
}
