package com.google.android.gms.internal.ads;

import android.net.Uri;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzbe {
    public static final Object m = new Object();
    public static final zzak n;

    /* renamed from: a, reason: collision with root package name */
    public Object f4587a = m;
    public zzak b = n;

    /* renamed from: c, reason: collision with root package name */
    public long f4588c;
    public long d;
    public long e;
    public boolean f;
    public boolean g;
    public zzaf h;
    public boolean i;
    public long j;
    public int k;
    public int l;

    static {
        zzz zzzVar = new zzz();
        zzzVar.f9404a = "androidx.media3.common.Timeline";
        zzzVar.b = Uri.EMPTY;
        n = zzzVar.a();
        String str = zzfj.f7405a;
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
        Integer.toString(8, 36);
        Integer.toString(9, 36);
        Integer.toString(10, 36);
        Integer.toString(11, 36);
        Integer.toString(12, 36);
        Integer.toString(13, 36);
    }

    public final void a(zzak zzakVar, boolean z, boolean z2, zzaf zzafVar, long j) {
        this.f4587a = m;
        if (zzakVar == null) {
            zzakVar = n;
        }
        this.b = zzakVar;
        this.f4588c = -9223372036854775807L;
        this.d = -9223372036854775807L;
        this.e = -9223372036854775807L;
        this.f = z;
        this.g = z2;
        this.h = zzafVar;
        this.j = j;
        this.k = 0;
        this.l = 0;
        this.i = false;
    }

    public final boolean b() {
        return this.h != null;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && zzbe.class.equals(obj.getClass())) {
                zzbe zzbeVar = (zzbe) obj;
                if (Objects.equals(this.f4587a, zzbeVar.f4587a) && Objects.equals(this.b, zzbeVar.b) && Objects.equals(this.h, zzbeVar.h) && this.f4588c == zzbeVar.f4588c && this.d == zzbeVar.d && this.e == zzbeVar.e && this.f == zzbeVar.f && this.g == zzbeVar.g && this.i == zzbeVar.i && this.j == zzbeVar.j && this.k == zzbeVar.k && this.l == zzbeVar.l) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = ((this.f4587a.hashCode() + 217) * 31) + this.b.hashCode();
        zzaf zzafVar = this.h;
        if (zzafVar == null) {
            hashCode = 0;
        } else {
            hashCode = zzafVar.hashCode();
        }
        int i = ((hashCode2 * 961) + hashCode) * 31;
        long j = this.f4588c;
        int i2 = (i + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.d;
        int i3 = (i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.e;
        int i4 = ((((((i3 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.f ? 1 : 0)) * 31) + (this.g ? 1 : 0)) * 31) + (this.i ? 1 : 0);
        long j4 = this.j;
        return ((((((i4 * 961) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + this.k) * 31) + this.l) * 31;
    }
}
