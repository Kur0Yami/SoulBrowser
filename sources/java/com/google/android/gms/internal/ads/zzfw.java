package com.google.android.gms.internal.ads;

import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public class zzfw {

    /* renamed from: a, reason: collision with root package name */
    public final int f7697a;

    public static String a(int i) {
        char c2 = (char) ((i >> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
        int length = String.valueOf(c2).length();
        char c3 = (char) ((i >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
        int length2 = String.valueOf(c3).length();
        char c4 = (char) ((i >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
        int length3 = String.valueOf(c4).length();
        char c5 = (char) (i & KotlinVersion.MAX_COMPONENT_VALUE);
        StringBuilder sb = new StringBuilder(android.support.v4.media.a.b(length, length2, length3, String.valueOf(c5).length()));
        sb.append(c2);
        sb.append(c3);
        sb.append(c4);
        sb.append(c5);
        return sb.toString();
    }

    public String toString() {
        return a(this.f7697a);
    }
}
