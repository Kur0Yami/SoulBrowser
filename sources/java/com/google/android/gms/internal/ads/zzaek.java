package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzaek implements zzaeu {

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f3955c = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};
    public static final zzaej d = new zzaej(zzaeh.f3953a);
    public static final zzaej e = new zzaej(zzaeg.f3952a);

    /* renamed from: a, reason: collision with root package name */
    public zzgtd f3956a;
    public final zzalr b = new Object();

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0364, code lost:
    
        if (r12 == r4) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0366, code lost:
    
        b(r12, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0142, code lost:
    
        if (r4.equals("application/mp4") != false) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x016d, code lost:
    
        if (r4.equals("image/heic") != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x0181, code lost:
    
        if (r4.equals("audio/amr-wb") != false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x018b, code lost:
    
        if (r4.equals("video/webm") != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x01aa, code lost:
    
        if (r4.equals("audio/eac3-joc") != false) goto L113;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x01af A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:4:0x0003, B:6:0x0018, B:9:0x001f, B:14:0x01af, B:15:0x01b2, B:20:0x0366, B:21:0x0369, B:23:0x036e, B:26:0x0374, B:28:0x0377, B:32:0x037a, B:37:0x01bb, B:39:0x01c3, B:41:0x01ce, B:44:0x01da, B:46:0x01e4, B:49:0x01ed, B:52:0x01f8, B:55:0x0203, B:58:0x020e, B:60:0x0216, B:62:0x021e, B:64:0x022a, B:66:0x0238, B:69:0x0242, B:72:0x024d, B:74:0x0255, B:76:0x0263, B:78:0x0271, B:80:0x0283, B:82:0x0291, B:84:0x029d, B:86:0x02a5, B:88:0x02ad, B:90:0x02b5, B:92:0x02c1, B:94:0x02c9, B:96:0x02da, B:98:0x02e2, B:100:0x02ee, B:102:0x02f6, B:104:0x0302, B:106:0x030a, B:108:0x0314, B:111:0x031f, B:114:0x0329, B:117:0x0334, B:119:0x033c, B:121:0x0347, B:123:0x034f, B:125:0x0359, B:139:0x004c, B:140:0x0054, B:142:0x0058, B:146:0x0062, B:149:0x006c, B:152:0x0077, B:155:0x0083, B:158:0x008e, B:162:0x0098, B:166:0x00a2, B:170:0x00ac, B:173:0x00b8, B:176:0x00c4, B:179:0x00ce, B:182:0x00d8, B:185:0x00e4, B:188:0x00ee, B:191:0x00f9, B:194:0x0103, B:197:0x010d, B:200:0x0118, B:203:0x0124, B:206:0x0130, B:209:0x013c, B:211:0x0148, B:214:0x0154, B:217:0x015e, B:221:0x0167, B:223:0x0171, B:226:0x017b, B:228:0x0185, B:230:0x018f, B:233:0x0199, B:236:0x01a4), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x036e A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:4:0x0003, B:6:0x0018, B:9:0x001f, B:14:0x01af, B:15:0x01b2, B:20:0x0366, B:21:0x0369, B:23:0x036e, B:26:0x0374, B:28:0x0377, B:32:0x037a, B:37:0x01bb, B:39:0x01c3, B:41:0x01ce, B:44:0x01da, B:46:0x01e4, B:49:0x01ed, B:52:0x01f8, B:55:0x0203, B:58:0x020e, B:60:0x0216, B:62:0x021e, B:64:0x022a, B:66:0x0238, B:69:0x0242, B:72:0x024d, B:74:0x0255, B:76:0x0263, B:78:0x0271, B:80:0x0283, B:82:0x0291, B:84:0x029d, B:86:0x02a5, B:88:0x02ad, B:90:0x02b5, B:92:0x02c1, B:94:0x02c9, B:96:0x02da, B:98:0x02e2, B:100:0x02ee, B:102:0x02f6, B:104:0x0302, B:106:0x030a, B:108:0x0314, B:111:0x031f, B:114:0x0329, B:117:0x0334, B:119:0x033c, B:121:0x0347, B:123:0x034f, B:125:0x0359, B:139:0x004c, B:140:0x0054, B:142:0x0058, B:146:0x0062, B:149:0x006c, B:152:0x0077, B:155:0x0083, B:158:0x008e, B:162:0x0098, B:166:0x00a2, B:170:0x00ac, B:173:0x00b8, B:176:0x00c4, B:179:0x00ce, B:182:0x00d8, B:185:0x00e4, B:188:0x00ee, B:191:0x00f9, B:194:0x0103, B:197:0x010d, B:200:0x0118, B:203:0x0124, B:206:0x0130, B:209:0x013c, B:211:0x0148, B:214:0x0154, B:217:0x015e, B:221:0x0167, B:223:0x0171, B:226:0x017b, B:228:0x0185, B:230:0x018f, B:233:0x0199, B:236:0x01a4), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01bb A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:4:0x0003, B:6:0x0018, B:9:0x001f, B:14:0x01af, B:15:0x01b2, B:20:0x0366, B:21:0x0369, B:23:0x036e, B:26:0x0374, B:28:0x0377, B:32:0x037a, B:37:0x01bb, B:39:0x01c3, B:41:0x01ce, B:44:0x01da, B:46:0x01e4, B:49:0x01ed, B:52:0x01f8, B:55:0x0203, B:58:0x020e, B:60:0x0216, B:62:0x021e, B:64:0x022a, B:66:0x0238, B:69:0x0242, B:72:0x024d, B:74:0x0255, B:76:0x0263, B:78:0x0271, B:80:0x0283, B:82:0x0291, B:84:0x029d, B:86:0x02a5, B:88:0x02ad, B:90:0x02b5, B:92:0x02c1, B:94:0x02c9, B:96:0x02da, B:98:0x02e2, B:100:0x02ee, B:102:0x02f6, B:104:0x0302, B:106:0x030a, B:108:0x0314, B:111:0x031f, B:114:0x0329, B:117:0x0334, B:119:0x033c, B:121:0x0347, B:123:0x034f, B:125:0x0359, B:139:0x004c, B:140:0x0054, B:142:0x0058, B:146:0x0062, B:149:0x006c, B:152:0x0077, B:155:0x0083, B:158:0x008e, B:162:0x0098, B:166:0x00a2, B:170:0x00ac, B:173:0x00b8, B:176:0x00c4, B:179:0x00ce, B:182:0x00d8, B:185:0x00e4, B:188:0x00ee, B:191:0x00f9, B:194:0x0103, B:197:0x010d, B:200:0x0118, B:203:0x0124, B:206:0x0130, B:209:0x013c, B:211:0x0148, B:214:0x0154, B:217:0x015e, B:221:0x0167, B:223:0x0171, B:226:0x017b, B:228:0x0185, B:230:0x018f, B:233:0x0199, B:236:0x01a4), top: B:3:0x0003 }] */
    @Override // com.google.android.gms.internal.ads.zzaeu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized com.google.android.gms.internal.ads.zzaeo[] a(android.net.Uri r26, java.util.Map r27) {
        /*
            Method dump skipped, instructions count: 1032
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaek.a(android.net.Uri, java.util.Map):com.google.android.gms.internal.ads.zzaeo[]");
    }

    /* JADX WARN: Type inference failed for: r5v20, types: [com.google.android.gms.internal.ads.zzaqd, java.lang.Object] */
    public final void b(int i, ArrayList arrayList) {
        zzalr zzalrVar = this.b;
        switch (i) {
            case 0:
                arrayList.add(new zzanv());
                return;
            case 1:
                arrayList.add(new zzany());
                return;
            case 2:
                arrayList.add(new zzaob());
                return;
            case 3:
                arrayList.add(new zzagi());
                return;
            case 4:
                zzaeo a2 = d.a(0);
                if (a2 != null) {
                    arrayList.add(a2);
                    return;
                } else {
                    arrayList.add(new zzagz());
                    return;
                }
            case 5:
                arrayList.add(new zzahc());
                return;
            case 6:
                arrayList.add(new zzaja(new zzait(), 0, zzalrVar));
                return;
            case 7:
                arrayList.add(new zzaji());
                return;
            case 8:
                arrayList.add(new zzakh(zzalrVar, 0, zzguy.i));
                arrayList.add(new zzakp(zzalrVar, 0));
                return;
            case 9:
                arrayList.add(new Object());
                return;
            case 10:
                arrayList.add(new zzapf());
                return;
            case 11:
                if (this.f3956a == null) {
                    zzgvs zzgvsVar = zzgtd.f;
                    this.f3956a = zzguy.i;
                }
                arrayList.add(new zzapq(zzalrVar, new zzfg(), new zzaod(this.f3956a)));
                return;
            case 12:
                ?? obj = new Object();
                obj.f4339c = 0;
                obj.d = -1L;
                obj.f = -1;
                obj.g = -1L;
                arrayList.add(obj);
                return;
            case 13:
            default:
                return;
            case 14:
                arrayList.add(new zzahj());
                return;
            case 15:
                zzaeo a3 = e.a(new Object[0]);
                if (a3 != null) {
                    arrayList.add(a3);
                    return;
                }
                return;
            case 16:
                arrayList.add(new zzagm(zzalrVar));
                return;
            case 17:
                arrayList.add(new zzalp());
                return;
            case 18:
                arrayList.add(new zzaqi());
                return;
            case 19:
                arrayList.add(new zzagu());
                return;
            case 20:
                arrayList.add(new zzahi());
                return;
            case 21:
                arrayList.add(new zzagt());
                return;
        }
    }
}
