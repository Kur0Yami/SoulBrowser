package com.google.thirdparty.publicsuffix;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Joiner;
import com.google.common.collect.ImmutableMap;
import java.util.ArrayDeque;
import java.util.Arrays;

@GwtCompatible
/* loaded from: classes3.dex */
final class TrieParser {

    /* renamed from: a, reason: collision with root package name */
    public static final Joiner f12837a = new Joiner(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0081, code lost:
    
        if (r3 != ',') goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0083, code lost:
    
        if (r2 >= r0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0085, code lost:
    
        r2 = r2 + a(r11, r12, r2, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x008e, code lost:
    
        if (r12.charAt(r2) == '?') goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0094, code lost:
    
        if (r12.charAt(r2) != ',') goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0096, code lost:
    
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(java.util.ArrayDeque r11, java.lang.String r12, int r13, com.google.common.collect.ImmutableMap.Builder r14) {
        /*
            int r0 = r12.length()
            r1 = 0
            r2 = r13
            r3 = r1
        L7:
            r4 = 58
            r5 = 33
            r6 = 44
            r7 = 63
            if (r2 >= r0) goto L25
            char r3 = r12.charAt(r2)
            r8 = 38
            if (r3 == r8) goto L25
            if (r3 == r7) goto L25
            if (r3 == r5) goto L25
            if (r3 == r4) goto L25
            if (r3 != r6) goto L22
            goto L25
        L22:
            int r2 = r2 + 1
            goto L7
        L25:
            java.lang.CharSequence r8 = r12.subSequence(r13, r2)
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>(r8)
            java.lang.StringBuilder r8 = r9.reverse()
            r11.push(r8)
            if (r3 == r5) goto L3d
            if (r3 == r7) goto L3d
            if (r3 == r4) goto L3d
            if (r3 != r6) goto L7d
        L3d:
            com.google.common.base.Joiner r4 = com.google.thirdparty.publicsuffix.TrieParser.f12837a
            r4.getClass()
            java.util.Iterator r5 = r11.iterator()
            java.lang.String r4 = r4.c(r5)
            int r5 = r4.length()
            if (r5 <= 0) goto L7d
            com.google.thirdparty.publicsuffix.PublicSuffixType[] r5 = com.google.thirdparty.publicsuffix.PublicSuffixType.values()
            int r8 = r5.length
        L55:
            if (r1 >= r8) goto L69
            r9 = r5[r1]
            char r10 = r9.f12836c
            if (r10 == r3) goto L65
            char r10 = r9.f
            if (r10 != r3) goto L62
            goto L65
        L62:
            int r1 = r1 + 1
            goto L55
        L65:
            r14.d(r4, r9)
            goto L7d
        L69:
            java.lang.IllegalArgumentException r11 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r13 = "No enum corresponding to given code: "
            r12.<init>(r13)
            r12.append(r3)
            java.lang.String r12 = r12.toString()
            r11.<init>(r12)
            throw r11
        L7d:
            int r2 = r2 + 1
            if (r3 == r7) goto L98
            if (r3 == r6) goto L98
        L83:
            if (r2 >= r0) goto L98
            int r1 = a(r11, r12, r2, r14)
            int r2 = r2 + r1
            char r1 = r12.charAt(r2)
            if (r1 == r7) goto L96
            char r1 = r12.charAt(r2)
            if (r1 != r6) goto L83
        L96:
            int r2 = r2 + 1
        L98:
            r11.pop()
            int r2 = r2 - r13
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.thirdparty.publicsuffix.TrieParser.a(java.util.ArrayDeque, java.lang.String, int, com.google.common.collect.ImmutableMap$Builder):int");
    }

    public static void b(CharSequence... charSequenceArr) {
        Joiner joiner = f12837a;
        joiner.getClass();
        String b = joiner.b(Arrays.asList(charSequenceArr));
        ImmutableMap.Builder a2 = ImmutableMap.a();
        int length = b.length();
        for (int i = 0; i < length; i += a(new ArrayDeque(), b, i, a2)) {
        }
        a2.b(true);
    }
}
