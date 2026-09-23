package com.google.auth.oauth2;

import com.google.auth.oauth2.ExternalAccountCredentials;
import java.io.Serializable;

/* loaded from: classes3.dex */
public class IdentityPoolCredentialSource extends ExternalAccountCredentials.CredentialSource {

    /* loaded from: classes3.dex */
    public static class CertificateConfig implements Serializable {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class CredentialFormatType {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ CredentialFormatType[] f12119c = {new Enum("TEXT", 0), new Enum("JSON", 1)};

        /* JADX INFO: Fake field, exist only in values array */
        CredentialFormatType EF5;

        public static CredentialFormatType valueOf(String str) {
            return (CredentialFormatType) Enum.valueOf(CredentialFormatType.class, str);
        }

        public static CredentialFormatType[] values() {
            return (CredentialFormatType[]) f12119c.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class IdentityPoolCredentialSourceType {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ IdentityPoolCredentialSourceType[] f12120c = {new Enum("FILE", 0), new Enum("URL", 1), new Enum("CERTIFICATE", 2)};

        /* JADX INFO: Fake field, exist only in values array */
        IdentityPoolCredentialSourceType EF5;

        public static IdentityPoolCredentialSourceType valueOf(String str) {
            return (IdentityPoolCredentialSourceType) Enum.valueOf(IdentityPoolCredentialSourceType.class, str);
        }

        public static IdentityPoolCredentialSourceType[] values() {
            return (IdentityPoolCredentialSourceType[]) f12120c.clone();
        }
    }
}
