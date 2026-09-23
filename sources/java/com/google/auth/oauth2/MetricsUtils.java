package com.google.auth.oauth2;

import com.google.auth.CredentialTypeForMetrics;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/* loaded from: classes3.dex */
class MetricsUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final String f12126a;
    public static final String b;

    /* loaded from: classes3.dex */
    public enum RequestType {
        ACCESS_TOKEN_REQUEST("at"),
        ID_TOKEN_REQUEST("it"),
        /* JADX INFO: Fake field, exist only in values array */
        METADATA_SERVER_PING("mds"),
        UNTRACKED("untracked");


        /* renamed from: c, reason: collision with root package name */
        public final String f12127c;

        RequestType(String str) {
            this.f12127c = str;
        }
    }

    static {
        String str = "unknown-version";
        try {
            InputStream resourceAsStream = MetricsUtils.class.getResourceAsStream("/com/google/auth/oauth2/google-auth-library.properties");
            if (resourceAsStream != null) {
                try {
                    Properties properties = new Properties();
                    properties.load(resourceAsStream);
                    str = properties.getProperty("google-auth-library.version");
                } finally {
                }
            }
            if (resourceAsStream != null) {
                resourceAsStream.close();
            }
        } catch (IOException unused) {
        }
        f12126a = str;
        b = System.getProperty("java.version");
    }

    public static String a(RequestType requestType, CredentialTypeForMetrics credentialTypeForMetrics) {
        StringBuilder sb = new StringBuilder(android.support.v4.media.a.m("gl-java/", b, " auth/", f12126a));
        if (requestType != RequestType.UNTRACKED) {
            sb.append(" auth-request-type/".concat(requestType.f12127c));
        }
        if (credentialTypeForMetrics != CredentialTypeForMetrics.DO_NOT_SEND) {
            sb.append(" cred-type/".concat(credentialTypeForMetrics.f12098c));
        }
        return sb.toString();
    }
}
