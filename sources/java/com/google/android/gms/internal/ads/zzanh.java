package com.google.android.gms.internal.ads;

import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class zzanh {

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f4234c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    public static final Pattern d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4235a = new zzer();
    public final StringBuilder b = new StringBuilder();

    public static void a(zzer zzerVar) {
        while (true) {
            for (boolean z = true; zzerVar.B() > 0 && z; z = false) {
                int i = zzerVar.b;
                byte[] bArr = zzerVar.f6834a;
                byte b = bArr[i];
                char c2 = (char) b;
                if (c2 != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r' && c2 != ' ') {
                    int i2 = zzerVar.f6835c;
                    if (i + 2 <= i2) {
                        int i3 = i + 1;
                        if (b == 47) {
                            int i4 = i + 2;
                            if (bArr[i3] == 42) {
                                while (true) {
                                    int i5 = i4 + 1;
                                    if (i5 >= i2) {
                                        break;
                                    }
                                    if (((char) bArr[i4]) == '*' && ((char) bArr[i5]) == '/') {
                                        i2 = i4 + 2;
                                        i4 = i2;
                                    } else {
                                        i4 = i5;
                                    }
                                }
                                zzerVar.G(i2 - zzerVar.b);
                            }
                        } else {
                            continue;
                        }
                    }
                } else {
                    zzerVar.G(1);
                }
            }
            return;
        }
    }

    public static String b(zzer zzerVar, StringBuilder sb) {
        a(zzerVar);
        if (zzerVar.B() == 0) {
            return null;
        }
        String c2 = c(zzerVar, sb);
        if (!c2.isEmpty()) {
            return c2;
        }
        char K = (char) zzerVar.K();
        StringBuilder sb2 = new StringBuilder(String.valueOf(K).length());
        sb2.append(K);
        return sb2.toString();
    }

    public static String c(zzer zzerVar, StringBuilder sb) {
        sb.setLength(0);
        int i = zzerVar.b;
        int i2 = zzerVar.f6835c;
        loop0: while (true) {
            for (boolean z = false; i < i2 && !z; z = true) {
                char c2 = (char) zzerVar.f6834a[i];
                if ((c2 >= 'A' && c2 <= 'Z') || ((c2 >= 'a' && c2 <= 'z') || ((c2 >= '0' && c2 <= '9') || c2 == '#' || c2 == '-' || c2 == '.' || c2 == '_'))) {
                    sb.append(c2);
                    i++;
                }
            }
        }
        zzerVar.G(i - zzerVar.b);
        return sb.toString();
    }
}
