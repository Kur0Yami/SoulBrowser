package com.google.auth.oauth2;

import com.google.auth.oauth2.OAuth2Credentials;
import java.net.URI;

/* loaded from: classes3.dex */
public class UserAuthorizer {

    /* loaded from: classes3.dex */
    public static class Builder {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class ClientAuthenticationType {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ ClientAuthenticationType[] f12145c = {new Enum("CLIENT_SECRET_POST", 0), new Enum("CLIENT_SECRET_BASIC", 1), new Enum("NONE", 2)};

        /* JADX INFO: Fake field, exist only in values array */
        ClientAuthenticationType EF5;

        public static ClientAuthenticationType valueOf(String str) {
            return (ClientAuthenticationType) Enum.valueOf(ClientAuthenticationType.class, str);
        }

        public static ClientAuthenticationType[] values() {
            return (ClientAuthenticationType[]) f12145c.clone();
        }
    }

    /* loaded from: classes3.dex */
    public static class TokenResponseWithConfig {

        /* loaded from: classes3.dex */
        public static class Builder {
        }
    }

    /* loaded from: classes3.dex */
    public class UserCredentialsListener implements OAuth2Credentials.CredentialsChangedListener {
    }

    static {
        URI.create("/oauth2callback");
    }
}
