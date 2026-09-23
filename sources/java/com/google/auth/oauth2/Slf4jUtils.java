package com.google.auth.oauth2;

import com.google.gson.Gson;
import j$.util.Map;
import j$.util.function.BiConsumer$CC;
import java.util.Map;
import java.util.function.BiConsumer;
import org.slf4j.Logger;
import org.slf4j.MDC;
import org.slf4j.event.Level;
import org.slf4j.spi.LoggingEventBuilder;
import org.slf4j.spi.MDCAdapter;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class Slf4jUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final Gson f12141a = new Gson();
    public static final boolean b;

    /* renamed from: com.google.auth.oauth2.Slf4jUtils$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f12142a;

        static {
            int[] iArr = new int[Level.values().length];
            f12142a = iArr;
            try {
                iArr[4] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12142a[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12142a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12142a[1] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f12142a[0] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class DefaultLoggerFactoryProvider implements LoggerFactoryProvider {
    }

    /* loaded from: classes3.dex */
    public interface LoggerFactoryProvider {
    }

    static {
        boolean z;
        try {
            Class.forName("org.slf4j.event.KeyValuePair");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        b = z;
    }

    public static void a(Logger logger, Level level, Map map, String str) {
        if (b) {
            b(logger, level, map, str);
            return;
        }
        if (!map.isEmpty()) {
            for (Map.Entry entry : map.entrySet()) {
                String str2 = (String) entry.getKey();
                Object value = entry.getValue();
                if (!(value instanceof String)) {
                    f12141a.e(value);
                }
                if (str2 != null) {
                    MDCAdapter mDCAdapter = MDC.f22687a;
                    if (mDCAdapter != null) {
                        mDCAdapter.a(str2);
                    } else {
                        throw new IllegalStateException("MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA");
                    }
                } else {
                    MDCAdapter mDCAdapter2 = MDC.f22687a;
                    throw new IllegalArgumentException("key parameter cannot be null");
                }
            }
        }
        int ordinal = level.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            logger.e(str);
                        } else {
                            logger.i(str);
                        }
                    } else {
                        logger.e(str);
                    }
                } else {
                    logger.g(str);
                }
            } else {
                logger.h(str);
            }
        } else {
            logger.b(str);
        }
        if (!map.isEmpty()) {
            MDCAdapter mDCAdapter3 = MDC.f22687a;
            if (mDCAdapter3 != null) {
                mDCAdapter3.clear();
                return;
            }
            throw new IllegalStateException("MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA");
        }
    }

    public static void b(Logger logger, Level level, Map map, String str) {
        final LoggingEventBuilder atError;
        int ordinal = level.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal != 4) {
                            atError = logger.atDebug();
                        } else {
                            atError = logger.atTrace();
                        }
                    } else {
                        atError = logger.atDebug();
                    }
                } else {
                    atError = logger.atInfo();
                }
            } else {
                atError = logger.atWarn();
            }
        } else {
            atError = logger.atError();
        }
        atError.getClass();
        Map.EL.forEach(map, new BiConsumer() { // from class: com.google.auth.oauth2.c
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                atError.addKeyValue((String) obj, obj2);
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        });
        atError.log(str);
    }
}
