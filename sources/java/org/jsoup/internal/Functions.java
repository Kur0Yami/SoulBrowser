package org.jsoup.internal;

import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes4.dex */
public final class Functions {

    /* renamed from: a, reason: collision with root package name */
    public static final a f22547a = new a(0);
    public static final a b = new a(1);

    /* renamed from: c, reason: collision with root package name */
    public static final a f22548c = new a(2);
    public static final a d = new a(3);

    public static <T, K, V> Function<T, IdentityHashMap<K, V>> identityMapFunction() {
        return d;
    }

    public static <T, U> Function<T, List<U>> listFunction() {
        return f22547a;
    }

    public static <T, K, V> Function<T, Map<K, V>> mapFunction() {
        return f22548c;
    }

    public static <T, U> Function<T, Set<U>> setFunction() {
        return b;
    }
}
