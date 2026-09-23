package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* loaded from: classes.dex */
final class zzamn {

    /* renamed from: a, reason: collision with root package name */
    public final int f4198a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4199c;
    public final int d;
    public final int e;
    public final int f;

    public zzamn(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f4198a = i;
        this.b = i2;
        this.f4199c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
    }

    public static zzamn a(String str) {
        zzgqa.a(str.startsWith("Format:"));
        String[] split2 = TextUtils.split(str.substring(7), ",");
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        while (true) {
            int length = split2.length;
            if (i < length) {
                String a2 = zzgpj.a(split2[i].trim());
                switch (a2.hashCode()) {
                    case 100571:
                        if (!a2.equals("end")) {
                            break;
                        } else {
                            i4 = i;
                            break;
                        }
                    case 3556653:
                        if (!a2.equals("text")) {
                            break;
                        } else {
                            i6 = i;
                            break;
                        }
                    case 102749521:
                        if (!a2.equals("layer")) {
                            break;
                        } else {
                            i2 = i;
                            break;
                        }
                    case 109757538:
                        if (!a2.equals("start")) {
                            break;
                        } else {
                            i3 = i;
                            break;
                        }
                    case 109780401:
                        if (!a2.equals("style")) {
                            break;
                        } else {
                            i5 = i;
                            break;
                        }
                }
                i++;
            } else {
                if (i3 != -1 && i4 != -1 && i6 != -1) {
                    return new zzamn(i2, i3, i4, i5, i6, length);
                }
                return null;
            }
        }
    }
}
