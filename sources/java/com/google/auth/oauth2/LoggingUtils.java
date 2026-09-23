package com.google.auth.oauth2;

import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.util.GenericData;
import com.google.gson.Gson;
import java.util.HashMap;
import org.slf4j.Logger;
import org.slf4j.event.Level;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class LoggingUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f12125a = "true".equalsIgnoreCase(System.getenv("GOOGLE_SDK_JAVA_LOGGING"));

    public static void a(HttpRequest httpRequest, LoggerProvider loggerProvider, String str) {
        if (f12125a) {
            Slf4jLoggingHelpers.b(httpRequest, loggerProvider, str);
        }
    }

    public static void b(HttpResponse httpResponse, LoggerProvider loggerProvider, String str) {
        if (f12125a) {
            Gson gson = Slf4jLoggingHelpers.f12140a;
            try {
                Logger a2 = loggerProvider.a();
                if (a2.c()) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("response.status", String.valueOf(httpResponse.getStatusCode()));
                    hashMap.put("response.status.message", httpResponse.getStatusMessage());
                    hashMap.put("response.headers", new HashMap(httpResponse.getHeaders()).toString());
                    Slf4jUtils.a(a2, Level.INFO, hashMap, str);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void c(GenericData genericData, LoggerProvider loggerProvider, String str) {
        if (f12125a) {
            Gson gson = Slf4jLoggingHelpers.f12140a;
            try {
                Logger a2 = loggerProvider.a();
                if (a2.a()) {
                    Slf4jUtils.a(a2, Level.DEBUG, Slf4jLoggingHelpers.c(genericData), str);
                }
            } catch (Exception unused) {
            }
        }
    }
}
