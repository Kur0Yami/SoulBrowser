package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class zzakk {
    public static String a(ArrayList arrayList) {
        int size = arrayList.size();
        boolean z = false;
        String str = null;
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str2 = ((zzaky) obj).f4147a.g.m;
            if (zzas.b(str2)) {
                return "video/mp4";
            }
            if (zzas.a(str2)) {
                z = true;
            } else if (zzas.c(str2)) {
                if (Objects.equals(str2, "image/heic")) {
                    str = "image/heif";
                } else if (Objects.equals(str2, "image/avif")) {
                    str = "image/avif";
                }
            }
        }
        if (z) {
            return "audio/mp4";
        }
        if (str != null) {
            return str;
        }
        return "application/mp4";
    }
}
