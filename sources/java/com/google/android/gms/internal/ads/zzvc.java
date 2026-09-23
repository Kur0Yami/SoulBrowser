package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

@SuppressLint({"InlinedApi"})
/* loaded from: classes.dex */
public final class zzvc {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f9311a = new HashMap();

    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object, com.google.android.gms.internal.ads.zzuv] */
    public static synchronized List a(String str, boolean z, boolean z2) {
        synchronized (zzvc.class) {
            try {
                zzut zzutVar = new zzut(str, z, z2);
                HashMap hashMap = f9311a;
                List list = (List) hashMap.get(zzutVar);
                if (list != null) {
                    return list;
                }
                ArrayList e = e(zzutVar, new zzux(z, z2, str.equals("video/mv-hevc")));
                if (z && e.isEmpty() && Build.VERSION.SDK_INT == 23) {
                    e = e(zzutVar, new Object());
                    if (!e.isEmpty()) {
                        String str2 = ((zzuj) e.get(0)).f9294a;
                        StringBuilder sb = new StringBuilder(str.length() + 63 + str2.length());
                        sb.append("MediaCodecList API didn't list secure decoder for: ");
                        sb.append(str);
                        sb.append(". Assuming: ");
                        sb.append(str2);
                        zzee.c("MediaCodecUtil", sb.toString());
                    }
                }
                if ("audio/raw".equals(str)) {
                    if (Build.VERSION.SDK_INT < 26 && Build.DEVICE.equals("R9") && e.size() == 1 && ((zzuj) e.get(0)).f9294a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                        e.add(zzuj.a("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, false));
                    }
                    Collections.sort(e, new zzuz(zzuy.f9306a));
                }
                if (Build.VERSION.SDK_INT < 32 && e.size() > 1 && "OMX.qti.audio.decoder.flac".equals(((zzuj) e.get(0)).f9294a)) {
                    e.add((zzuj) e.remove(0));
                }
                zzgtd v = zzgtd.v(e);
                hashMap.put(zzutVar, v);
                return v;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    public static List b(zzus zzusVar, zzv zzvVar, boolean z, boolean z2) {
        List a2;
        List a3 = zzusVar.a(zzvVar.m, z, z2);
        String d = d(zzvVar);
        if (d == null) {
            a2 = zzguy.i;
        } else {
            a2 = zzusVar.a(d, z, z2);
        }
        zzgvs zzgvsVar = zzgtd.f;
        ?? zzgsxVar = new zzgsx(4);
        zzgsxVar.d(a3);
        zzgsxVar.d(a2);
        return zzgsxVar.f();
    }

    public static MediaCodecInfo.CodecProfileLevel c(int i, int i2) {
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = i;
        codecProfileLevel.level = i2;
        return codecProfileLevel;
    }

    public static String d(zzv zzvVar) {
        Pair b;
        String str = zzvVar.m;
        if ("audio/eac3-joc".equals(str)) {
            return "audio/eac3";
        }
        if ("video/dolby-vision".equals(str) && (b = zzdo.b(zzvVar)) != null) {
            int intValue = ((Integer) b.first).intValue();
            if (intValue != 16 && intValue != 256) {
                if (intValue == 512) {
                    return "video/avc";
                }
                if (intValue == 1024) {
                    return "video/av01";
                }
            } else {
                return "video/hevc";
            }
        }
        if (!"video/mv-hevc".equals(str)) {
            return null;
        }
        return "video/hevc";
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:(1:(1:57))|58|59|(2:112|113)(2:61|(1:63)(1:111))|64|(1:66)(2:103|(1:107))|(10:(1:69)|70|71|72|73|74|75|76|34|35)|(4:96|(2:99|101)|34|35)|70|71|72|73|74|75|76|34|35) */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0211, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0213, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0214, code lost:
    
        r2 = r11;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01d8 A[Catch: Exception -> 0x01ba, TryCatch #0 {Exception -> 0x01ba, blocks: (B:113:0x01b5, B:64:0x01cb, B:66:0x01d4, B:103:0x01d8, B:105:0x01e8, B:107:0x01f0, B:61:0x01c0), top: B:112:0x01b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0102 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f2 A[Catch: Exception -> 0x02ba, TryCatch #1 {Exception -> 0x02ba, blocks: (B:3:0x0012, B:5:0x0027, B:7:0x0031, B:12:0x003f, B:16:0x004f, B:21:0x0065, B:23:0x006f, B:29:0x00d9, B:31:0x00e1, B:36:0x00e9, B:38:0x00f2, B:79:0x024f, B:82:0x0257, B:84:0x025d, B:86:0x027e, B:87:0x02ac, B:40:0x00ff, B:123:0x0102, B:125:0x010b, B:128:0x0116, B:130:0x011e, B:133:0x0129, B:135:0x0131, B:137:0x0139, B:140:0x0144, B:142:0x014c, B:145:0x0157, B:147:0x015f, B:150:0x016a, B:152:0x0172, B:155:0x007b, B:157:0x0087, B:159:0x0091, B:161:0x0099, B:163:0x00a1, B:165:0x00a9, B:167:0x00b1, B:169:0x00b9, B:171:0x00c1), top: B:2:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0180 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01c0 A[Catch: Exception -> 0x01ba, TryCatch #0 {Exception -> 0x01ba, blocks: (B:113:0x01b5, B:64:0x01cb, B:66:0x01d4, B:103:0x01d8, B:105:0x01e8, B:107:0x01f0, B:61:0x01c0), top: B:112:0x01b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01d4 A[Catch: Exception -> 0x01ba, TryCatch #0 {Exception -> 0x01ba, blocks: (B:113:0x01b5, B:64:0x01cb, B:66:0x01d4, B:103:0x01d8, B:105:0x01e8, B:107:0x01f0, B:61:0x01c0), top: B:112:0x01b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0257 A[Catch: Exception -> 0x02ba, TRY_ENTER, TryCatch #1 {Exception -> 0x02ba, blocks: (B:3:0x0012, B:5:0x0027, B:7:0x0031, B:12:0x003f, B:16:0x004f, B:21:0x0065, B:23:0x006f, B:29:0x00d9, B:31:0x00e1, B:36:0x00e9, B:38:0x00f2, B:79:0x024f, B:82:0x0257, B:84:0x025d, B:86:0x027e, B:87:0x02ac, B:40:0x00ff, B:123:0x0102, B:125:0x010b, B:128:0x0116, B:130:0x011e, B:133:0x0129, B:135:0x0131, B:137:0x0139, B:140:0x0144, B:142:0x014c, B:145:0x0157, B:147:0x015f, B:150:0x016a, B:152:0x0172, B:155:0x007b, B:157:0x0087, B:159:0x0091, B:161:0x0099, B:163:0x00a1, B:165:0x00a9, B:167:0x00b1, B:169:0x00b9, B:171:0x00c1), top: B:2:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x027e A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList e(com.google.android.gms.internal.ads.zzut r26, com.google.android.gms.internal.ads.zzuv r27) {
        /*
            Method dump skipped, instructions count: 707
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzvc.e(com.google.android.gms.internal.ads.zzut, com.google.android.gms.internal.ads.zzuv):java.util.ArrayList");
    }

    public static boolean f(MediaCodecInfo mediaCodecInfo, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (!zzas.a(str)) {
            String a2 = zzgpj.a(mediaCodecInfo.getName());
            if (!a2.startsWith("arc.")) {
                if (!a2.startsWith("omx.google.") && !a2.startsWith("omx.ffmpeg.")) {
                    if ((!a2.startsWith("omx.sec.") || !a2.contains(".sw.")) && !a2.equals("omx.qcom.video.decoder.hevcswvdec") && !a2.startsWith("c2.android.") && !a2.startsWith("c2.google.")) {
                        if (a2.startsWith("omx.") || a2.startsWith("c2.")) {
                            return false;
                        }
                        return true;
                    }
                    return true;
                }
                return true;
            }
            return false;
        }
        return true;
    }
}
