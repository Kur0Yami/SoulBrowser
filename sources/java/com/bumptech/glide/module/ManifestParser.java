package com.bumptech.glide.module;

import java.lang.reflect.InvocationTargetException;

@Deprecated
/* loaded from: classes.dex */
public final class ManifestParser {
    public static GlideModule a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            try {
                Object newInstance = cls.getDeclaredConstructor(null).newInstance(null);
                if (newInstance instanceof GlideModule) {
                    return (GlideModule) newInstance;
                }
                throw new RuntimeException("Expected instanceof GlideModule, but found: " + newInstance);
            } catch (IllegalAccessException e) {
                b(cls, e);
                throw null;
            } catch (InstantiationException e2) {
                b(cls, e2);
                throw null;
            } catch (NoSuchMethodException e3) {
                b(cls, e3);
                throw null;
            } catch (InvocationTargetException e4) {
                b(cls, e4);
                throw null;
            }
        } catch (ClassNotFoundException e5) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e5);
        }
    }

    public static void b(Class cls, ReflectiveOperationException reflectiveOperationException) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, reflectiveOperationException);
    }
}
