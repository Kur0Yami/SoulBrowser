package org.chromium.support_lib_boundary.util;

import androidx.webkit.internal.WebMessageListenerAdapter;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import org.jspecify.annotations.NullMarked;

@NullMarked
/* loaded from: classes4.dex */
public class BoundaryInterfaceReflectionUtil {

    /* loaded from: classes4.dex */
    public static class InvocationHandlerWithDelegateGetter implements InvocationHandler {

        /* renamed from: a, reason: collision with root package name */
        public final WebMessageListenerAdapter f22519a;

        public InvocationHandlerWithDelegateGetter(WebMessageListenerAdapter webMessageListenerAdapter) {
            this.f22519a = webMessageListenerAdapter;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            WebMessageListenerAdapter webMessageListenerAdapter = this.f22519a;
            try {
                return Class.forName(method.getDeclaringClass().getName(), true, webMessageListenerAdapter.getClass().getClassLoader()).getDeclaredMethod(method.getName(), method.getParameterTypes()).invoke(webMessageListenerAdapter, objArr);
            } catch (InvocationTargetException e) {
                throw e.getTargetException();
            } catch (ReflectiveOperationException e2) {
                throw new RuntimeException("Reflection failed for method " + method, e2);
            }
        }
    }

    public static Object a(Class cls, InvocationHandler invocationHandler) {
        if (invocationHandler == null) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(BoundaryInterfaceReflectionUtil.class.getClassLoader(), new Class[]{cls}, invocationHandler));
    }

    public static InvocationHandler b(WebMessageListenerAdapter webMessageListenerAdapter) {
        return new InvocationHandlerWithDelegateGetter(webMessageListenerAdapter);
    }
}
