package com.google.common.eventbus;

import com.google.common.base.Function;
import com.google.common.base.Strings;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.eventbus.SubscriberRegistry;
import com.google.common.primitives.Primitives;
import com.google.common.reflect.TypeToken;
import j$.util.Objects;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
final class SubscriberRegistry {

    /* renamed from: a, reason: collision with root package name */
    public static final LoadingCache f12433a;
    public static final LoadingCache b;

    /* loaded from: classes3.dex */
    public static final class MethodIdentifier {

        /* renamed from: a, reason: collision with root package name */
        public final String f12434a;
        public final List b;

        public MethodIdentifier(Method method) {
            this.f12434a = method.getName();
            this.b = Arrays.asList(method.getParameterTypes());
        }

        public final boolean equals(Object obj) {
            if (obj instanceof MethodIdentifier) {
                MethodIdentifier methodIdentifier = (MethodIdentifier) obj;
                if (this.f12434a.equals(methodIdentifier.f12434a) && this.b.equals(methodIdentifier.b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.f12434a, this.b);
        }
    }

    static {
        CacheBuilder b2 = CacheBuilder.b();
        b2.c();
        final int i = 0;
        f12433a = b2.a(CacheLoader.a(new Function() { // from class: com.google.common.eventbus.a
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                boolean z;
                Class cls = (Class) obj;
                switch (i) {
                    case 0:
                        LoadingCache loadingCache = SubscriberRegistry.f12433a;
                        Set B0 = new TypeToken.TypeSet().B0();
                        HashMap hashMap = new HashMap();
                        Iterator it = B0.iterator();
                        while (it.hasNext()) {
                            for (Method method : ((Class) it.next()).getDeclaredMethods()) {
                                if (method.isAnnotationPresent(Subscribe.class) && !method.isSynthetic()) {
                                    Class<?>[] parameterTypes = method.getParameterTypes();
                                    if (parameterTypes.length == 1) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    int length = parameterTypes.length;
                                    if (z) {
                                        boolean isPrimitive = parameterTypes[0].isPrimitive();
                                        String name = parameterTypes[0].getName();
                                        Class<?> cls2 = parameterTypes[0];
                                        Map map = Primitives.f12519a;
                                        cls2.getClass();
                                        Class<?> cls3 = (Class) Primitives.f12519a.get(cls2);
                                        if (cls3 != null) {
                                            cls2 = cls3;
                                        }
                                        String simpleName = cls2.getSimpleName();
                                        if (!isPrimitive) {
                                            SubscriberRegistry.MethodIdentifier methodIdentifier = new SubscriberRegistry.MethodIdentifier(method);
                                            if (!hashMap.containsKey(methodIdentifier)) {
                                                hashMap.put(methodIdentifier, method);
                                            }
                                        } else {
                                            throw new IllegalArgumentException(Strings.a("@Subscribe method %s's parameter is %s. Subscriber methods cannot accept primitives. Consider changing the parameter to %s.", method, name, simpleName));
                                        }
                                    } else {
                                        throw new IllegalArgumentException(Strings.a("Method %s has @Subscribe annotation but has %s parameters. Subscriber methods must have exactly 1 parameter.", method, Integer.valueOf(length)));
                                    }
                                }
                            }
                        }
                        return ImmutableList.s(hashMap.values());
                    default:
                        LoadingCache loadingCache2 = SubscriberRegistry.f12433a;
                        return ImmutableSet.t(new TypeToken.TypeSet().B0());
                }
            }
        }));
        CacheBuilder b3 = CacheBuilder.b();
        b3.c();
        final int i2 = 1;
        b = b3.a(CacheLoader.a(new Function() { // from class: com.google.common.eventbus.a
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                boolean z;
                Class cls = (Class) obj;
                switch (i2) {
                    case 0:
                        LoadingCache loadingCache = SubscriberRegistry.f12433a;
                        Set B0 = new TypeToken.TypeSet().B0();
                        HashMap hashMap = new HashMap();
                        Iterator it = B0.iterator();
                        while (it.hasNext()) {
                            for (Method method : ((Class) it.next()).getDeclaredMethods()) {
                                if (method.isAnnotationPresent(Subscribe.class) && !method.isSynthetic()) {
                                    Class<?>[] parameterTypes = method.getParameterTypes();
                                    if (parameterTypes.length == 1) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    int length = parameterTypes.length;
                                    if (z) {
                                        boolean isPrimitive = parameterTypes[0].isPrimitive();
                                        String name = parameterTypes[0].getName();
                                        Class<?> cls2 = parameterTypes[0];
                                        Map map = Primitives.f12519a;
                                        cls2.getClass();
                                        Class<?> cls3 = (Class) Primitives.f12519a.get(cls2);
                                        if (cls3 != null) {
                                            cls2 = cls3;
                                        }
                                        String simpleName = cls2.getSimpleName();
                                        if (!isPrimitive) {
                                            SubscriberRegistry.MethodIdentifier methodIdentifier = new SubscriberRegistry.MethodIdentifier(method);
                                            if (!hashMap.containsKey(methodIdentifier)) {
                                                hashMap.put(methodIdentifier, method);
                                            }
                                        } else {
                                            throw new IllegalArgumentException(Strings.a("@Subscribe method %s's parameter is %s. Subscriber methods cannot accept primitives. Consider changing the parameter to %s.", method, name, simpleName));
                                        }
                                    } else {
                                        throw new IllegalArgumentException(Strings.a("Method %s has @Subscribe annotation but has %s parameters. Subscriber methods must have exactly 1 parameter.", method, Integer.valueOf(length)));
                                    }
                                }
                            }
                        }
                        return ImmutableList.s(hashMap.values());
                    default:
                        LoadingCache loadingCache2 = SubscriberRegistry.f12433a;
                        return ImmutableSet.t(new TypeToken.TypeSet().B0());
                }
            }
        }));
    }
}
