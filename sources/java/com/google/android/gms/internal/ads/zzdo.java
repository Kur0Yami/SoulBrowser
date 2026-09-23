package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Locale;
import java.util.regex.Pattern;

@SuppressLint({"InlinedApi"})
/* loaded from: classes.dex */
public final class zzdo {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f5952a = {0, 0, 0, 1};
    public static final String[] b = {RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "A", "B", "C"};

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f5953c = Pattern.compile("^\\D?(\\d+)$");

    public static String a(int i, boolean z, int i2, int i3, int[] iArr, int i4) {
        char c2;
        String str = b[i];
        Integer valueOf = Integer.valueOf(i2);
        Integer valueOf2 = Integer.valueOf(i3);
        if (true != z) {
            c2 = 'L';
        } else {
            c2 = 'H';
        }
        Object[] objArr = {str, valueOf, valueOf2, Character.valueOf(c2), Integer.valueOf(i4)};
        String str2 = zzfj.f7405a;
        StringBuilder sb = new StringBuilder(String.format(Locale.US, "hvc1.%s%d.%X.%c%d", objArr));
        int i5 = 6;
        while (i5 > 0) {
            int i6 = i5 - 1;
            if (iArr[i6] != 0) {
                break;
            }
            i5 = i6;
        }
        for (int i7 = 0; i7 < i5; i7++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i7])));
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0155, code lost:
    
        if (r0.equals("11") != false) goto L104;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:107:0x01dc. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:234:0x0372. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:19:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x03fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair b(com.google.android.gms.internal.ads.zzv r27) {
        /*
            Method dump skipped, instructions count: 2066
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdo.b(com.google.android.gms.internal.ads.zzv):android.util.Pair");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair c(java.lang.String r8, java.lang.String[] r9, com.google.android.gms.internal.ads.zzi r10) {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdo.c(java.lang.String, java.lang.String[], com.google.android.gms.internal.ads.zzi):android.util.Pair");
    }
}
