package com.google.gson.internal;

/* loaded from: classes3.dex */
public final class JavaVersion {

    /* renamed from: a, reason: collision with root package name */
    public static final int f12686a;

    static {
        int i;
        String property = System.getProperty("java.version");
        try {
            String[] split2 = property.split("[._]", 3);
            i = Integer.parseInt(split2[0]);
            if (i == 1 && split2.length > 1) {
                i = Integer.parseInt(split2[1]);
            }
        } catch (NumberFormatException unused) {
            i = -1;
        }
        if (i == -1) {
            try {
                StringBuilder sb = new StringBuilder();
                for (int i2 = 0; i2 < property.length(); i2++) {
                    char charAt = property.charAt(i2);
                    if (!Character.isDigit(charAt)) {
                        break;
                    }
                    sb.append(charAt);
                }
                i = Integer.parseInt(sb.toString());
            } catch (NumberFormatException unused2) {
                i = -1;
            }
        }
        if (i == -1) {
            i = 6;
        }
        f12686a = i;
    }
}
