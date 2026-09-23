package org.apache.commons.lang3;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Collection;
import j$.util.DesugarCollections;
import j$.util.Map;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import kotlin.text.Typography;

/* loaded from: classes4.dex */
public class ClassUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f22343a;
    public static final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public static final HashMap f22344c;
    public static final Map d;
    public static final Map e;

    /* renamed from: org.apache.commons.lang3.ClassUtils$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass1 implements Iterator<Class<?>> {
        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Class<?> next() {
            throw null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: org.apache.commons.lang3.ClassUtils$2, reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass2 implements Iterator<Class<?>> {
        @Override // java.util.Iterator
        public final boolean hasNext() {
            throw null;
        }

        @Override // java.util.Iterator
        public final Class<?> next() {
            throw null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class Interfaces {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Interfaces[] f22345c = {new Enum("INCLUDE", 0), new Enum("EXCLUDE", 1)};

        /* JADX INFO: Fake field, exist only in values array */
        Interfaces EF5;

        public static Interfaces valueOf(String str) {
            return (Interfaces) Enum.valueOf(Interfaces.class, str);
        }

        public static Interfaces[] values() {
            return (Interfaces[]) f22345c.clone();
        }
    }

    static {
        String.valueOf('.');
        String.valueOf(Typography.dollar);
        HashMap hashMap = new HashMap();
        f22343a = hashMap;
        Class cls = Boolean.TYPE;
        hashMap.put(cls.getName(), cls);
        Class cls2 = Byte.TYPE;
        hashMap.put(cls2.getName(), cls2);
        Class cls3 = Character.TYPE;
        hashMap.put(cls3.getName(), cls3);
        Class cls4 = Double.TYPE;
        hashMap.put(cls4.getName(), cls4);
        Class cls5 = Float.TYPE;
        hashMap.put(cls5.getName(), cls5);
        Class cls6 = Integer.TYPE;
        hashMap.put(cls6.getName(), cls6);
        Class cls7 = Long.TYPE;
        hashMap.put(cls7.getName(), cls7);
        Class cls8 = Short.TYPE;
        hashMap.put(cls8.getName(), cls8);
        Class cls9 = Void.TYPE;
        hashMap.put(cls9.getName(), cls9);
        HashMap hashMap2 = new HashMap();
        b = hashMap2;
        hashMap2.put(cls, Boolean.class);
        hashMap2.put(cls2, Byte.class);
        hashMap2.put(cls3, Character.class);
        hashMap2.put(cls8, Short.class);
        hashMap2.put(cls6, Integer.class);
        hashMap2.put(cls7, Long.class);
        hashMap2.put(cls4, Double.class);
        hashMap2.put(cls5, Float.class);
        hashMap2.put(cls9, cls9);
        f22344c = new HashMap();
        Map.EL.forEach(hashMap2, new f(0));
        HashMap hashMap3 = new HashMap();
        hashMap3.put(cls6.getName(), "I");
        hashMap3.put(cls.getName(), "Z");
        hashMap3.put(cls5.getName(), "F");
        hashMap3.put(cls7.getName(), "J");
        hashMap3.put(cls8.getName(), "S");
        hashMap3.put(cls2.getName(), "B");
        hashMap3.put(cls4.getName(), "D");
        hashMap3.put(cls3.getName(), "C");
        d = DesugarCollections.unmodifiableMap(hashMap3);
        e = DesugarCollections.unmodifiableMap((java.util.Map) Collection.EL.stream(hashMap3.entrySet()).collect(Collectors.toMap(new b(1), new b(2))));
    }

    public static void a(Class cls, LinkedHashSet linkedHashSet) {
        while (cls != null) {
            for (Class<?> cls2 : cls.getInterfaces()) {
                if (linkedHashSet.add(cls2)) {
                    a(cls2, linkedHashSet);
                }
            }
            cls = cls.getSuperclass();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean b(Class cls, Class cls2, boolean z) {
        if (cls2 != 0) {
            if (cls == null) {
                return !cls2.isPrimitive();
            }
            if (z) {
                if (!cls.isPrimitive() || cls2.isPrimitive() || (cls = c(cls)) != null) {
                    if (cls2.isPrimitive() && !cls.isPrimitive() && (cls = (Class) f22344c.get(cls)) == null) {
                        return false;
                    }
                } else {
                    return false;
                }
            }
            if (!cls.equals(cls2)) {
                if (cls.isPrimitive()) {
                    if (cls2.isPrimitive()) {
                        Class cls3 = Integer.TYPE;
                        boolean equals = cls3.equals(cls);
                        Class cls4 = Long.TYPE;
                        Class cls5 = Double.TYPE;
                        Class cls6 = Float.TYPE;
                        if (equals) {
                            if (!cls4.equals(cls2) && !cls6.equals(cls2) && !cls5.equals(cls2)) {
                                return false;
                            }
                        } else if (cls4.equals(cls)) {
                            if (!cls6.equals(cls2) && !cls5.equals(cls2)) {
                                return false;
                            }
                        } else if (!Boolean.TYPE.equals(cls) && !cls5.equals(cls)) {
                            if (cls6.equals(cls)) {
                                return cls5.equals(cls2);
                            }
                            if (!Character.TYPE.equals(cls)) {
                                Class cls7 = Short.TYPE;
                                if (!cls7.equals(cls)) {
                                    if (Byte.TYPE.equals(cls)) {
                                        if (!cls7.equals(cls2) && !cls3.equals(cls2) && !cls4.equals(cls2) && !cls6.equals(cls2) && !cls5.equals(cls2)) {
                                            return false;
                                        }
                                    } else {
                                        return false;
                                    }
                                }
                            }
                            if (!cls3.equals(cls2) && !cls4.equals(cls2) && !cls6.equals(cls2) && !cls5.equals(cls2)) {
                                return false;
                            }
                        } else {
                            return false;
                        }
                    } else {
                        return false;
                    }
                } else {
                    return cls2.isAssignableFrom(cls);
                }
            }
            return true;
        }
        return false;
    }

    public static Class c(Class cls) {
        if (cls != null && cls.isPrimitive()) {
            return (Class) b.get(cls);
        }
        return cls;
    }

    public static String d(String str) {
        if (!StringUtils.c(str)) {
            int length = str.length();
            char[] cArr = new char[length];
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (!Character.isWhitespace(str.charAt(i2))) {
                    cArr[i] = str.charAt(i2);
                    i++;
                }
            }
            if (i != length) {
                if (i == 0) {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    str = new String(cArr, 0, i);
                }
            }
        }
        Objects.requireNonNull(str, "className");
        if (str.endsWith("[]")) {
            StringBuilder sb = new StringBuilder();
            while (str.endsWith("[]")) {
                str = str.substring(0, str.length() - 2);
                sb.append("[");
            }
            String str2 = (String) d.get(str);
            if (str2 != null) {
                sb.append(str2);
            } else {
                android.support.v4.media.a.y(sb, "L", str, ";");
            }
            return sb.toString();
        }
        return str;
    }
}
