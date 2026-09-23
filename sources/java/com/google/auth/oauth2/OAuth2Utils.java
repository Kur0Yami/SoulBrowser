package com.google.auth.oauth2;

import com.google.api.client.googleapis.auth.oauth2.GoogleOAuthConstants;
import com.google.api.client.http.HttpStatusCodes;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.util.GenericData;
import com.google.auth.http.HttpTransportFactory;
import java.io.IOException;
import java.math.BigDecimal;
import java.net.URI;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;

/* loaded from: classes3.dex */
public class OAuth2Utils {

    /* renamed from: a, reason: collision with root package name */
    public static final URI f12137a = URI.create(GoogleOAuthConstants.TOKEN_SERVER_URL);
    public static final NetHttpTransport b;

    /* renamed from: c, reason: collision with root package name */
    public static final HttpTransportFactory f12138c;
    public static final GsonFactory d;
    public static final String e;
    public static final String f;
    public static final HashSet g;

    /* loaded from: classes3.dex */
    public static class DefaultHttpTransportFactory implements HttpTransportFactory {
        @Override // com.google.auth.http.HttpTransportFactory
        public final HttpTransport a() {
            return OAuth2Utils.b;
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.auth.http.HttpTransportFactory, java.lang.Object] */
    static {
        URI.create("https://oauth2.googleapis.com/revoke");
        URI.create(GoogleOAuthConstants.AUTHORIZATION_SERVER_URL);
        b = new NetHttpTransport();
        f12138c = new Object();
        d = GsonFactory.getDefaultInstance();
        e = "%sExpected value %s not found.";
        f = "%sExpected %s value %s of wrong type.";
        g = new HashSet(Arrays.asList(500, Integer.valueOf(HttpStatusCodes.STATUS_CODE_SERVICE_UNAVAILABLE), 408, 429));
    }

    public static int a(GenericData genericData) {
        Object obj = genericData.get("expires_in");
        if (obj != null) {
            if (obj instanceof BigDecimal) {
                return ((BigDecimal) obj).intValueExact();
            }
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            throw new IOException(String.format(f, "Error parsing token refresh response. ", "integer", "expires_in"));
        }
        throw new IOException(String.format(e, "Error parsing token refresh response. ", "expires_in"));
    }

    public static String b(String str, String str2, Map map) {
        Object obj = map.get(str);
        if (obj != null) {
            if (obj instanceof String) {
                return (String) obj;
            }
            throw new IOException(String.format(f, str2, "string", str));
        }
        throw new IOException(String.format(e, str2, str));
    }
}
