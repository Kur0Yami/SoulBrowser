package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.internal.Finalizer;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public class FinalizableReferenceQueue implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f12164c = Logger.getLogger(FinalizableReferenceQueue.class.getName());

    /* loaded from: classes3.dex */
    public static class DecoupledLoader implements FinalizerLoader {
        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        public final Class a() {
            try {
                return new URLClassLoader(new URL[]{b()}, null).loadClass("com.google.common.base.internal.Finalizer");
            } catch (Exception e) {
                FinalizableReferenceQueue.f12164c.log(Level.WARNING, "Could not load Finalizer in its own class loader. Loading Finalizer in the current class loader instead. As a result, you will not be able to garbage collect this class loader. To support reclaiming this class loader, either resolve the underlying issue, or move Guava to your system class path.", (Throwable) e);
                return null;
            }
        }

        public final URL b() {
            String str = "com.google.common.base.internal.Finalizer".replace('.', '/') + ".class";
            URL resource = getClass().getClassLoader().getResource(str);
            if (resource != null) {
                String url = resource.toString();
                if (url.endsWith(str)) {
                    return new URL(resource, url.substring(0, url.length() - str.length()));
                }
                throw new IOException("Unsupported path style: ".concat(url));
            }
            throw new FileNotFoundException(str);
        }
    }

    /* loaded from: classes3.dex */
    public static final class DirectLoader implements FinalizerLoader {
        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        public final Class a() {
            try {
                Logger logger = Finalizer.f12195c;
                return Finalizer.class;
            } catch (ClassNotFoundException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface FinalizerLoader {
        Class a();
    }

    /* loaded from: classes3.dex */
    public static final class SystemLoader implements FinalizerLoader {
        @Override // com.google.common.base.FinalizableReferenceQueue.FinalizerLoader
        public final Class a() {
            try {
                ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                if (systemClassLoader == null) {
                    return null;
                }
                try {
                    return systemClassLoader.loadClass("com.google.common.base.internal.Finalizer");
                } catch (ClassNotFoundException unused) {
                    return null;
                }
            } catch (SecurityException unused2) {
                FinalizableReferenceQueue.f12164c.info("Not allowed to access system class loader.");
                return null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        FinalizerLoader[] finalizerLoaderArr = {new Object(), new Object(), new Object()};
        for (int i = 0; i < 3; i++) {
            Class a2 = finalizerLoaderArr[i].a();
            if (a2 != null) {
                try {
                    a2.getMethod("startFinalizer", Class.class, ReferenceQueue.class, PhantomReference.class);
                    return;
                } catch (NoSuchMethodException e) {
                    throw new AssertionError(e);
                }
            }
        }
        throw new AssertionError();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }
}
