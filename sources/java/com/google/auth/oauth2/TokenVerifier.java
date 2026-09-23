package com.google.auth.oauth2;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;
import com.google.common.cache.CacheLoader;
import com.google.common.collect.ImmutableSet;
import java.security.PublicKey;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class TokenVerifier {

    /* loaded from: classes3.dex */
    public static class Builder {
    }

    /* loaded from: classes3.dex */
    public static class PublicKeyLoader extends CacheLoader<String, Map<String, PublicKey>> {

        /* loaded from: classes3.dex */
        public static class JsonWebKey {

            @Key
            public String alg;

            @Key
            public String crv;

            @Key
            public String e;

            @Key
            public String kid;

            @Key
            public String kty;

            @Key
            public String n;

            @Key
            public String use;

            @Key
            public String x;

            @Key
            public String y;
        }

        /* loaded from: classes3.dex */
        public static class JsonWebKeySet extends GenericJson {

            @Key
            public List<JsonWebKey> keys;
        }

        @Override // com.google.common.cache.CacheLoader
        public final Object b(Object obj) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class VerificationException extends Exception {
    }

    static {
        ImmutableSet.s(2, "RS256", "ES256");
    }
}
