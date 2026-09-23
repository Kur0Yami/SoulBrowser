package com.google.auth.mtls;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.auth.http.HttpTransportFactory;
import java.security.GeneralSecurityException;

/* loaded from: classes3.dex */
public class MtlsHttpTransportFactory implements HttpTransportFactory {
    @Override // com.google.auth.http.HttpTransportFactory
    public final HttpTransport a() {
        try {
            return new NetHttpTransport.Builder().trustCertificates(null, null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).build();
        } catch (GeneralSecurityException e) {
            throw new RuntimeException("Failed to initialize mTLS transport.", e);
        }
    }
}
