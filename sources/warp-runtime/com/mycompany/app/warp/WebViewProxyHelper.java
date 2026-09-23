package com.mycompany.app.warp;

import android.os.Build;
import android.util.Log;
import android.webkit.WebView;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/**
 * Applies process-wide WebView proxy overrides via Chromium support-lib boundary
 * APIs (androidx.webkit ProxyController stubs in this APK are empty).
 */
public final class WebViewProxyHelper {
    private static final String TAG = "WebViewProxyHelper";
    private static final String FEATURE = "PROXY_OVERRIDE";

    private WebViewProxyHelper() {}

    public static boolean isSupported() {
        try {
            Class<?> feature = Class.forName("androidx.webkit.WebViewFeature");
            Method isSupported = feature.getMethod("a", String.class);
            Object result = isSupported.invoke(null, FEATURE);
            return result instanceof Boolean && (Boolean) result;
        } catch (Throwable t) {
            Log.w(TAG, "PROXY_OVERRIDE feature check failed", t);
            return false;
        }
    }

    public static void setHttpProxy(String hostPort, Runnable onDone) throws Exception {
        Object controller = getProxyController();
        String[][] rules = new String[][] {new String[] {"*", hostPort}};
        String[] bypass = new String[] {"localhost", "127.0.0.1", "[::1]", "<local>"};
        Executor executor = Runnable::run;
        Method set = findSetProxyOverride(controller.getClass());
        if (set.getParameterTypes().length == 5) {
            set.invoke(controller, rules, bypass, onDone, executor, Boolean.FALSE);
        } else {
            set.invoke(controller, rules, bypass, onDone, executor);
        }
    }

    public static void clearProxy(Runnable onDone) throws Exception {
        Object controller = getProxyController();
        Method clear = controller.getClass().getMethod("clearProxyOverride", Runnable.class, Executor.class);
        clear.invoke(controller, onDone, (Executor) Runnable::run);
    }

    public static boolean setHttpProxyBlocking(String hostPort, long timeoutMs) {
        CountDownLatch latch = new CountDownLatch(1);
        AtomicReference<Throwable> error = new AtomicReference<>();
        try {
            setHttpProxy(hostPort, latch::countDown);
            if (!latch.await(timeoutMs, TimeUnit.MILLISECONDS)) {
                Log.e(TAG, "setProxyOverride timed out");
                return false;
            }
            return error.get() == null;
        } catch (Throwable t) {
            Log.e(TAG, "setProxyOverride failed", t);
            return false;
        }
    }

    public static boolean clearProxyBlocking(long timeoutMs) {
        CountDownLatch latch = new CountDownLatch(1);
        try {
            clearProxy(latch::countDown);
            return latch.await(timeoutMs, TimeUnit.MILLISECONDS);
        } catch (Throwable t) {
            Log.e(TAG, "clearProxyOverride failed", t);
            return false;
        }
    }

    private static Method findSetProxyOverride(Class<?> cls) throws NoSuchMethodException {
        try {
            return cls.getMethod(
                    "setProxyOverride",
                    String[][].class,
                    String[].class,
                    Runnable.class,
                    Executor.class,
                    boolean.class);
        } catch (NoSuchMethodException unused) {
            return cls.getMethod(
                    "setProxyOverride",
                    String[][].class,
                    String[].class,
                    Runnable.class,
                    Executor.class);
        }
    }

    private static Object getProxyController() throws Exception {
        InvocationHandler factoryHandler = createWebViewProviderFactory();
        Class<?> factoryIface =
                Class.forName("org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface");
        Object factory = castBoundary(factoryIface, factoryHandler);
        Method getProxy = factoryIface.getMethod("getProxyController");
        InvocationHandler proxyHandler = (InvocationHandler) getProxy.invoke(factory);
        Class<?> proxyIface =
                Class.forName("org.chromium.support_lib_boundary.ProxyControllerBoundaryInterface");
        Object controller = castBoundary(proxyIface, proxyHandler);
        if (controller == null) {
            throw new IllegalStateException("ProxyController boundary is null");
        }
        return controller;
    }

    private static InvocationHandler createWebViewProviderFactory() throws Exception {
        ClassLoader classLoader;
        if (Build.VERSION.SDK_INT >= 28) {
            Method getLoader = WebView.class.getMethod("getWebViewClassLoader");
            classLoader = (ClassLoader) getLoader.invoke(null);
        } else {
            Method getFactory = WebView.class.getDeclaredMethod("getFactory");
            getFactory.setAccessible(true);
            Object factory = getFactory.invoke(null);
            classLoader = factory.getClass().getClassLoader();
        }
        Class<?> util =
                Class.forName(
                        "org.chromium.support_lib_glue.SupportLibReflectionUtil", false, classLoader);
        Method create = util.getDeclaredMethod("createWebViewProviderFactory");
        return (InvocationHandler) create.invoke(null);
    }

    private static Object castBoundary(Class<?> iface, InvocationHandler handler) throws Exception {
        if (handler == null) {
            return null;
        }
        try {
            Class<?> util =
                    Class.forName("org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil");
            Method cast = util.getMethod("a", Class.class, InvocationHandler.class);
            return cast.invoke(null, iface, handler);
        } catch (ClassNotFoundException unused) {
            return Proxy.newProxyInstance(iface.getClassLoader(), new Class<?>[] {iface}, handler);
        }
    }
}
