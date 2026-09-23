package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import android.util.Range;
import j$.util.Objects;
import java.util.HashMap;
import kotlin.io.ConstantsKt;

/* loaded from: classes.dex */
public final class zzuj {

    /* renamed from: a, reason: collision with root package name */
    public final String f9294a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f9295c;
    public final MediaCodecInfo.CodecCapabilities d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public int j;
    public int k;
    public float l;

    public zzuj(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4) {
        str.getClass();
        this.f9294a = str;
        this.b = str2;
        this.f9295c = str3;
        this.d = codecCapabilities;
        this.g = z;
        this.e = z2;
        this.f = z3;
        this.h = z4;
        this.i = zzas.b(str2);
        this.l = -3.4028235E38f;
        this.j = -1;
        this.k = -1;
    }

    public static zzuj a(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        String str4;
        String str5;
        MediaCodecInfo.CodecCapabilities codecCapabilities2;
        boolean z5;
        boolean z6;
        String str6;
        if (codecCapabilities != null && codecCapabilities.isFeatureSupported("adaptive-playback")) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (codecCapabilities != null) {
            codecCapabilities.isFeatureSupported("tunneled-playback");
        }
        if (z2 || (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback"))) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (Build.VERSION.SDK_INT >= 35 && codecCapabilities != null && codecCapabilities.isFeatureSupported("detached-surface")) {
            String str7 = Build.MANUFACTURER;
            if (!str7.equals("Xiaomi") && !str7.equals("OPPO") && !str7.equals("realme") && !str7.equals("motorola") && !str7.equals("LENOVO")) {
                str6 = str2;
                str5 = str3;
                codecCapabilities2 = codecCapabilities;
                z5 = z;
                z6 = true;
                str4 = str;
                return new zzuj(str4, str6, str5, codecCapabilities2, z5, z3, z4, z6);
            }
        }
        str4 = str;
        str5 = str3;
        codecCapabilities2 = codecCapabilities;
        z5 = z;
        z6 = false;
        str6 = str2;
        return new zzuj(str4, str6, str5, codecCapabilities2, z5, z3, z4, z6);
    }

    public static boolean i(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Range<Double> achievableFrameRatesFor;
        Point j = j(videoCapabilities, i, i2);
        int i3 = j.x;
        int i4 = j.y;
        if (d != -1.0d && d >= 1.0d) {
            double floor = Math.floor(d);
            if (videoCapabilities.areSizeAndRateSupported(i3, i4, floor)) {
                if (Build.VERSION.SDK_INT < 24 || (achievableFrameRatesFor = videoCapabilities.getAchievableFrameRatesFor(i3, i4)) == null || floor <= achievableFrameRatesFor.getUpper().doubleValue()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return videoCapabilities.isSizeSupported(i3, i4);
    }

    public static Point j(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        String str = zzfj.f7405a;
        return new Point((((i + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i2 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
    }

    public final boolean b(zzv zzvVar) {
        int i;
        int i2;
        String str = zzvVar.m;
        String str2 = this.b;
        if ((!str2.equals(str) && !str2.equals(zzvc.d(zzvVar))) || !f(zzvVar, true) || !g(zzvVar)) {
            return false;
        }
        if (this.i) {
            int i3 = zzvVar.t;
            if (i3 > 0 && (i2 = zzvVar.u) > 0) {
                return e(i3, i2, zzvVar.x);
            }
        } else {
            int i4 = zzvVar.F;
            MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
            if (i4 != -1) {
                if (codecCapabilities == null) {
                    h("sampleRate.caps");
                    return false;
                }
                MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities == null) {
                    h("sampleRate.aCaps");
                    return false;
                }
                if (!audioCapabilities.isSampleRateSupported(i4)) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i4).length() + 20);
                    sb.append("sampleRate.support, ");
                    sb.append(i4);
                    h(sb.toString());
                    return false;
                }
            }
            int i5 = zzvVar.E;
            if (i5 != -1) {
                if (codecCapabilities == null) {
                    h("channelCount.caps");
                    return false;
                }
                MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities2 == null) {
                    h("channelCount.aCaps");
                    return false;
                }
                int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
                if (maxInputChannelCount <= 1 && ((Build.VERSION.SDK_INT < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
                    if ("audio/ac3".equals(str2)) {
                        i = 6;
                    } else if ("audio/eac3".equals(str2)) {
                        i = 16;
                    } else {
                        i = 30;
                    }
                    String str3 = this.f9294a;
                    StringBuilder sb2 = new StringBuilder(androidx.work.impl.workers.a.d(String.valueOf(maxInputChannelCount).length() + str3.length() + 32 + 4, 1, String.valueOf(i)));
                    sb2.append("AssumedMaxChannelAdjustment: ");
                    sb2.append(str3);
                    sb2.append(", [");
                    sb2.append(maxInputChannelCount);
                    sb2.append(" to ");
                    sb2.append(i);
                    sb2.append("]");
                    zzee.c("MediaCodecInfo", sb2.toString());
                    maxInputChannelCount = i;
                }
                if (maxInputChannelCount < i5) {
                    StringBuilder sb3 = new StringBuilder(String.valueOf(i5).length() + 22);
                    sb3.append("channelCount.support, ");
                    sb3.append(i5);
                    h(sb3.toString());
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean c(zzv zzvVar) {
        if (this.i) {
            return this.e;
        }
        HashMap hashMap = zzvc.f9311a;
        Pair b = zzdo.b(zzvVar);
        if (b != null && ((Integer) b.first).intValue() == 42) {
            return true;
        }
        return false;
    }

    public final zzil d(zzv zzvVar, zzv zzvVar2) {
        int i;
        zzv zzvVar3;
        zzv zzvVar4;
        int i2;
        String str = zzvVar.m;
        String str2 = zzvVar2.m;
        zzi zziVar = zzvVar2.C;
        boolean z = false;
        if (true != Objects.equals(str, str2)) {
            i = 8;
        } else {
            i = 0;
        }
        if (this.i) {
            if (zzvVar.y != zzvVar2.y) {
                i |= 1024;
            }
            if (zzvVar.t != zzvVar2.t || zzvVar.u != zzvVar2.u) {
                z = true;
            }
            if (!this.e && z) {
                i |= 512;
            }
            zzi zziVar2 = zzvVar.C;
            if ((!zzi.a(zziVar2) || !zzi.a(zziVar)) && !Objects.equals(zziVar2, zziVar)) {
                i |= 2048;
            }
            boolean startsWith = Build.MODEL.startsWith("SM-T230");
            String str3 = this.f9294a;
            if (startsWith && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str3) && !zzvVar.b(zzvVar2)) {
                i |= 2;
            }
            int i3 = zzvVar.v;
            if (i3 != -1 && (i2 = zzvVar.w) != -1 && i3 == zzvVar2.v && i2 == zzvVar2.w && z) {
                i |= 2;
            }
            int i4 = 2;
            if (i == 0 && Objects.equals(str2, "video/dolby-vision")) {
                Pair b = zzdo.b(zzvVar);
                Pair b2 = zzdo.b(zzvVar2);
                if (b == null || b2 == null || !((Integer) b.first).equals(b2.first)) {
                    i = 2;
                }
            }
            if (i == 0) {
                if (true == zzvVar.b(zzvVar2)) {
                    i4 = 3;
                }
                return new zzil(str3, zzvVar, zzvVar2, i4, 0);
            }
            zzvVar3 = zzvVar;
            zzvVar4 = zzvVar2;
        } else {
            zzvVar3 = zzvVar;
            zzvVar4 = zzvVar2;
            if (zzvVar3.E != zzvVar4.E) {
                i |= ConstantsKt.DEFAULT_BLOCK_SIZE;
            }
            if (zzvVar3.F != zzvVar4.F) {
                i |= 8192;
            }
            if (zzvVar3.G != zzvVar4.G) {
                i |= 16384;
            }
            String str4 = this.b;
            if (i == 0 && (str4.equals("audio/mp4a-latm") || str4.equals("audio/ac4"))) {
                HashMap hashMap = zzvc.f9311a;
                Pair b3 = zzdo.b(zzvVar3);
                Pair b4 = zzdo.b(zzvVar4);
                if (b3 != null && b4 != null) {
                    int intValue = ((Integer) b3.first).intValue();
                    int intValue2 = ((Integer) b4.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new zzil(this.f9294a, zzvVar3, zzvVar4, 3, 0);
                    }
                    if (str4.equals("audio/ac4") && b3.equals(b4)) {
                        return new zzil(this.f9294a, zzvVar3, zzvVar4, 3, 0);
                    }
                }
            }
            if (i == 0 && (str4.equals("audio/eac3-joc") || str4.equals("audio/eac3"))) {
                return new zzil(this.f9294a, zzvVar3, zzvVar4, 3, 0);
            }
            if (!zzvVar3.b(zzvVar4)) {
                i |= 32;
            }
            if ("audio/opus".equals(str4)) {
                i |= 2;
            }
            if (i == 0) {
                return new zzil(this.f9294a, zzvVar3, zzvVar4, 1, 0);
            }
        }
        return new zzil(this.f9294a, zzvVar3, zzvVar4, 0, i);
    }

    public final boolean e(int i, int i2, double d) {
        int i3;
        Boolean bool;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.d;
        if (codecCapabilities == null) {
            h("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            h("sizeAndRate.vCaps");
            return false;
        }
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 29) {
            if (i4 >= 29 && ((bool = zzul.f9296a) == null || !bool.booleanValue())) {
                i3 = zzuk.a(videoCapabilities, i, i2, d);
            } else {
                i3 = 0;
            }
            if (i3 != 2) {
                if (i3 == 1) {
                    StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.d(String.valueOf(i).length() + 20, 1, String.valueOf(i2)) + String.valueOf(d).length());
                    androidx.work.impl.workers.a.A(sb, "sizeAndRate.cover, ", i, "x", i2);
                    sb.append("@");
                    sb.append(d);
                    h(sb.toString());
                    return false;
                }
            }
            return true;
        }
        if (!i(videoCapabilities, i, i2, d)) {
            if (i < i2) {
                String str = this.f9294a;
                if ((!"OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(Build.DEVICE)) && i(videoCapabilities, i2, i, d)) {
                    StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + androidx.work.impl.workers.a.a(i, 22) + 1 + String.valueOf(d).length());
                    androidx.work.impl.workers.a.A(sb2, "sizeAndRate.rotated, ", i, "x", i2);
                    sb2.append("@");
                    sb2.append(d);
                    String sb3 = sb2.toString();
                    int length = str.length();
                    String str2 = zzfj.f7405a;
                    String str3 = this.b;
                    StringBuilder sb4 = new StringBuilder(sb3.length() + 19 + length + 2 + String.valueOf(str3).length() + 3 + String.valueOf(str2).length() + 1);
                    sb4.append("AssumedSupport [");
                    sb4.append(sb3);
                    sb4.append("] [");
                    sb4.append(str);
                    android.support.v4.media.a.z(sb4, ", ", str3, "] [", str2);
                    sb4.append("]");
                    zzee.a("MediaCodecInfo", sb4.toString());
                    return true;
                }
            }
            StringBuilder sb5 = new StringBuilder(String.valueOf(i2).length() + androidx.work.impl.workers.a.a(i, 22) + 1 + String.valueOf(d).length());
            androidx.work.impl.workers.a.A(sb5, "sizeAndRate.support, ", i, "x", i2);
            sb5.append("@");
            sb5.append(d);
            h(sb5.toString());
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ca, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x012a, code lost:
    
        if (r8.equals("video/hevc") != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x012c, code lost:
    
        r4 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0134, code lost:
    
        if (r8.equals("video/av01") != false) goto L56;
     */
    /* JADX WARN: Type inference failed for: r15v1, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(com.google.android.gms.internal.ads.zzv r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 630
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuj.f(com.google.android.gms.internal.ads.zzv, boolean):boolean");
    }

    public final boolean g(zzv zzvVar) {
        if (Objects.equals(zzvVar.m, "audio/flac") && zzvVar.G == 22 && Build.VERSION.SDK_INT < 34 && this.f9294a.equals("c2.android.flac.decoder")) {
            return false;
        }
        return true;
    }

    public final void h(String str) {
        String str2 = zzfj.f7405a;
        String str3 = this.b;
        int length = String.valueOf(str3).length();
        int length2 = String.valueOf(str2).length();
        int length3 = str.length() + 14;
        String str4 = this.f9294a;
        StringBuilder sb = new StringBuilder(str4.length() + length3 + 2 + length + 3 + length2 + 1);
        android.support.v4.media.a.z(sb, "NoSupport [", str, "] [", str4);
        android.support.v4.media.a.z(sb, ", ", str3, "] [", str2);
        sb.append("]");
        zzee.a("MediaCodecInfo", sb.toString());
    }

    public final String toString() {
        return this.f9294a;
    }
}
