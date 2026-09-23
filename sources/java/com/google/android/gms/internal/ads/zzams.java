package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzams implements zzaly {
    public static final Pattern d = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");
    public static final Pattern e = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: a, reason: collision with root package name */
    public final StringBuilder f4208a = new StringBuilder();
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final zzer f4209c = new zzer();

    public static long b(Matcher matcher, int i) {
        long j;
        String group = matcher.group(i + 1);
        if (group != null) {
            j = Long.parseLong(group) * 3600000;
        } else {
            j = 0;
        }
        String group2 = matcher.group(i + 2);
        group2.getClass();
        long parseLong = (Long.parseLong(group2) * 60000) + j;
        String group3 = matcher.group(i + 3);
        group3.getClass();
        long parseLong2 = (Long.parseLong(group3) * 1000) + parseLong;
        String group4 = matcher.group(i + 4);
        if (group4 != null) {
            parseLong2 += Long.parseLong(group4);
        }
        return parseLong2 * 1000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0125, code lost:
    
        if (r7.equals("{\\an1}") != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x013a, code lost:
    
        if (r7.equals("{\\an9}") != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x014e, code lost:
    
        r3.g = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0150, code lost:
    
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0144, code lost:
    
        if (r7.equals("{\\an8}") != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x014b, code lost:
    
        if (r7.equals("{\\an7}") != false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0156, code lost:
    
        if (r7.equals("{\\an3}") != false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0168, code lost:
    
        r3.g = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x015f, code lost:
    
        if (r7.equals("{\\an2}") != false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0166, code lost:
    
        if (r7.equals("{\\an1}") != false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00fb, code lost:
    
        if (r7.equals("{\\an9}") != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x011e, code lost:
    
        r3.i = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0102, code lost:
    
        if (r7.equals("{\\an7}") != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0128, code lost:
    
        r3.i = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x010c, code lost:
    
        if (r7.equals("{\\an6}") != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0115, code lost:
    
        if (r7.equals("{\\an4}") != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x011c, code lost:
    
        if (r7.equals("{\\an3}") != false) goto L55;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x00f2. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:47:0x0131. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzaly
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(byte[] r18, int r19, int r20, com.google.android.gms.internal.ads.zzdr r21) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzams.a(byte[], int, int, com.google.android.gms.internal.ads.zzdr):void");
    }
}
