package com.google.gson.internal;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public abstract class UnsafeAllocator {

    /* renamed from: a, reason: collision with root package name */
    public static final UnsafeAllocator f12697a;

    /* renamed from: com.google.gson.internal.UnsafeAllocator$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends UnsafeAllocator {
        @Override // com.google.gson.internal.UnsafeAllocator
        public final Object a(Class cls) {
            throw new UnsupportedOperationException("Cannot allocate " + cls + ". Usage of JDK sun.misc.Unsafe is enabled, but it could not be used. Make sure your runtime is configured correctly.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v6, types: [com.google.gson.internal.UnsafeAllocator] */
    /* JADX WARN: Type inference failed for: r8v9 */
    static {
        ?? r8;
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            final Object obj = declaredField.get(null);
            final Method method = cls.getMethod("allocateInstance", Class.class);
            r8 = new UnsafeAllocator() { // from class: com.google.gson.internal.UnsafeAllocator.1
                @Override // com.google.gson.internal.UnsafeAllocator
                public final Object a(Class cls2) {
                    String a2 = ConstructorConstructor.a(cls2);
                    if (a2 == null) {
                        return method.invoke(obj, cls2);
                    }
                    throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(a2));
                }
            };
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    final int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    final Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    r8 = new UnsafeAllocator() { // from class: com.google.gson.internal.UnsafeAllocator.2
                        @Override // com.google.gson.internal.UnsafeAllocator
                        public final Object a(Class cls2) {
                            String a2 = ConstructorConstructor.a(cls2);
                            if (a2 == null) {
                                return declaredMethod2.invoke(null, cls2, Integer.valueOf(intValue));
                            }
                            throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(a2));
                        }
                    };
                } catch (Exception unused2) {
                    final Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    r8 = new UnsafeAllocator() { // from class: com.google.gson.internal.UnsafeAllocator.3
                        @Override // com.google.gson.internal.UnsafeAllocator
                        public final Object a(Class cls2) {
                            String a2 = ConstructorConstructor.a(cls2);
                            if (a2 == null) {
                                return declaredMethod3.invoke(null, cls2, Object.class);
                            }
                            throw new AssertionError("UnsafeAllocator is used for non-instantiable type: ".concat(a2));
                        }
                    };
                }
            } catch (Exception unused3) {
                r8 = new Object();
            }
        }
        f12697a = r8;
    }

    public abstract Object a(Class cls);
}
