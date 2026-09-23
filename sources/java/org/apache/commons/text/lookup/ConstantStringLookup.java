package org.apache.commons.text.lookup;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import kotlin.text.Typography;
import org.apache.commons.lang3.ClassUtils;

/* loaded from: classes4.dex */
class ConstantStringLookup extends AbstractStringLookup {
    public static final ConcurrentHashMap b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    public static final ConstantStringLookup f22476c = new Object();

    public static Object c(String str, String str2) {
        int lastIndexOf;
        HashMap hashMap = ClassUtils.f22343a;
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        if (contextClassLoader == null) {
            contextClassLoader = ClassUtils.class.getClassLoader();
        }
        do {
            try {
                Class<?> cls = (Class) ClassUtils.f22343a.get(str);
                if (cls == null) {
                    cls = Class.forName(ClassUtils.d(str), true, contextClassLoader);
                }
                if (cls == null) {
                    return null;
                }
                return cls.getField(str2).get(null);
            } catch (ClassNotFoundException unused) {
                lastIndexOf = str.lastIndexOf(46);
                if (lastIndexOf != -1) {
                    str = str.substring(0, lastIndexOf) + Typography.dollar + str.substring(lastIndexOf + 1);
                }
            }
        } while (lastIndexOf != -1);
        throw new ClassNotFoundException(str);
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public final synchronized String a(String str) {
        if (str == null) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = b;
        String str2 = (String) concurrentHashMap.get(str);
        if (str2 != null) {
            return str2;
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf < 0) {
            return null;
        }
        try {
            Object c2 = c(str.substring(0, lastIndexOf), str.substring(lastIndexOf + 1));
            if (c2 != null) {
                str2 = Objects.toString(c2, null);
                concurrentHashMap.put(str, str2);
            }
            return str2;
        } catch (Exception unused) {
            return null;
        }
    }
}
