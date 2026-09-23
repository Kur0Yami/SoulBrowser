package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.AdError;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import kotlin.io.ConstantsKt;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzv {
    public static final /* synthetic */ int N = 0;
    public final byte[] A;
    public final int B;
    public final zzi C;
    public final int D;
    public final int E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public final int L;
    public int M;

    /* renamed from: a, reason: collision with root package name */
    public final String f9308a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgtd f9309c;
    public final String d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final String j;
    public final zzap k;
    public final String l;
    public final String m;
    public final int n;
    public final int o;
    public final List p;
    public final zzq q;
    public final long r;
    public final boolean s;
    public final int t;
    public final int u;
    public final int v;
    public final int w;
    public final float x;
    public final int y;
    public final float z;

    static {
        new zzv(new zzt());
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
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
        Integer.toString(14, 36);
        Integer.toString(15, 36);
        Integer.toString(16, 36);
        Integer.toString(17, 36);
        Integer.toString(18, 36);
        Integer.toString(19, 36);
        Integer.toString(20, 36);
        Integer.toString(21, 36);
        Integer.toString(22, 36);
        Integer.toString(23, 36);
        Integer.toString(24, 36);
        Integer.toString(25, 36);
        Integer.toString(26, 36);
        Integer.toString(27, 36);
        Integer.toString(28, 36);
        Integer.toString(29, 36);
        Integer.toString(30, 36);
        Integer.toString(31, 36);
        Integer.toString(32, 36);
        Integer.toString(33, 36);
        Integer.toString(34, 36);
        Integer.toString(35, 36);
        Integer.toString(36, 36);
    }

    public zzv(zzt zztVar) {
        boolean z;
        String str;
        this.f9308a = zztVar.f9265a;
        String o = zzfj.o(zztVar.d);
        this.d = o;
        if (zztVar.f9266c.isEmpty() && zztVar.b != null) {
            this.f9309c = zzgtd.r(new zzx(o, zztVar.b));
            this.b = zztVar.b;
        } else if (!zztVar.f9266c.isEmpty() && zztVar.b == null) {
            zzgtd zzgtdVar = zztVar.f9266c;
            this.f9309c = zzgtdVar;
            Iterator it = zzgtdVar.iterator();
            while (true) {
                if (it.hasNext()) {
                    zzx zzxVar = (zzx) it.next();
                    if (TextUtils.equals(zzxVar.f9354a, o)) {
                        str = zzxVar.b;
                        break;
                    }
                } else {
                    str = ((zzx) zzgtdVar.get(0)).b;
                    break;
                }
            }
            this.b = str;
        } else {
            if (!zztVar.f9266c.isEmpty() || zztVar.b != null) {
                for (int i = 0; i < zztVar.f9266c.size(); i++) {
                    if (!((zzx) zztVar.f9266c.get(i)).b.equals(zztVar.b)) {
                    }
                }
                z = false;
                zzgqa.f(z);
                this.f9309c = zztVar.f9266c;
                this.b = zztVar.b;
            }
            z = true;
            zzgqa.f(z);
            this.f9309c = zztVar.f9266c;
            this.b = zztVar.b;
        }
        this.e = zztVar.e;
        this.f = zztVar.f;
        int i2 = zztVar.g;
        this.g = i2;
        int i3 = zztVar.h;
        this.h = i3;
        this.i = i3 != -1 ? i3 : i2;
        this.j = zztVar.i;
        this.k = zztVar.j;
        this.l = zztVar.k;
        this.m = zztVar.l;
        this.n = zztVar.m;
        this.o = zztVar.n;
        List list = zztVar.o;
        this.p = list == null ? Collections.EMPTY_LIST : list;
        zzq zzqVar = zztVar.p;
        this.q = zzqVar;
        this.r = zztVar.q;
        this.s = zztVar.r;
        this.t = zztVar.s;
        this.u = zztVar.t;
        this.v = zztVar.u;
        this.w = zztVar.v;
        this.x = zztVar.w;
        int i4 = zztVar.x;
        this.y = i4 == -1 ? 0 : i4;
        float f = zztVar.y;
        this.z = f == -1.0f ? 1.0f : f;
        this.A = zztVar.z;
        this.B = zztVar.A;
        this.C = zztVar.B;
        this.D = zztVar.C;
        this.E = zztVar.D;
        this.F = zztVar.E;
        this.G = zztVar.F;
        int i5 = zztVar.G;
        this.H = i5 == -1 ? 0 : i5;
        int i6 = zztVar.H;
        this.I = i6 != -1 ? i6 : 0;
        this.J = zztVar.I;
        this.K = zztVar.J;
        int i7 = zztVar.K;
        if (i7 == 0 && zzqVar != null) {
            this.L = 1;
        } else {
            this.L = i7;
        }
    }

    public static String c(zzv zzvVar) {
        String str;
        String str2;
        int i;
        int i2;
        StringBuilder t = android.support.v4.media.a.t("id=");
        t.append(zzvVar.f9308a);
        t.append(", mimeType=");
        t.append(zzvVar.m);
        String str3 = zzvVar.l;
        if (str3 != null) {
            t.append(", container=");
            t.append(str3);
        }
        int i3 = zzvVar.i;
        if (i3 != -1) {
            t.append(", bitrate=");
            t.append(i3);
        }
        String str4 = zzvVar.j;
        if (str4 != null) {
            t.append(", codecs=");
            t.append(str4);
        }
        zzq zzqVar = zzvVar.q;
        if (zzqVar != null) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (int i4 = 0; i4 < zzqVar.h; i4++) {
                UUID uuid = zzqVar.f9180c[i4].f;
                if (uuid.equals(zzg.b)) {
                    linkedHashSet.add("cenc");
                } else if (uuid.equals(zzg.f7766c)) {
                    linkedHashSet.add("clearkey");
                } else if (uuid.equals(zzg.e)) {
                    linkedHashSet.add("playready");
                } else if (uuid.equals(zzg.d)) {
                    linkedHashSet.add("widevine");
                } else if (uuid.equals(zzg.f7765a)) {
                    linkedHashSet.add("universal");
                } else {
                    String obj = uuid.toString();
                    StringBuilder sb = new StringBuilder(obj.length() + 10);
                    sb.append("unknown (");
                    sb.append(obj);
                    sb.append(")");
                    linkedHashSet.add(sb.toString());
                }
            }
            t.append(", drm=[");
            zzgpu.a(t, linkedHashSet.iterator(), ",");
            t.append(']');
        }
        int i5 = zzvVar.t;
        if (i5 != -1 && (i2 = zzvVar.u) != -1) {
            androidx.work.impl.workers.a.A(t, ", res=", i5, "x", i2);
        }
        int i6 = zzvVar.v;
        if (i6 != -1 && (i = zzvVar.w) != -1) {
            androidx.work.impl.workers.a.A(t, ", decRes=", i6, "x", i);
        }
        float f = zzvVar.z;
        int i7 = zzgwn.f8277a;
        double d = f;
        if (Math.copySign((-1.0d) + d, 1.0d) > 0.001d && d != 1.0d && (!Double.isNaN(d) || !Double.isNaN(1.0d))) {
            t.append(", par=");
            Object[] objArr = {Float.valueOf(f)};
            String str5 = zzfj.f7405a;
            t.append(String.format(Locale.US, "%.3f", objArr));
        }
        zzi zziVar = zzvVar.C;
        if (zziVar != null) {
            int i8 = zziVar.f;
            int i9 = zziVar.e;
            if ((i9 != -1 && i8 != -1) || zziVar.d()) {
                t.append(", color=");
                if (zziVar.d()) {
                    String e = zzi.e(zziVar.f8902a);
                    String g = zzi.g(zziVar.b);
                    String f2 = zzi.f(zziVar.f8903c);
                    String str6 = zzfj.f7405a;
                    Locale locale = Locale.US;
                    str = e + "/" + g + "/" + f2;
                } else {
                    str = "NA/NA/NA";
                }
                if (i9 != -1 && i8 != -1) {
                    StringBuilder sb2 = new StringBuilder(androidx.work.impl.workers.a.a(i9, 1) + String.valueOf(i8).length());
                    sb2.append(i9);
                    sb2.append("/");
                    sb2.append(i8);
                    str2 = sb2.toString();
                } else {
                    str2 = "NA/NA";
                }
                StringBuilder sb3 = new StringBuilder(str2.length() + str.length() + 1);
                sb3.append(str);
                sb3.append("/");
                sb3.append(str2);
                t.append(sb3.toString());
            }
        }
        float f3 = zzvVar.x;
        if (f3 != -1.0f) {
            t.append(", fps=");
            t.append(f3);
        }
        int i10 = zzvVar.D;
        if (i10 != -1) {
            t.append(", maxSubLayers=");
            t.append(i10);
        }
        int i11 = zzvVar.E;
        if (i11 != -1) {
            t.append(", channels=");
            t.append(i11);
        }
        int i12 = zzvVar.F;
        if (i12 != -1) {
            t.append(", sample_rate=");
            t.append(i12);
        }
        String str7 = zzvVar.d;
        if (str7 != null) {
            t.append(", language=");
            t.append(str7);
        }
        zzgtd zzgtdVar = zzvVar.f9309c;
        if (!zzgtdVar.isEmpty()) {
            t.append(", labels=[");
            zzgpu.a(t, zzgud.b(zzgtdVar, zzu.f9288a).iterator(), ",");
            t.append("]");
        }
        int i13 = zzvVar.e;
        if (i13 != 0) {
            t.append(", selectionFlags=[");
            String str8 = zzfj.f7405a;
            ArrayList arrayList = new ArrayList();
            if ((i13 & 1) != 0) {
                arrayList.add("default");
            }
            if ((i13 & 2) != 0) {
                arrayList.add("forced");
            }
            zzgpu.a(t, arrayList.iterator(), ",");
            t.append("]");
        }
        int i14 = zzvVar.f;
        if (i14 != 0) {
            t.append(", roleFlags=[");
            int i15 = i14 & 32768;
            String str9 = zzfj.f7405a;
            ArrayList arrayList2 = new ArrayList();
            if ((i14 & 1) != 0) {
                arrayList2.add("main");
            }
            if ((i14 & 2) != 0) {
                arrayList2.add("alt");
            }
            if ((i14 & 4) != 0) {
                arrayList2.add("supplementary");
            }
            if ((i14 & 8) != 0) {
                arrayList2.add("commentary");
            }
            if ((i14 & 16) != 0) {
                arrayList2.add("dub");
            }
            if ((i14 & 32) != 0) {
                arrayList2.add("emergency");
            }
            if ((i14 & 64) != 0) {
                arrayList2.add("caption");
            }
            if ((i14 & Uuid.SIZE_BITS) != 0) {
                arrayList2.add("subtitle");
            }
            if ((i14 & 256) != 0) {
                arrayList2.add("sign");
            }
            if ((i14 & 512) != 0) {
                arrayList2.add("describes-video");
            }
            if ((i14 & 1024) != 0) {
                arrayList2.add("describes-music");
            }
            if ((i14 & 2048) != 0) {
                arrayList2.add("enhanced-intelligibility");
            }
            if ((i14 & ConstantsKt.DEFAULT_BLOCK_SIZE) != 0) {
                arrayList2.add("transcribes-dialog");
            }
            if ((i14 & 8192) != 0) {
                arrayList2.add("easy-read");
            }
            if ((i14 & 16384) != 0) {
                arrayList2.add("trick-play");
            }
            if (i15 != 0) {
                arrayList2.add("auxiliary");
            }
            zzgpu.a(t, arrayList2.iterator(), ",");
            t.append("]");
        }
        if ((i14 & 32768) != 0) {
            t.append(", auxiliaryTrackType=");
            String str10 = zzfj.f7405a;
            t.append(AdError.UNDEFINED_DOMAIN);
        }
        return t.toString();
    }

    public final zzt a() {
        return new zzt(this);
    }

    public final boolean b(zzv zzvVar) {
        List list = this.p;
        int size = list.size();
        List list2 = zzvVar.p;
        if (size != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals((byte[]) list.get(i), (byte[]) list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        int i;
        if (this != obj) {
            if (obj != null && zzv.class == obj.getClass()) {
                zzv zzvVar = (zzv) obj;
                int i2 = this.M;
                if ((i2 == 0 || (i = zzvVar.M) == 0 || i2 == i) && this.e == zzvVar.e && this.f == zzvVar.f && this.g == zzvVar.g && this.h == zzvVar.h && this.n == zzvVar.n && this.r == zzvVar.r && this.t == zzvVar.t && this.u == zzvVar.u && this.v == zzvVar.v && this.w == zzvVar.w && this.y == zzvVar.y && this.B == zzvVar.B && this.D == zzvVar.D && this.E == zzvVar.E && this.F == zzvVar.F && this.G == zzvVar.G && this.H == zzvVar.H && this.I == zzvVar.I && this.J == zzvVar.J && this.L == zzvVar.L && Float.compare(this.x, zzvVar.x) == 0 && Float.compare(this.z, zzvVar.z) == 0 && Objects.equals(this.f9308a, zzvVar.f9308a) && Objects.equals(this.b, zzvVar.b) && this.f9309c.equals(zzvVar.f9309c) && Objects.equals(this.j, zzvVar.j) && Objects.equals(this.l, zzvVar.l) && Objects.equals(this.m, zzvVar.m) && Objects.equals(this.d, zzvVar.d) && Arrays.equals(this.A, zzvVar.A) && Objects.equals(this.k, zzvVar.k) && Objects.equals(this.C, zzvVar.C) && Objects.equals(this.q, zzvVar.q) && b(zzvVar)) {
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
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int i = this.M;
        if (i == 0) {
            int i2 = 0;
            String str = this.f9308a;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            String str2 = this.b;
            if (str2 == null) {
                hashCode2 = 0;
            } else {
                hashCode2 = str2.hashCode();
            }
            int hashCode7 = this.f9309c.hashCode() + ((((hashCode + 527) * 31) + hashCode2) * 31);
            String str3 = this.d;
            if (str3 == null) {
                hashCode3 = 0;
            } else {
                hashCode3 = str3.hashCode();
            }
            int i3 = ((((((((((hashCode7 * 31) + hashCode3) * 31) + this.e) * 31) + this.f) * 961) + this.g) * 31) + this.h) * 31;
            String str4 = this.j;
            if (str4 == null) {
                hashCode4 = 0;
            } else {
                hashCode4 = str4.hashCode();
            }
            int i4 = (i3 + hashCode4) * 31;
            zzap zzapVar = this.k;
            if (zzapVar == null) {
                hashCode5 = 0;
            } else {
                hashCode5 = zzapVar.hashCode();
            }
            int i5 = i4 + hashCode5;
            String str5 = this.l;
            if (str5 == null) {
                hashCode6 = 0;
            } else {
                hashCode6 = str5.hashCode();
            }
            int i6 = ((i5 * 961) + hashCode6) * 31;
            String str6 = this.m;
            if (str6 != null) {
                i2 = str6.hashCode();
            }
            int floatToIntBits = ((((((((((((((((((((((Float.floatToIntBits(this.z) + ((((Float.floatToIntBits(this.x) + ((((((((((((((i6 + i2) * 31) + this.n) * 31) + ((int) this.r)) * 31) + this.t) * 31) + this.u) * 31) + this.v) * 31) + this.w) * 31)) * 31) + this.y) * 31)) * 31) + this.B) * 31) + this.D) * 31) + this.E) * 31) + this.F) * 31) + this.G) * 31) + this.H) * 31) + this.I) * 31) + this.J) * 31) - 1) * 31) - 1) * 31) + this.L;
            this.M = floatToIntBits;
            return floatToIntBits;
        }
        return i;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.C);
        String str = this.f9308a;
        int length = String.valueOf(str).length();
        String str2 = this.b;
        int length2 = String.valueOf(str2).length();
        String str3 = this.l;
        int length3 = String.valueOf(str3).length();
        String str4 = this.m;
        int length4 = String.valueOf(str4).length();
        String str5 = this.j;
        int length5 = String.valueOf(str5).length();
        int i = this.i;
        int length6 = String.valueOf(i).length();
        String str6 = this.d;
        int length7 = String.valueOf(str6).length();
        int i2 = this.t;
        int length8 = String.valueOf(i2).length();
        int i3 = this.u;
        int length9 = String.valueOf(i3).length();
        float f = this.x;
        int length10 = String.valueOf(f).length();
        int length11 = valueOf.length();
        int i4 = this.E;
        int length12 = String.valueOf(i4).length();
        int i5 = this.F;
        StringBuilder sb = new StringBuilder(length + 9 + length2 + 2 + length3 + 2 + length4 + 2 + length5 + 2 + length6 + 2 + length7 + 3 + length8 + 2 + length9 + 2 + length10 + 2 + length11 + 4 + length12 + 2 + String.valueOf(i5).length() + 2);
        android.support.v4.media.a.z(sb, "Format(", str, ", ", str2);
        android.support.v4.media.a.z(sb, ", ", str3, ", ", str4);
        sb.append(", ");
        sb.append(str5);
        sb.append(", ");
        sb.append(i);
        sb.append(", ");
        sb.append(str6);
        sb.append(", [");
        sb.append(i2);
        sb.append(", ");
        sb.append(i3);
        sb.append(", ");
        sb.append(f);
        sb.append(", ");
        sb.append(valueOf);
        sb.append("], [");
        sb.append(i4);
        return androidx.work.impl.workers.a.t(sb, ", ", i5, "])");
    }
}
