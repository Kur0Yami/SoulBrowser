package org.apache.commons.lang3;

import java.util.function.Supplier;

/* loaded from: classes4.dex */
public final class SystemProperties {
    public static String a(String str, Supplier supplier) {
        try {
            if (StringUtils.c(str)) {
                return (String) supplier.get();
            }
            CharSequence property = System.getProperty(str);
            if (StringUtils.c(property)) {
                property = (CharSequence) supplier.get();
            }
            return (String) property;
        } catch (SecurityException unused) {
            return (String) supplier.get();
        }
    }
}
