package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzamo implements zzaly {
    public static final Pattern g = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4200a;
    public final zzamn b;
    public LinkedHashMap d;
    public float e = -3.4028235E38f;
    public float f = -3.4028235E38f;

    /* renamed from: c, reason: collision with root package name */
    public final zzer f4201c = new zzer();

    public zzamo(List list) {
        if (list != null && !list.isEmpty()) {
            this.f4200a = true;
            byte[] bArr = (byte[]) list.get(0);
            Charset charset = StandardCharsets.UTF_8;
            String str = new String(bArr, charset);
            zzgqa.a(str.startsWith("Format:"));
            zzamn a2 = zzamn.a(str);
            a2.getClass();
            this.b = a2;
            b(new zzer((byte[]) list.get(1)), charset);
            return;
        }
        this.f4200a = false;
        this.b = null;
    }

    public static long c(String str) {
        Matcher matcher = g.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String group = matcher.group(1);
        String str2 = zzfj.f7405a;
        long parseLong = Long.parseLong(group) * 3600000000L;
        long parseLong2 = Long.parseLong(matcher.group(2)) * 60000000;
        return parseLong + parseLong2 + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(4)) * 10000);
    }

    public static int d(long j, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        ArrayList arrayList3;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size >= 0) {
                if (((Long) arrayList.get(size)).longValue() == j) {
                    return size;
                }
                if (((Long) arrayList.get(size)).longValue() < j) {
                    i = size + 1;
                    break;
                }
            } else {
                i = 0;
                break;
            }
        }
        arrayList.add(i, Long.valueOf(j));
        if (i == 0) {
            arrayList3 = new ArrayList();
        } else {
            arrayList3 = new ArrayList((Collection) arrayList2.get(i - 1));
        }
        arrayList2.add(i, arrayList3);
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0343, code lost:
    
        r1.g = r9;
        r6 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0347, code lost:
    
        if (r6 == null) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x034b, code lost:
    
        if (r5 == r23) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x034f, code lost:
    
        if (r4 == r23) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0351, code lost:
    
        r1.h = r6.x / r4;
        r1.e = r6.y / r5;
        r1.f = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x038e, code lost:
    
        r1 = r1.b();
        r4 = d(r14, r3, r2);
        r5 = d(r26, r3, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x039c, code lost:
    
        if (r4 >= r5) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x039e, code lost:
    
        ((java.util.List) r2.get(r4)).add(r1);
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x035f, code lost:
    
        r4 = r1.i;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x036b, code lost:
    
        if (r4 == 0) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x036d, code lost:
    
        if (r4 == 1) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x036f, code lost:
    
        if (r4 == 2) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0371, code lost:
    
        r4 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0379, code lost:
    
        r1.h = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x037b, code lost:
    
        if (r9 == 0) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x037d, code lost:
    
        if (r9 == 1) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x037f, code lost:
    
        if (r9 == 2) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0381, code lost:
    
        r8 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0389, code lost:
    
        r1.e = r8;
        r1.f = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0384, code lost:
    
        r8 = 0.95f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0386, code lost:
    
        r8 = 0.5f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0388, code lost:
    
        r8 = 0.05f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0374, code lost:
    
        r4 = 0.95f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0376, code lost:
    
        r4 = 0.5f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x0378, code lost:
    
        r4 = 0.05f;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:73:0x01b4. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01a5 A[Catch: RuntimeException -> 0x01d9, TRY_LEAVE, TryCatch #4 {RuntimeException -> 0x01d9, blocks: (B:67:0x0199, B:69:0x01a5, B:72:0x01ac, B:87:0x01c5, B:74:0x01b7), top: B:66:0x0199 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01d9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01ca A[SYNTHETIC] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // com.google.android.gms.internal.ads.zzaly
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(byte[] r29, int r30, int r31, com.google.android.gms.internal.ads.zzdr r32) {
        /*
            Method dump skipped, instructions count: 1138
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamo.a(byte[], int, int, com.google.android.gms.internal.ads.zzdr):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0293 A[Catch: RuntimeException -> 0x01da, TRY_LEAVE, TryCatch #3 {RuntimeException -> 0x01da, blocks: (B:52:0x01aa, B:54:0x01b8, B:56:0x01be, B:60:0x01df, B:62:0x01e3, B:63:0x01f2, B:65:0x01f6, B:66:0x0205, B:68:0x0209, B:70:0x0211, B:72:0x023b, B:74:0x023f, B:77:0x0250, B:79:0x0254, B:82:0x0265, B:84:0x0269, B:87:0x027a, B:89:0x027e, B:92:0x028f, B:94:0x0293, B:96:0x029b, B:102:0x02b9, B:100:0x02ac, B:113:0x0219, B:58:0x01c9), top: B:51:0x01aa, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(com.google.android.gms.internal.ads.zzer r29, java.nio.charset.Charset r30) {
        /*
            Method dump skipped, instructions count: 838
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamo.b(com.google.android.gms.internal.ads.zzer, java.nio.charset.Charset):void");
    }
}
