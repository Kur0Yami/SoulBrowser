package com.google.api.client.googleapis.services.json;

import com.google.api.client.googleapis.services.AbstractGoogleClientRequest;
import com.google.api.client.googleapis.services.CommonGoogleClientRequestInitializer;

/* loaded from: classes3.dex */
public class CommonGoogleJsonClientRequestInitializer extends CommonGoogleClientRequestInitializer {

    /* loaded from: classes3.dex */
    public static class Builder extends CommonGoogleClientRequestInitializer.Builder {
        @Override // com.google.api.client.googleapis.services.CommonGoogleClientRequestInitializer.Builder
        public Builder self() {
            return this;
        }
    }

    @Deprecated
    public CommonGoogleJsonClientRequestInitializer() {
    }

    @Override // com.google.api.client.googleapis.services.CommonGoogleClientRequestInitializer, com.google.api.client.googleapis.services.GoogleClientRequestInitializer
    public final void initialize(AbstractGoogleClientRequest<?> abstractGoogleClientRequest) {
        super.initialize(abstractGoogleClientRequest);
        initializeJsonRequest((AbstractGoogleJsonClientRequest) abstractGoogleClientRequest);
    }

    public void initializeJsonRequest(AbstractGoogleJsonClientRequest<?> abstractGoogleJsonClientRequest) {
    }

    @Deprecated
    public CommonGoogleJsonClientRequestInitializer(String str) {
        super(str);
    }

    @Deprecated
    public CommonGoogleJsonClientRequestInitializer(String str, String str2) {
        super(str, str2);
    }
}
