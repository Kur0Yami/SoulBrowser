package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes.dex */
public final class zzani {

    /* renamed from: a, reason: collision with root package name */
    public String f4236a;
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public Set f4237c;
    public String d;
    public String e;
    public int f;
    public boolean g;
    public int h;
    public boolean i;
    public int j;
    public int k;
    public int l;
    public int m;
    public float n;
    public int o;
    public boolean p;

    public static int a(String str, int i, int i2, String str2) {
        if (!str.isEmpty() && i != -1) {
            if (!str.equals(str2)) {
                return -1;
            }
            return i + i2;
        }
        return i;
    }
}
