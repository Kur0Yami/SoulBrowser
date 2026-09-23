package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.CollectionUtils;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbnu implements zzbnn {
    public static final Map d = CollectionUtils.mapOfKeyValueArrays(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.zzb f4788a;
    public final zzbvx b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbwe f4789c;

    public zzbnu(com.google.android.gms.ads.internal.zzb zzbVar, zzbvx zzbvxVar, zzbwe zzbweVar) {
        this.f4788a = zzbVar;
        this.b = zzbvxVar;
        this.f4789c = zzbweVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:146:0x040d A[Catch: all -> 0x01b5, TryCatch #0 {all -> 0x01b5, blocks: (B:88:0x01aa, B:90:0x01ae, B:91:0x01b3, B:93:0x01b8, B:95:0x01c0, B:96:0x01c5, B:98:0x01c7, B:100:0x01d1, B:101:0x01d6, B:103:0x01d8, B:105:0x01de, B:106:0x01e3, B:108:0x01e5, B:110:0x01f3, B:111:0x0204, B:113:0x0212, B:114:0x0223, B:116:0x0231, B:117:0x0242, B:119:0x0250, B:120:0x0261, B:122:0x026f, B:123:0x027d, B:125:0x028b, B:126:0x028d, B:128:0x0291, B:130:0x0295, B:132:0x029b, B:135:0x02a3, B:138:0x02c4, B:143:0x02d4, B:146:0x040d, B:147:0x0412, B:149:0x0414, B:151:0x0431, B:153:0x043d, B:154:0x0476, B:159:0x04e8, B:160:0x0543, B:162:0x055b, B:163:0x0577, B:165:0x057f, B:166:0x0582, B:167:0x05ac, B:171:0x05af, B:173:0x05dd, B:174:0x05ef, B:178:0x04f9, B:181:0x050a, B:184:0x0519, B:187:0x0528, B:191:0x0539, B:192:0x053d, B:193:0x0473, B:194:0x05f1, B:195:0x05f6, B:197:0x02e2, B:199:0x02e6, B:203:0x038c, B:204:0x036a, B:207:0x0399, B:209:0x039d, B:211:0x03a1, B:214:0x03a9, B:217:0x0301, B:221:0x031e, B:222:0x0344, B:226:0x033a, B:229:0x0351, B:232:0x0363, B:235:0x0378, B:236:0x03b8, B:239:0x03e4, B:242:0x03f4, B:243:0x03ea, B:245:0x03f2, B:246:0x03db, B:248:0x03e1, B:251:0x03f9, B:253:0x0402, B:254:0x05f8, B:255:0x05fd, B:257:0x05ff, B:258:0x0604), top: B:87:0x01aa, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0414 A[Catch: all -> 0x01b5, TryCatch #0 {all -> 0x01b5, blocks: (B:88:0x01aa, B:90:0x01ae, B:91:0x01b3, B:93:0x01b8, B:95:0x01c0, B:96:0x01c5, B:98:0x01c7, B:100:0x01d1, B:101:0x01d6, B:103:0x01d8, B:105:0x01de, B:106:0x01e3, B:108:0x01e5, B:110:0x01f3, B:111:0x0204, B:113:0x0212, B:114:0x0223, B:116:0x0231, B:117:0x0242, B:119:0x0250, B:120:0x0261, B:122:0x026f, B:123:0x027d, B:125:0x028b, B:126:0x028d, B:128:0x0291, B:130:0x0295, B:132:0x029b, B:135:0x02a3, B:138:0x02c4, B:143:0x02d4, B:146:0x040d, B:147:0x0412, B:149:0x0414, B:151:0x0431, B:153:0x043d, B:154:0x0476, B:159:0x04e8, B:160:0x0543, B:162:0x055b, B:163:0x0577, B:165:0x057f, B:166:0x0582, B:167:0x05ac, B:171:0x05af, B:173:0x05dd, B:174:0x05ef, B:178:0x04f9, B:181:0x050a, B:184:0x0519, B:187:0x0528, B:191:0x0539, B:192:0x053d, B:193:0x0473, B:194:0x05f1, B:195:0x05f6, B:197:0x02e2, B:199:0x02e6, B:203:0x038c, B:204:0x036a, B:207:0x0399, B:209:0x039d, B:211:0x03a1, B:214:0x03a9, B:217:0x0301, B:221:0x031e, B:222:0x0344, B:226:0x033a, B:229:0x0351, B:232:0x0363, B:235:0x0378, B:236:0x03b8, B:239:0x03e4, B:242:0x03f4, B:243:0x03ea, B:245:0x03f2, B:246:0x03db, B:248:0x03e1, B:251:0x03f9, B:253:0x0402, B:254:0x05f8, B:255:0x05fd, B:257:0x05ff, B:258:0x0604), top: B:87:0x01aa, inners: #1 }] */
    @Override // com.google.android.gms.internal.ads.zzbnn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.Map r18, java.lang.Object r19) {
        /*
            Method dump skipped, instructions count: 1676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbnu.a(java.util.Map, java.lang.Object):void");
    }
}
