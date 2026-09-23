package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.AbstractList;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Throwables {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f12191a;
    public static final Method b;

    /* renamed from: c, reason: collision with root package name */
    public static final Method f12192c;

    /* renamed from: com.google.common.base.Throwables$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AbstractList<StackTraceElement> {
        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            Method method = Throwables.b;
            j$.util.Objects.requireNonNull(method);
            Object obj = Throwables.f12191a;
            j$.util.Objects.requireNonNull(obj);
            try {
                return (StackTraceElement) method.invoke(obj, null, Integer.valueOf(i));
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                Throwable cause = e2.getCause();
                Throwables.a(cause);
                throw new RuntimeException(cause);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            Method method = Throwables.f12192c;
            j$.util.Objects.requireNonNull(method);
            Object obj = Throwables.f12191a;
            j$.util.Objects.requireNonNull(obj);
            try {
                return ((Integer) method.invoke(obj, null)).intValue();
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                Throwable cause = e2.getCause();
                Throwables.a(cause);
                throw new RuntimeException(cause);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0037 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            r0 = 0
            r1 = 0
            java.lang.String r2 = "sun.misc.SharedSecrets"
            java.lang.Class r2 = java.lang.Class.forName(r2, r0, r1)     // Catch: java.lang.Throwable -> L13 java.lang.ThreadDeath -> L60
            java.lang.String r3 = "getJavaLangAccess"
            java.lang.reflect.Method r2 = r2.getMethod(r3, r1)     // Catch: java.lang.Throwable -> L13 java.lang.ThreadDeath -> L60
            java.lang.Object r2 = r2.invoke(r1, r1)     // Catch: java.lang.Throwable -> L13 java.lang.ThreadDeath -> L60
            goto L14
        L13:
            r2 = r1
        L14:
            com.google.common.base.Throwables.f12191a = r2
            r3 = 1
            java.lang.String r4 = "sun.misc.JavaLangAccess"
            java.lang.Class<java.lang.Throwable> r5 = java.lang.Throwable.class
            if (r2 != 0) goto L1f
        L1d:
            r6 = r1
            goto L32
        L1f:
            java.lang.String r6 = "getStackTraceElement"
            r7 = 2
            java.lang.Class[] r7 = new java.lang.Class[r7]
            r7[r0] = r5
            java.lang.Class r8 = java.lang.Integer.TYPE
            r7[r3] = r8
            java.lang.Class r8 = java.lang.Class.forName(r4, r0, r1)     // Catch: java.lang.Throwable -> L1d java.lang.ThreadDeath -> L5e
            java.lang.reflect.Method r6 = r8.getMethod(r6, r7)     // Catch: java.lang.Throwable -> L1d java.lang.ThreadDeath -> L5e
        L32:
            com.google.common.base.Throwables.b = r6
            if (r2 != 0) goto L37
            goto L5b
        L37:
            java.lang.String r6 = "getStackTraceDepth"
            java.lang.Class[] r7 = new java.lang.Class[r3]     // Catch: java.lang.Throwable -> L5b
            r7[r0] = r5     // Catch: java.lang.Throwable -> L5b
            java.lang.Class r4 = java.lang.Class.forName(r4, r0, r1)     // Catch: java.lang.ThreadDeath -> L46 java.lang.Throwable -> L48
            java.lang.reflect.Method r4 = r4.getMethod(r6, r7)     // Catch: java.lang.ThreadDeath -> L46 java.lang.Throwable -> L48
            goto L49
        L46:
            r0 = move-exception
            goto L5a
        L48:
            r4 = r1
        L49:
            if (r4 != 0) goto L4c
            goto L5b
        L4c:
            java.lang.Throwable r5 = new java.lang.Throwable     // Catch: java.lang.Throwable -> L5b java.lang.Throwable -> L5b java.lang.Throwable -> L5b
            r5.<init>()     // Catch: java.lang.Throwable -> L5b java.lang.Throwable -> L5b java.lang.Throwable -> L5b
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L5b java.lang.Throwable -> L5b java.lang.Throwable -> L5b
            r3[r0] = r5     // Catch: java.lang.Throwable -> L5b java.lang.Throwable -> L5b java.lang.Throwable -> L5b
            r4.invoke(r2, r3)     // Catch: java.lang.Throwable -> L5b java.lang.Throwable -> L5b java.lang.Throwable -> L5b
            r1 = r4
            goto L5b
        L5a:
            throw r0     // Catch: java.lang.Throwable -> L5b java.lang.Throwable -> L5b java.lang.Throwable -> L5b
        L5b:
            com.google.common.base.Throwables.f12192c = r1
            return
        L5e:
            r0 = move-exception
            throw r0
        L60:
            r0 = move-exception
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.base.Throwables.<clinit>():void");
    }

    public static void a(Throwable th) {
        th.getClass();
        if (!(th instanceof RuntimeException)) {
            if (!(th instanceof Error)) {
                return;
            } else {
                throw ((Error) th);
            }
        }
        throw ((RuntimeException) th);
    }
}
