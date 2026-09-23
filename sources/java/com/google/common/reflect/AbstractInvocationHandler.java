package com.google.common.reflect;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;

/* loaded from: classes3.dex */
public abstract class AbstractInvocationHandler implements InvocationHandler {

    /* renamed from: a, reason: collision with root package name */
    public static final Object[] f12531a = new Object[0];

    public abstract Object a();

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        if (objArr == null) {
            objArr = f12531a;
        }
        if (objArr.length == 0 && method.getName().equals("hashCode")) {
            return Integer.valueOf(super.hashCode());
        }
        boolean z = true;
        if (objArr.length == 1 && method.getName().equals("equals") && method.getParameterTypes()[0] == Object.class) {
            Object obj2 = objArr[0];
            if (obj2 == null) {
                return Boolean.FALSE;
            }
            if (obj == obj2) {
                return Boolean.TRUE;
            }
            Class<?> cls = obj.getClass();
            if ((!cls.isInstance(obj2) && (!Proxy.isProxyClass(obj2.getClass()) || !Arrays.equals(obj2.getClass().getInterfaces(), cls.getInterfaces()))) || !super.equals(Proxy.getInvocationHandler(obj2))) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
        if (objArr.length == 0 && method.getName().equals("toString")) {
            return super.toString();
        }
        return a();
    }
}
