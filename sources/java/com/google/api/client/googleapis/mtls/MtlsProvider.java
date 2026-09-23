package com.google.api.client.googleapis.mtls;

import com.google.api.client.util.Beta;
import java.security.KeyStore;

@Beta
/* loaded from: classes3.dex */
public interface MtlsProvider {
    KeyStore getKeyStore();

    String getKeyStorePassword();

    boolean useMtlsClientCertificate();
}
