package org.slf4j;

import java.io.Closeable;
import org.slf4j.helpers.Util;
import org.slf4j.impl.StaticMDCBinder;
import org.slf4j.spi.MDCAdapter;

/* loaded from: classes4.dex */
public class MDC {

    /* renamed from: a, reason: collision with root package name */
    public static final MDCAdapter f22687a;

    /* loaded from: classes4.dex */
    public static class MDCCloseable implements Closeable {
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            MDCAdapter mDCAdapter = MDC.f22687a;
            throw new IllegalArgumentException("key parameter cannot be null");
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, org.slf4j.spi.MDCAdapter] */
    static {
        try {
            f22687a = a();
        } catch (Exception e) {
            Util.c("MDC binding unsuccessful.", e);
        } catch (NoClassDefFoundError e2) {
            f22687a = new Object();
            String message = e2.getMessage();
            if (message != null && message.contains("StaticMDCBinder")) {
                Util.b("Failed to load class \"org.slf4j.impl.StaticMDCBinder\".");
                Util.b("Defaulting to no-operation MDCAdapter implementation.");
                Util.b("See http://www.slf4j.org/codes.html#no_static_mdc_binder for further details.");
                return;
            }
            throw e2;
        }
    }

    public static MDCAdapter a() {
        try {
            return StaticMDCBinder.getSingleton().getMDCA();
        } catch (NoSuchMethodError unused) {
            return StaticMDCBinder.SINGLETON.getMDCA();
        }
    }
}
