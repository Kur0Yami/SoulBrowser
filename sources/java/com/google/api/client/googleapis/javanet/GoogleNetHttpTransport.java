package com.google.api.client.googleapis.javanet;

import com.google.api.client.googleapis.GoogleUtils;
import com.google.api.client.googleapis.mtls.MtlsProvider;
import com.google.api.client.googleapis.mtls.MtlsUtils;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.util.Beta;
import java.security.KeyStore;

/* loaded from: classes3.dex */
public class GoogleNetHttpTransport {
    private GoogleNetHttpTransport() {
    }

    public static NetHttpTransport newTrustedTransport() {
        return newTrustedTransport(MtlsUtils.getDefaultMtlsProvider());
    }

    @Beta
    public static NetHttpTransport newTrustedTransport(MtlsProvider mtlsProvider) {
        KeyStore keyStore;
        String str;
        if (mtlsProvider.useMtlsClientCertificate()) {
            keyStore = mtlsProvider.getKeyStore();
            str = mtlsProvider.getKeyStorePassword();
        } else {
            keyStore = null;
            str = null;
        }
        if (keyStore != null && str != null) {
            return new NetHttpTransport.Builder().trustCertificates(GoogleUtils.getCertificateTrustStore(), keyStore, str).build();
        }
        return new NetHttpTransport.Builder().trustCertificates(GoogleUtils.getCertificateTrustStore()).build();
    }
}
