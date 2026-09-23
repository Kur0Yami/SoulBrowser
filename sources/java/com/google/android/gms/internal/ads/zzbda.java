package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbda {

    /* renamed from: a, reason: collision with root package name */
    public final int f4559a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4560c;
    public final boolean d;
    public final zzbdp e;
    public final zzbdw f;
    public int n;
    public final Object g = new Object();
    public final ArrayList h = new ArrayList();
    public final ArrayList i = new ArrayList();
    public final ArrayList j = new ArrayList();
    public int k = 0;
    public int l = 0;
    public int m = 0;
    public String o = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public String p = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public String q = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    public zzbda(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.f4559a = i;
        this.b = i2;
        this.f4560c = i3;
        this.d = z;
        this.e = new zzbdp(i4);
        this.f = new zzbdw(i5, i6, i7);
    }

    public static final String f(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            sb.append((String) arrayList.get(i));
            sb.append(' ');
            i++;
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String sb2 = sb.toString();
        if (sb2.length() < 100) {
            return sb2;
        }
        return sb2.substring(0, 100);
    }

    public final boolean a() {
        boolean z;
        synchronized (this.g) {
            if (this.m == 0) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public final void b(String str, boolean z, float f, float f2, float f3, float f4) {
        e(str, z, f, f2, f3, f4);
        synchronized (this.g) {
            try {
                if (this.m < 0) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzd("ActivityContent: negative number of WebViews.");
                }
                d();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        synchronized (this.g) {
            try {
                int i = this.k;
                int i2 = this.l;
                int i3 = this.b;
                if (!this.d) {
                    i3 = (i2 * i3) + (i * this.f4559a);
                }
                if (i3 > this.n) {
                    this.n = i3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        synchronized (this.g) {
            try {
                int i = this.k;
                int i2 = this.l;
                int i3 = this.b;
                if (!this.d) {
                    i3 = (i2 * i3) + (i * this.f4559a);
                }
                if (i3 > this.n) {
                    this.n = i3;
                    if (!com.google.android.gms.ads.internal.zzt.zzh().i().zzc()) {
                        zzbdp zzbdpVar = this.e;
                        this.o = zzbdpVar.a(this.h);
                        this.p = zzbdpVar.a(this.i);
                    }
                    if (!com.google.android.gms.ads.internal.zzt.zzh().i().zze()) {
                        this.q = this.f.a(this.i, this.j);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str != null) {
            if (str.length() >= this.f4560c) {
                synchronized (this.g) {
                    try {
                        this.h.add(str);
                        this.k += str.length();
                        if (z) {
                            this.i.add(str);
                            this.j.add(new zzbdl(f, f2, f3, f4, r10.size() - 1));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbda)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((zzbda) obj).o;
        if (str == null || !str.equals(this.o)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.o.hashCode();
    }

    public final String toString() {
        int i = this.l;
        int i2 = this.n;
        int i3 = this.k;
        String f = f(this.h);
        String f2 = f(this.i);
        String str = this.o;
        String str2 = this.p;
        String str3 = this.q;
        int length = String.valueOf(i).length();
        int length2 = String.valueOf(i2).length();
        int length3 = String.valueOf(i3).length();
        int length4 = String.valueOf(f).length();
        int length5 = String.valueOf(f2).length();
        int length6 = String.valueOf(str).length();
        StringBuilder sb = new StringBuilder(length + 32 + length2 + 14 + length3 + 8 + length4 + 14 + length5 + 12 + length6 + 20 + String.valueOf(str2).length() + 32 + String.valueOf(str3).length());
        androidx.work.impl.workers.a.A(sb, "ActivityContent fetchId: ", i, " score:", i2);
        sb.append(" total_length:");
        sb.append(i3);
        sb.append("\n text: ");
        sb.append(f);
        android.support.v4.media.a.z(sb, "\n viewableText", f2, "\n signture: ", str);
        return android.support.v4.media.a.r(sb, "\n viewableSignture: ", str2, "\n viewableSignatureForVertical: ", str3);
    }
}
