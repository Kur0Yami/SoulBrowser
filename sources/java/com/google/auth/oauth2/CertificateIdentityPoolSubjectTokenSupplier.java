package com.google.auth.oauth2;

import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class CertificateIdentityPoolSubjectTokenSupplier implements IdentityPoolSubjectTokenSupplier {
    static {
        Pattern.compile("-----BEGIN CERTIFICATE-----.*?-----END CERTIFICATE-----", 32);
    }
}
