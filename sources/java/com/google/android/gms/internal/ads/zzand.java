package com.google.android.gms.internal.ads;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.gms.ads.RequestConfiguration;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import kotlin.KotlinVersion;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class zzand implements zzaly {

    /* renamed from: a, reason: collision with root package name */
    public final zzer f4227a = new zzer();
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4228c;
    public final int d;
    public final String e;
    public final float f;
    public final int g;

    public zzand(List list) {
        if (list.size() == 1 && (((byte[]) list.get(0)).length == 48 || ((byte[]) list.get(0)).length == 53)) {
            byte[] bArr = (byte[]) list.get(0);
            this.f4228c = bArr[24];
            this.d = ((bArr[26] & UByte.MAX_VALUE) << 24) | ((bArr[27] & UByte.MAX_VALUE) << 16) | ((bArr[28] & UByte.MAX_VALUE) << 8) | (bArr[29] & UByte.MAX_VALUE);
            this.e = true == "Serif".equals(new String(bArr, 43, bArr.length + (-43), StandardCharsets.UTF_8)) ? "serif" : "sans-serif";
            int i = bArr[25] * 20;
            this.g = i;
            boolean z = (bArr[0] & 32) != 0;
            this.b = z;
            if (z) {
                this.f = Math.max(0.0f, Math.min(((bArr[11] & UByte.MAX_VALUE) | ((bArr[10] & UByte.MAX_VALUE) << 8)) / i, 0.95f));
                return;
            } else {
                this.f = 0.85f;
                return;
            }
        }
        this.f4228c = 0;
        this.d = -1;
        this.e = "sans-serif";
        this.b = false;
        this.f = 0.85f;
        this.g = -1;
    }

    public static void b(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            int i7 = i & 1;
            int i8 = i & 2;
            boolean z = true;
            if (i7 != 0) {
                if (i8 != 0) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                    z = false;
                }
            } else {
                if (i8 != 0) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
                }
                z = false;
            }
            if ((i & 4) == 0) {
                if (i7 == 0 && !z) {
                    spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
                    return;
                }
                return;
            }
            spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
        }
    }

    public static void c(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & KotlinVersion.MAX_COMPONENT_VALUE) << 24)), i3, i4, i5 | 33);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzaly
    public final void a(byte[] bArr, int i, int i2, zzdr zzdrVar) {
        boolean z;
        String k;
        int i3;
        int i4;
        int i5;
        boolean z2;
        boolean z3;
        boolean z4;
        int i6;
        int i7;
        SpannableStringBuilder spannableStringBuilder;
        int i8;
        int i9;
        zzer zzerVar = this.f4227a;
        zzerVar.z(bArr, i + i2);
        zzerVar.E(i);
        int i10 = 1;
        int i11 = 0;
        int i12 = 2;
        if (zzerVar.B() >= 2) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        int L = zzerVar.L();
        if (L == 0) {
            k = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            int i13 = zzerVar.b;
            Charset q = zzerVar.q();
            int i14 = zzerVar.b - i13;
            if (q == null) {
                q = StandardCharsets.UTF_8;
            }
            k = zzerVar.k(L - i14, q);
        }
        if (k.isEmpty()) {
            zzgvs zzgvsVar = zzgtd.f;
            ((zzama) zzdrVar).zza(new zzalq(zzguy.i, -9223372036854775807L, -9223372036854775807L));
            return;
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(k);
        int length = spannableStringBuilder2.length();
        int i15 = this.f4228c;
        b(spannableStringBuilder2, i15, 0, 0, length, 16711680);
        int i16 = i15;
        int length2 = spannableStringBuilder2.length();
        int i17 = this.d;
        c(spannableStringBuilder2, i17, -1, 0, length2, 16711680);
        int i18 = i17;
        int length3 = spannableStringBuilder2.length();
        String str = this.e;
        if (str != "sans-serif") {
            spannableStringBuilder2.setSpan(new TypefaceSpan(str), 0, length3, 16711713);
        }
        float f = this.f;
        while (zzerVar.B() >= 8) {
            int i19 = zzerVar.b;
            int b = zzerVar.b();
            int b2 = zzerVar.b();
            if (b2 == 1937013100) {
                if (zzerVar.B() >= i12) {
                    z3 = i10;
                } else {
                    z3 = i11;
                }
                zzgqa.a(z3);
                int L2 = zzerVar.L();
                int i20 = i11;
                while (i20 < L2) {
                    if (zzerVar.B() >= 12) {
                        z4 = i10;
                    } else {
                        z4 = i11;
                    }
                    zzgqa.a(z4);
                    int L3 = zzerVar.L();
                    int L4 = zzerVar.L();
                    zzerVar.G(i12);
                    int i21 = L2;
                    int K = zzerVar.K();
                    zzerVar.G(i10);
                    int b3 = zzerVar.b();
                    if (L4 > spannableStringBuilder2.length()) {
                        int length4 = spannableStringBuilder2.length();
                        i6 = i16;
                        i7 = i18;
                        spannableStringBuilder = spannableStringBuilder2;
                        StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.d(String.valueOf(L4).length() + 44, 2, String.valueOf(length4)));
                        sb.append("Truncating styl end (");
                        sb.append(L4);
                        sb.append(") to cueText.length() (");
                        sb.append(length4);
                        sb.append(").");
                        zzee.c("Tx3gParser", sb.toString());
                        L4 = spannableStringBuilder.length();
                    } else {
                        i6 = i16;
                        i7 = i18;
                        spannableStringBuilder = spannableStringBuilder2;
                    }
                    if (L3 >= L4) {
                        StringBuilder sb2 = new StringBuilder(androidx.work.impl.workers.a.d(String.valueOf(L3).length() + 36, 2, String.valueOf(L4)));
                        sb2.append("Ignoring styl with start (");
                        sb2.append(L3);
                        sb2.append(") >= end (");
                        sb2.append(L4);
                        sb2.append(").");
                        zzee.c("Tx3gParser", sb2.toString());
                        i9 = i20;
                        i8 = i21;
                        spannableStringBuilder2 = spannableStringBuilder;
                    } else {
                        i8 = i21;
                        i9 = i20;
                        spannableStringBuilder2 = spannableStringBuilder;
                        b(spannableStringBuilder2, K, i6, L3, L4, 0);
                        c(spannableStringBuilder2, b3, i7, L3, L4, 0);
                    }
                    i20 = i9 + 1;
                    L2 = i8;
                    i16 = i6;
                    i18 = i7;
                    i10 = 1;
                    i11 = 0;
                    i12 = 2;
                }
                i3 = i16;
                i4 = i18;
                i5 = i12;
            } else {
                i3 = i16;
                i4 = i18;
                if (b2 == 1952608120 && this.b) {
                    i5 = 2;
                    if (zzerVar.B() >= 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zzgqa.a(z2);
                    float L5 = zzerVar.L();
                    String str2 = zzfj.f7405a;
                    f = Math.max(0.0f, Math.min(L5 / this.g, 0.95f));
                } else {
                    i5 = 2;
                }
            }
            zzerVar.E(i19 + b);
            i12 = i5;
            i16 = i3;
            i18 = i4;
            i10 = 1;
            i11 = 0;
        }
        zzcw zzcwVar = new zzcw();
        zzcwVar.a(spannableStringBuilder2);
        zzcwVar.e = f;
        zzcwVar.f = 0;
        zzcwVar.g = 0;
        ((zzama) zzdrVar).zza(new zzalq(zzgtd.r(zzcwVar.b()), -9223372036854775807L, -9223372036854775807L));
    }
}
