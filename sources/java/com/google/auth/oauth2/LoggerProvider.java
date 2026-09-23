package com.google.auth.oauth2;

import com.google.gson.Gson;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.helpers.NOPLogger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class LoggerProvider {

    /* renamed from: a, reason: collision with root package name */
    public Logger f12124a;
    public final Class b;

    public LoggerProvider(Class cls) {
        this.b = cls;
    }

    public final Logger a() {
        Logger logger;
        if (this.f12124a == null) {
            Gson gson = Slf4jUtils.f12141a;
            boolean z = LoggingUtils.f12125a;
            if ("true".equalsIgnoreCase(System.getenv("GOOGLE_SDK_JAVA_LOGGING"))) {
                logger = LoggerFactory.d().a(this.b.getName());
            } else {
                logger = NOPLogger.f22692c;
            }
            this.f12124a = logger;
        }
        return this.f12124a;
    }
}
