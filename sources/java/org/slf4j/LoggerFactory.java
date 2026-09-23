package org.slf4j;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.LinkedBlockingQueue;
import kotlin.uuid.Uuid;
import org.slf4j.event.SubstituteLoggingEvent;
import org.slf4j.helpers.NOPLogger;
import org.slf4j.helpers.NOPLoggerFactory;
import org.slf4j.helpers.SubstituteLogger;
import org.slf4j.helpers.SubstituteLoggerFactory;
import org.slf4j.helpers.Util;
import org.slf4j.impl.StaticLoggerBinder;

/* loaded from: classes4.dex */
public final class LoggerFactory {

    /* renamed from: a, reason: collision with root package name */
    public static volatile int f22685a;
    public static final SubstituteLoggerFactory b = new SubstituteLoggerFactory();

    /* renamed from: c, reason: collision with root package name */
    public static final NOPLoggerFactory f22686c = new Object();
    public static final boolean d;
    public static final String[] e;
    public static final String f;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, org.slf4j.helpers.NOPLoggerFactory] */
    static {
        String str;
        boolean equalsIgnoreCase;
        try {
            str = System.getProperty("slf4j.detectLoggerNameMismatch");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str == null) {
            equalsIgnoreCase = false;
        } else {
            equalsIgnoreCase = str.equalsIgnoreCase("true");
        }
        d = equalsIgnoreCase;
        e = new String[]{"1.6", "1.7"};
        f = "org/slf4j/impl/StaticLoggerBinder.class";
    }

    public static final void a() {
        LinkedHashSet linkedHashSet;
        try {
            if (!f()) {
                linkedHashSet = b();
                i(linkedHashSet);
            } else {
                linkedHashSet = null;
            }
            StaticLoggerBinder.getSingleton();
            f22685a = 3;
            h(linkedHashSet);
            c();
            g();
            SubstituteLoggerFactory substituteLoggerFactory = b;
            substituteLoggerFactory.b.clear();
            substituteLoggerFactory.f22695c.clear();
        } catch (Exception e2) {
            f22685a = 2;
            Util.c("Failed to instantiate SLF4J LoggerFactory", e2);
            throw new IllegalStateException("Unexpected initialization failure", e2);
        } catch (NoClassDefFoundError e3) {
            String message = e3.getMessage();
            if (message != null && (message.contains("org/slf4j/impl/StaticLoggerBinder") || message.contains("org.slf4j.impl.StaticLoggerBinder"))) {
                f22685a = 4;
                Util.b("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
                Util.b("Defaulting to no-operation (NOP) logger implementation");
                Util.b("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
                return;
            }
            f22685a = 2;
            Util.c("Failed to instantiate SLF4J LoggerFactory", e3);
            throw e3;
        } catch (NoSuchMethodError e4) {
            String message2 = e4.getMessage();
            if (message2 != null && message2.contains("org.slf4j.impl.StaticLoggerBinder.getSingleton()")) {
                f22685a = 2;
                Util.b("slf4j-api 1.6.x (or later) is incompatible with this binding.");
                Util.b("Your binding is version 1.5.5 or earlier.");
                Util.b("Upgrade your binding to version 1.6.x.");
            }
            throw e4;
        }
    }

    public static LinkedHashSet b() {
        Enumeration<URL> resources;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            ClassLoader classLoader = LoggerFactory.class.getClassLoader();
            String str = f;
            if (classLoader == null) {
                resources = ClassLoader.getSystemResources(str);
            } else {
                resources = classLoader.getResources(str);
            }
            while (resources.hasMoreElements()) {
                linkedHashSet.add(resources.nextElement());
            }
            return linkedHashSet;
        } catch (IOException e2) {
            Util.c("Error getting resources from path", e2);
            return linkedHashSet;
        }
    }

    public static void c() {
        SubstituteLoggerFactory substituteLoggerFactory = b;
        synchronized (substituteLoggerFactory) {
            try {
                substituteLoggerFactory.f22694a = true;
                ArrayList arrayList = new ArrayList(substituteLoggerFactory.b.values());
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    SubstituteLogger substituteLogger = (SubstituteLogger) obj;
                    substituteLogger.f = d().a(substituteLogger.f22693c);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ILoggerFactory d() {
        if (f22685a == 0) {
            synchronized (LoggerFactory.class) {
                try {
                    if (f22685a == 0) {
                        f22685a = 1;
                        a();
                        if (f22685a == 3) {
                            j();
                        }
                    }
                } finally {
                }
            }
        }
        int i = f22685a;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return f22686c;
                    }
                    throw new IllegalStateException("Unreachable code");
                }
                return StaticLoggerBinder.getSingleton().getLoggerFactory();
            }
            throw new IllegalStateException("org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
        }
        return b;
    }

    public static Logger e(Class cls) {
        Class a2;
        Logger a3 = d().a(cls.getName());
        if (d && (a2 = Util.a()) != null && !a2.isAssignableFrom(cls)) {
            Util.b("Detected logger name mismatch. Given name: \"" + a3.getName() + "\"; computed name: \"" + a2.getName() + "\".");
            Util.b("See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation");
        }
        return a3;
    }

    public static boolean f() {
        String str;
        try {
            str = System.getProperty("java.vendor.url");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str == null) {
            return false;
        }
        return str.toLowerCase().contains("android");
    }

    public static void g() {
        LinkedBlockingQueue linkedBlockingQueue = b.f22695c;
        int size = linkedBlockingQueue.size();
        ArrayList arrayList = new ArrayList(Uuid.SIZE_BITS);
        int i = 0;
        while (linkedBlockingQueue.drainTo(arrayList, Uuid.SIZE_BITS) != 0) {
            int size2 = arrayList.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj = arrayList.get(i2);
                i2++;
                SubstituteLoggingEvent substituteLoggingEvent = (SubstituteLoggingEvent) obj;
                if (substituteLoggingEvent != null) {
                    SubstituteLogger substituteLogger = substituteLoggingEvent.f22691a;
                    String str = substituteLogger.f22693c;
                    if (substituteLogger.f != null) {
                        if (!(substituteLogger.f instanceof NOPLogger)) {
                            if (substituteLogger.l()) {
                                if (substituteLogger.l()) {
                                    try {
                                        substituteLogger.h.invoke(substituteLogger.f, substituteLoggingEvent);
                                    } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
                                    }
                                }
                            } else {
                                Util.b(str);
                            }
                        }
                    } else {
                        throw new IllegalStateException("Delegate logger cannot be null at this state.");
                    }
                }
                int i3 = i + 1;
                if (i == 0) {
                    if (substituteLoggingEvent.f22691a.l()) {
                        Util.b("A number (" + size + ") of logging calls during the initialization phase have been intercepted and are");
                        Util.b("now being replayed. These are subject to the filtering rules of the underlying logging system.");
                        Util.b("See also http://www.slf4j.org/codes.html#replay");
                    } else if (!(substituteLoggingEvent.f22691a.f instanceof NOPLogger)) {
                        Util.b("The following set of substitute loggers may have been accessed");
                        Util.b("during the initialization phase. Logging calls during this");
                        Util.b("phase were not honored. However, subsequent logging calls to these");
                        Util.b("loggers will work as normally expected.");
                        Util.b("See also http://www.slf4j.org/codes.html#substituteLogger");
                    }
                }
                i = i3;
            }
            arrayList.clear();
        }
    }

    public static void h(LinkedHashSet linkedHashSet) {
        if (linkedHashSet != null && linkedHashSet.size() > 1) {
            Util.b("Actual binding is of type [" + StaticLoggerBinder.getSingleton().getLoggerFactoryClassStr() + "]");
        }
    }

    public static void i(LinkedHashSet linkedHashSet) {
        if (linkedHashSet.size() > 1) {
            Util.b("Class path contains multiple SLF4J bindings.");
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                Util.b("Found binding in [" + ((URL) it.next()) + "]");
            }
            Util.b("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
        }
    }

    public static final void j() {
        try {
            String str = StaticLoggerBinder.REQUESTED_API_VERSION;
            boolean z = false;
            for (String str2 : e) {
                if (str.startsWith(str2)) {
                    z = true;
                }
            }
            if (!z) {
                Util.b("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(e).toString());
                Util.b("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
            }
        } catch (NoSuchFieldError unused) {
        } catch (Throwable th) {
            Util.c("Unexpected problem occured during version sanity check", th);
        }
    }
}
