package com.google.auth.oauth2;

import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.UrlEncodedContent;
import com.google.api.client.http.json.JsonHttpContent;
import com.google.api.client.util.GenericData;
import com.google.gson.Gson;
import j$.util.Map;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.TreeSet;
import kotlin.UByte;
import org.slf4j.Logger;
import org.slf4j.event.Level;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class Slf4jLoggingHelpers {

    /* renamed from: a, reason: collision with root package name */
    public static final Gson f12140a = new Gson();
    public static final TreeSet b;

    static {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        b = treeSet;
        treeSet.addAll(Arrays.asList("token", "assertion", "access_token", "client_secret", "refresh_token", "signedBlob", "authorization"));
    }

    public static String a(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(str.getBytes(StandardCharsets.UTF_8));
            StringBuilder sb = new StringBuilder(digest.length * 2);
            for (byte b2 : digest) {
                String hexString = Integer.toHexString(b2 & UByte.MAX_VALUE);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException unused) {
            return "Error calculating SHA-256 hash.";
        }
    }

    public static void b(HttpRequest httpRequest, LoggerProvider loggerProvider, String str) {
        try {
            Logger a2 = loggerProvider.a();
            if (a2.c()) {
                HashMap hashMap = new HashMap();
                hashMap.put("request.method", httpRequest.getRequestMethod());
                hashMap.put("request.url", httpRequest.getUrl().toString());
                HashMap hashMap2 = new HashMap();
                Map.EL.forEach(httpRequest.getHeaders(), new b(hashMap2, 1));
                Gson gson = f12140a;
                hashMap.put("request.headers", gson.e(hashMap2));
                if (httpRequest.getContent() != null && a2.a()) {
                    if (httpRequest.getContent() instanceof UrlEncodedContent) {
                        hashMap.put("request.payload", gson.e(c((GenericData) ((UrlEncodedContent) httpRequest.getContent()).getData())));
                    } else if (httpRequest.getContent() instanceof JsonHttpContent) {
                        hashMap.put("request.payload", gson.e(((JsonHttpContent) httpRequest.getContent()).getData()));
                    }
                    Slf4jUtils.a(a2, Level.DEBUG, hashMap, str);
                    return;
                }
                Slf4jUtils.a(a2, Level.INFO, hashMap, str);
            }
        } catch (Exception unused) {
        }
    }

    public static HashMap c(GenericData genericData) {
        HashMap hashMap = new HashMap();
        Map.EL.forEach(genericData, new b(hashMap, 0));
        return hashMap;
    }
}
