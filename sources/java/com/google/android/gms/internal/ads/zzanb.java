package com.google.android.gms.internal.ads;

import android.text.Layout;

/* loaded from: classes.dex */
final class zzanb {

    /* renamed from: a, reason: collision with root package name */
    public String f4223a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4224c;
    public int d;
    public boolean e;
    public float k;
    public String l;
    public Layout.Alignment o;
    public Layout.Alignment p;
    public zzamu r;
    public String t;
    public String u;
    public int f = -1;
    public int g = -1;
    public int h = -1;
    public int i = -1;
    public int j = -1;
    public int m = -1;
    public int n = -1;
    public int q = -1;
    public float s = Float.MAX_VALUE;

    public final String a() {
        return this.t;
    }

    public final String b() {
        return this.u;
    }

    public final void c(zzanb zzanbVar) {
        int i;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (zzanbVar != null) {
            if (!this.f4224c && zzanbVar.f4224c) {
                this.b = zzanbVar.b;
                this.f4224c = true;
            }
            if (this.h == -1) {
                this.h = zzanbVar.h;
            }
            if (this.i == -1) {
                this.i = zzanbVar.i;
            }
            if (this.f4223a == null && (str = zzanbVar.f4223a) != null) {
                this.f4223a = str;
            }
            if (this.f == -1) {
                this.f = zzanbVar.f;
            }
            if (this.g == -1) {
                this.g = zzanbVar.g;
            }
            if (this.n == -1) {
                this.n = zzanbVar.n;
            }
            if (this.o == null && (alignment2 = zzanbVar.o) != null) {
                this.o = alignment2;
            }
            if (this.p == null && (alignment = zzanbVar.p) != null) {
                this.p = alignment;
            }
            if (this.q == -1) {
                this.q = zzanbVar.q;
            }
            if (this.j == -1) {
                this.j = zzanbVar.j;
                this.k = zzanbVar.k;
            }
            if (this.r == null) {
                this.r = zzanbVar.r;
            }
            if (this.s == Float.MAX_VALUE) {
                this.s = zzanbVar.s;
            }
            if (this.t == null) {
                this.t = zzanbVar.t;
            }
            if (this.u == null) {
                this.u = zzanbVar.u;
            }
            if (!this.e && zzanbVar.e) {
                this.d = zzanbVar.d;
                this.e = true;
            }
            if (this.m == -1 && (i = zzanbVar.m) != -1) {
                this.m = i;
            }
        }
    }

    public final String d() {
        return this.l;
    }
}
