package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import com.google.android.gms.common.Scopes;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.PriorityQueue;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzabw extends zzuq implements zzacl {
    public static final int[] r1 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    public static boolean s1;
    public static boolean t1;
    public final Context F0;
    public final boolean G0;
    public final zzadf H0;
    public final boolean I0;
    public final zzacm J0;
    public final zzack K0;
    public final long L0;
    public final PriorityQueue M0;
    public zzabv N0;
    public boolean O0;
    public boolean P0;
    public zzadl Q0;
    public boolean R0;
    public int S0;
    public List T0;
    public Surface U0;
    public zzaby V0;
    public zzes W0;
    public boolean X0;
    public int Y0;
    public int Z0;
    public long a1;
    public int b1;
    public int c1;
    public int d1;
    public zzmp e1;
    public boolean f1;
    public long g1;
    public int h1;
    public long i1;
    public zzbv j1;
    public zzbv k1;
    public int l1;
    public int m1;
    public zzacj n1;
    public long o1;
    public long p1;
    public boolean q1;

    public zzabw(zzabu zzabuVar) {
        super(2, zzabuVar.d, zzabuVar.f3884c, 30.0f);
        boolean z;
        Context applicationContext = zzabuVar.f3883a.getApplicationContext();
        this.F0 = applicationContext;
        this.Q0 = null;
        this.H0 = new zzadf(zzabuVar.e, zzabuVar.f);
        if (this.Q0 == null) {
            z = true;
        } else {
            z = false;
        }
        this.G0 = z;
        this.J0 = new zzacm(applicationContext, this);
        this.K0 = new zzack();
        this.I0 = "NVIDIA".equals(Build.MANUFACTURER);
        this.W0 = zzes.f6870c;
        this.Y0 = 1;
        this.Z0 = 0;
        this.j1 = zzbv.d;
        this.m1 = 0;
        this.k1 = null;
        this.l1 = -1000;
        this.o1 = -9223372036854775807L;
        this.p1 = -9223372036854775807L;
        this.M0 = new PriorityQueue();
        this.L0 = -9223372036854775807L;
        this.e1 = null;
    }

    public static List A0(Context context, zzus zzusVar, zzv zzvVar, boolean z, boolean z2) {
        List a2;
        String str = zzvVar.m;
        if (str == null) {
            return zzguy.i;
        }
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(str) && !zzabt.a(context)) {
            String d = zzvc.d(zzvVar);
            if (d == null) {
                a2 = zzguy.i;
            } else {
                a2 = zzusVar.a(d, z, z2);
            }
            if (!a2.isEmpty()) {
                return a2;
            }
        }
        return zzvc.b(zzusVar, zzvVar, z, z2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x005e, code lost:
    
        if (r3.equals("video/x-vnd.on2.vp8") != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a4, code lost:
    
        if (r3.equals("video/mp4v-es") != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bc, code lost:
    
        if (r3.equals("video/av01") != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c5, code lost:
    
        if (r3.equals("video/3gpp") != false) goto L57;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x0047. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int t0(com.google.android.gms.internal.ads.zzuj r8, com.google.android.gms.internal.ads.zzv r9) {
        /*
            int r0 = r9.t
            int r1 = r9.u
            r2 = -1
            if (r0 == r2) goto Lcc
            if (r1 != r2) goto Lb
            goto Lcc
        Lb:
            java.lang.String r3 = r9.m
            r3.getClass()
            java.lang.String r4 = "video/dolby-vision"
            boolean r4 = r4.equals(r3)
            java.lang.String r5 = "video/avc"
            java.lang.String r6 = "video/av01"
            java.lang.String r7 = "video/hevc"
            if (r4 == 0) goto L42
            java.util.HashMap r3 = com.google.android.gms.internal.ads.zzvc.f9311a
            android.util.Pair r9 = com.google.android.gms.internal.ads.zzdo.b(r9)
            if (r9 == 0) goto L41
            java.lang.Object r9 = r9.first
            java.lang.Integer r9 = (java.lang.Integer) r9
            int r9 = r9.intValue()
            r3 = 512(0x200, float:7.17E-43)
            if (r9 == r3) goto L3f
            r3 = 1
            if (r9 == r3) goto L3f
            r3 = 2
            if (r9 != r3) goto L39
            goto L3f
        L39:
            r3 = 1024(0x400, float:1.435E-42)
            if (r9 != r3) goto L41
            r3 = r6
            goto L42
        L3f:
            r3 = r5
            goto L42
        L41:
            r3 = r7
        L42:
            int r9 = r3.hashCode()
            r4 = 4
            switch(r9) {
                case -1664118616: goto Lbf;
                case -1662735862: goto Lb8;
                case -1662541442: goto La7;
                case 1187890754: goto L9e;
                case 1331836730: goto L61;
                case 1599127256: goto L58;
                case 1599127257: goto L4c;
                default: goto L4a;
            }
        L4a:
            goto Lcc
        L4c:
            java.lang.String r8 = "video/x-vnd.on2.vp9"
            boolean r8 = r3.equals(r8)
            if (r8 == 0) goto Lcc
            r4 = 8
            goto Lc7
        L58:
            java.lang.String r8 = "video/x-vnd.on2.vp8"
            boolean r8 = r3.equals(r8)
            if (r8 == 0) goto Lcc
            goto Lc7
        L61:
            boolean r9 = r3.equals(r5)
            if (r9 == 0) goto Lcc
            java.lang.String r9 = android.os.Build.MODEL
            java.lang.String r3 = "BRAVIA 4K 2015"
            boolean r3 = r3.equals(r9)
            if (r3 != 0) goto Lcc
            java.lang.String r3 = "Amazon"
            java.lang.String r5 = android.os.Build.MANUFACTURER
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L8f
            java.lang.String r3 = "KFSOWI"
            boolean r3 = r3.equals(r9)
            if (r3 != 0) goto Lcc
            java.lang.String r3 = "AFTS"
            boolean r9 = r3.equals(r9)
            if (r9 == 0) goto L8f
            boolean r8 = r8.f
            if (r8 != 0) goto Lcc
        L8f:
            java.lang.String r8 = com.google.android.gms.internal.ads.zzfj.f7405a
            int r0 = r0 + 15
            int r1 = r1 + 15
            int r0 = r0 / 16
            int r1 = r1 / 16
            int r1 = r1 * r0
            int r1 = r1 * 768
            int r1 = r1 / r4
            return r1
        L9e:
            java.lang.String r8 = "video/mp4v-es"
            boolean r8 = r3.equals(r8)
            if (r8 == 0) goto Lcc
            goto Lc7
        La7:
            boolean r8 = r3.equals(r7)
            if (r8 == 0) goto Lcc
            int r0 = r0 * r1
            int r0 = r0 * 3
            int r0 = r0 / r4
            r8 = 2097152(0x200000, float:2.938736E-39)
            int r8 = java.lang.Math.max(r8, r0)
            return r8
        Lb8:
            boolean r8 = r3.equals(r6)
            if (r8 == 0) goto Lcc
            goto Lc7
        Lbf:
            java.lang.String r8 = "video/3gpp"
            boolean r8 = r3.equals(r8)
            if (r8 == 0) goto Lcc
        Lc7:
            int r0 = r0 * r1
            int r0 = r0 * 3
            int r0 = r0 / r4
            return r0
        Lcc:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabw.t0(com.google.android.gms.internal.ads.zzuj, com.google.android.gms.internal.ads.zzv):int");
    }

    public static int y0(zzuj zzujVar, zzv zzvVar) {
        int i = zzvVar.n;
        if (i != -1) {
            List list = zzvVar.p;
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += ((byte[]) list.get(i3)).length;
            }
            return i + i2;
        }
        return t0(zzujVar, zzvVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ac, code lost:
    
        if (r1.equals("itel_S41") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01b6, code lost:
    
        if (r1.equals("LS-5017") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01c0, code lost:
    
        if (r1.equals("panell_d") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01ca, code lost:
    
        if (r1.equals("j2xlteins") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01d4, code lost:
    
        if (r1.equals("A7000plus") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01de, code lost:
    
        if (r1.equals("manning") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01e8, code lost:
    
        if (r1.equals("GIONEE_WBL7519") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01f2, code lost:
    
        if (r1.equals("GIONEE_WBL7365") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01fc, code lost:
    
        if (r1.equals("GIONEE_WBL5708") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0206, code lost:
    
        if (r1.equals("QM16XE_U") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0210, code lost:
    
        if (r1.equals("Pixi5-10_4G") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x021a, code lost:
    
        if (r1.equals("TB3-850M") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0224, code lost:
    
        if (r1.equals("TB3-850F") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x022e, code lost:
    
        if (r1.equals("TB3-730X") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0238, code lost:
    
        if (r1.equals("TB3-730F") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0242, code lost:
    
        if (r1.equals("A7020a48") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x024c, code lost:
    
        if (r1.equals("A7010a48") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0256, code lost:
    
        if (r1.equals("griffin") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0260, code lost:
    
        if (r1.equals("marino_f") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x026a, code lost:
    
        if (r1.equals("CPY83_I00") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0274, code lost:
    
        if (r1.equals("A2016a40") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x027e, code lost:
    
        if (r1.equals("le_x6") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0288, code lost:
    
        if (r1.equals("l5460") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0292, code lost:
    
        if (r1.equals("i9031") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x029c, code lost:
    
        if (r1.equals("X3_HK") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02a6, code lost:
    
        if (r1.equals("V23GB") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02b0, code lost:
    
        if (r1.equals("Q4310") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02ba, code lost:
    
        if (r1.equals("Q4260") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02c4, code lost:
    
        if (r1.equals("PRO7S") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02ce, code lost:
    
        if (r1.equals("F3311") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0028, code lost:
    
        if (r2.equals("machuca") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02d8, code lost:
    
        if (r1.equals("F3215") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x02e2, code lost:
    
        if (r1.equals("F3213") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x02ec, code lost:
    
        if (r1.equals("F3211") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x02f6, code lost:
    
        if (r1.equals("F3116") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0300, code lost:
    
        if (r1.equals("F3113") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x030a, code lost:
    
        if (r1.equals("F3111") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0314, code lost:
    
        if (r1.equals("E5643") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x031e, code lost:
    
        if (r1.equals("A1601") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0328, code lost:
    
        if (r1.equals("Aura_Note_2") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0332, code lost:
    
        if (r1.equals("602LV") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x033c, code lost:
    
        if (r1.equals("601LV") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0346, code lost:
    
        if (r1.equals("MEIZU_M5") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0350, code lost:
    
        if (r1.equals("p212") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x035a, code lost:
    
        if (r1.equals("mido") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x0364, code lost:
    
        if (r1.equals("kate") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x036e, code lost:
    
        if (r1.equals("fugu") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x0378, code lost:
    
        if (r1.equals("XE2X") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0382, code lost:
    
        if (r1.equals("Q427") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x038c, code lost:
    
        if (r1.equals("Q350") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0396, code lost:
    
        if (r1.equals("P681") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0031, code lost:
    
        if (r2.equals("once") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x03a0, code lost:
    
        if (r1.equals("F04J") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x03aa, code lost:
    
        if (r1.equals("F04H") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x03b4, code lost:
    
        if (r1.equals("F03H") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x03be, code lost:
    
        if (r1.equals("F02H") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x03c8, code lost:
    
        if (r1.equals("F01J") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x03d2, code lost:
    
        if (r1.equals("F01H") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x03dc, code lost:
    
        if (r1.equals("1714") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x03e6, code lost:
    
        if (r1.equals("1713") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x03f0, code lost:
    
        if (r1.equals("1601") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x03fa, code lost:
    
        if (r1.equals("flo") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003a, code lost:
    
        if (r2.equals("magnolia") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0404, code lost:
    
        if (r1.equals("deb") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x040e, code lost:
    
        if (r1.equals("cv3") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x0418, code lost:
    
        if (r1.equals("cv1") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x0422, code lost:
    
        if (r1.equals("Z80") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x042c, code lost:
    
        if (r1.equals("QX1") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0436, code lost:
    
        if (r1.equals("PLE") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x0440, code lost:
    
        if (r1.equals("P85") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x044a, code lost:
    
        if (r1.equals("MX6") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0454, code lost:
    
        if (r1.equals("M5c") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x045e, code lost:
    
        if (r1.equals("M04") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0043, code lost:
    
        if (r2.equals("aquaman") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0468, code lost:
    
        if (r1.equals("JGZ") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0472, code lost:
    
        if (r1.equals("mh") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x047c, code lost:
    
        if (r1.equals("b5") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0486, code lost:
    
        if (r1.equals("V5") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0490, code lost:
    
        if (r1.equals("V1") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x049a, code lost:
    
        if (r1.equals("Q5") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x04a4, code lost:
    
        if (r1.equals("C1") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x04ae, code lost:
    
        if (r1.equals("woods_fn") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x04b8, code lost:
    
        if (r1.equals("ELUGA_A3_Pro") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x04c2, code lost:
    
        if (r1.equals("Z12_PRO") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
    
        if (r2.equals("oneday") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x04cc, code lost:
    
        if (r1.equals("BLACK-1X") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:262:0x04d6, code lost:
    
        if (r1.equals("taido_row") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x04e0, code lost:
    
        if (r1.equals("Pixi4-7_3G") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x04ea, code lost:
    
        if (r1.equals("GIONEE_GBL7360") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x04f4, code lost:
    
        if (r1.equals("GiONEE_CBL7513") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x04fe, code lost:
    
        if (r1.equals("OnePlus5T") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0508, code lost:
    
        if (r1.equals("whyred") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0512, code lost:
    
        if (r1.equals("watson") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x051c, code lost:
    
        if (r1.equals("SVP-DTV15") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0526, code lost:
    
        if (r1.equals("A7000-a") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0055, code lost:
    
        if (r2.equals("dangalUHD") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0530, code lost:
    
        if (r1.equals("nicklaus_f") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x053a, code lost:
    
        if (r1.equals("tcl_eu") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0544, code lost:
    
        if (r1.equals("ELUGA_Ray_X") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x054e, code lost:
    
        if (r1.equals("s905x018") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0558, code lost:
    
        if (r1.equals("A10-70L") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0562, code lost:
    
        if (r1.equals("A10-70F") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x056c, code lost:
    
        if (r1.equals("namath") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x0576, code lost:
    
        if (r1.equals("Slate_Pro") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:296:0x0580, code lost:
    
        if (r1.equals("iris60") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x058a, code lost:
    
        if (r1.equals("BRAVIA_ATV2") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
    
        if (r2.equals("dangalFHD") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x0594, code lost:
    
        if (r1.equals("GiONEE_GBL7319") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x059e, code lost:
    
        if (r1.equals("panell_dt") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x05a8, code lost:
    
        if (r1.equals("panell_ds") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x05b2, code lost:
    
        if (r1.equals("panell_dl") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x05bc, code lost:
    
        if (r1.equals("vernee_M5") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x05c6, code lost:
    
        if (r1.equals("pacificrim") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x05d0, code lost:
    
        if (r1.equals("Phantom6") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x05da, code lost:
    
        if (r1.equals("ComioS1") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x05e4, code lost:
    
        if (r1.equals("XT1663") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x05ee, code lost:
    
        if (r1.equals("RAIJIN") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0067, code lost:
    
        if (r2.equals("dangal") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x05f8, code lost:
    
        if (r1.equals("AquaPowerM") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0601, code lost:
    
        if (r1.equals("PGN611") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x060a, code lost:
    
        if (r1.equals("PGN610") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0613, code lost:
    
        if (r1.equals("PGN528") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x061c, code lost:
    
        if (r1.equals("NX573J") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x0625, code lost:
    
        if (r1.equals("NX541J") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x062e, code lost:
    
        if (r1.equals("CP8676_I02") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0637, code lost:
    
        if (r1.equals("K50a40") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0640, code lost:
    
        if (r1.equals("GIONEE_SWW1631") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0649, code lost:
    
        if (r1.equals("GIONEE_SWW1627") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x0652, code lost:
    
        if (r1.equals("GIONEE_SWW1609") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x0666, code lost:
    
        if (r2.equals("JSN-L21") == false) goto L507;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008e, code lost:
    
        if (r2.equals("AFTEUFF014") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
    
        if (r2.equals("AFTSO001") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a0, code lost:
    
        if (r2.equals("AFTEU014") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a9, code lost:
    
        if (r2.equals("AFTEU011") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b2, code lost:
    
        if (r2.equals("AFTR") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bb, code lost:
    
        if (r2.equals("AFTN") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c4, code lost:
    
        if (r2.equals("AFTA") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00cd, code lost:
    
        if (r2.equals("AFTKMST12") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d6, code lost:
    
        if (r2.equals("AFTJMST12") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ee, code lost:
    
        if (r1.equals("HWWAS-H") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00f8, code lost:
    
        if (r1.equals("HWVNS-H") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0102, code lost:
    
        if (r1.equals("ELUGA_Prim") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x010c, code lost:
    
        if (r1.equals("ELUGA_Note") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0116, code lost:
    
        if (r1.equals("ASUS_X00AD_2") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0120, code lost:
    
        if (r1.equals("HWCAM-H") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x012a, code lost:
    
        if (r1.equals("HWBLN-H") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0134, code lost:
    
        if (r1.equals("DM-01K") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x013e, code lost:
    
        if (r1.equals("BRAVIA_ATV3_4K") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0148, code lost:
    
        if (r1.equals("Infinix-X572") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0152, code lost:
    
        if (r1.equals("PB2-670M") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x015c, code lost:
    
        if (r1.equals("santoni") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0166, code lost:
    
        if (r1.equals("iball8735_9806") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0170, code lost:
    
        if (r1.equals("CPH1715") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x017a, code lost:
    
        if (r1.equals("CPH1609") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0184, code lost:
    
        if (r1.equals("woods_f") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x018e, code lost:
    
        if (r1.equals("htc_e56ml_dtul") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0198, code lost:
    
        if (r1.equals("EverStar_S") != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01a2, code lost:
    
        if (r1.equals("hwALE-H") != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean z0(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 2286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabw.z0(java.lang.String):boolean");
    }

    public final void B0(Object obj) {
        Surface surface;
        Handler handler;
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            surface = null;
        }
        Surface surface2 = this.U0;
        zzadf zzadfVar = this.H0;
        if (surface2 != surface) {
            this.U0 = surface;
            zzadl zzadlVar = this.Q0;
            zzacm zzacmVar = this.J0;
            if (zzadlVar == null) {
                zzacmVar.c(surface);
            }
            this.X0 = false;
            int i = this.l;
            zzug zzugVar = this.P;
            if (zzugVar != null && this.Q0 == null) {
                zzuj zzujVar = this.W;
                zzujVar.getClass();
                if (D0(zzujVar) && !this.O0) {
                    Surface E0 = E0(zzujVar);
                    if (E0 != null) {
                        zzugVar.c(E0);
                    } else if (Build.VERSION.SDK_INT >= 35) {
                        zzugVar.zzo();
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    H();
                    F();
                }
            }
            if (surface != null) {
                zzbv zzbvVar = this.k1;
                if (zzbvVar != null) {
                    zzadfVar.a(zzbvVar);
                }
            } else {
                this.k1 = null;
                zzadl zzadlVar2 = this.Q0;
                if (zzadlVar2 != null) {
                    zzadlVar2.zzq();
                }
            }
            if (i == 2) {
                zzadl zzadlVar3 = this.Q0;
                if (zzadlVar3 != null) {
                    zzadlVar3.zzw(true);
                    return;
                } else {
                    zzacmVar.i = true;
                    zzacmVar.h = -9223372036854775807L;
                    return;
                }
            }
            return;
        }
        if (surface != null) {
            zzbv zzbvVar2 = this.k1;
            if (zzbvVar2 != null) {
                zzadfVar.a(zzbvVar2);
            }
            Surface surface3 = this.U0;
            if (surface3 != null && this.X0 && (handler = zzadfVar.f3922a) != null) {
                handler.post(new zzada(zzadfVar, surface3, SystemClock.elapsedRealtime()));
            }
        }
    }

    public final boolean C0(zzih zzihVar) {
        if (t() || zzihVar.b(536870912)) {
            return true;
        }
        long j = this.p1;
        if (j == -9223372036854775807L || j - (zzihVar.f - this.y0.f9301c) <= 100000) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzij
    public final void D(boolean z, boolean z2) {
        zzadl zzadlVar;
        super.D(z, z2);
        A();
        final zzik zzikVar = this.x0;
        final zzadf zzadfVar = this.H0;
        Handler handler = zzadfVar.f3922a;
        if (handler != null) {
            handler.post(new Runnable(zzikVar) { // from class: com.google.android.gms.internal.ads.zzade
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzadf zzadfVar2 = zzadf.this;
                    zzadfVar2.getClass();
                    String str = zzfj.f7405a;
                    zzadfVar2.b.zzb();
                }
            });
        }
        boolean z3 = this.R0;
        zzacm zzacmVar = this.J0;
        if (!z3) {
            if (this.T0 != null && this.Q0 == null) {
                zzaca zzacaVar = new zzaca(this.F0, zzacmVar);
                zzacaVar.d = true;
                long j = this.L0;
                long j2 = -9223372036854775807L;
                if (j != -9223372036854775807L) {
                    j2 = -j;
                }
                zzacaVar.g = j2;
                zzdn zzdnVar = this.k;
                zzdnVar.getClass();
                zzacaVar.e = zzdnVar;
                zzgqa.f(!zzacaVar.f);
                if (zzacaVar.f3890c == null) {
                    zzacaVar.f3890c = new zzacg();
                }
                zzaci zzaciVar = new zzaci(zzacaVar);
                zzacaVar.f = true;
                zzaciVar.p = 1;
                SparseArray sparseArray = zzaciVar.f3899c;
                if (sparseArray.indexOfKey(0) >= 0) {
                    zzadlVar = (zzadl) sparseArray.get(0);
                } else {
                    zzacc zzaccVar = new zzacc(zzaciVar, zzaciVar.f3898a);
                    zzaciVar.g.add(zzaccVar);
                    sparseArray.put(0, zzaccVar);
                    zzadlVar = zzaccVar;
                }
                this.Q0 = zzadlVar;
            }
            this.R0 = true;
        }
        int i = !z2 ? 1 : 0;
        zzadl zzadlVar2 = this.Q0;
        if (zzadlVar2 != null) {
            zzadlVar2.b(new zzabr(this));
            zzacj zzacjVar = this.n1;
            if (zzacjVar != null) {
                this.Q0.j(zzacjVar);
            }
            if (this.U0 != null && !this.W0.equals(zzes.f6870c)) {
                this.Q0.d(this.U0, this.W0);
            }
            this.Q0.l(this.Z0);
            this.Q0.a(this.N);
            List list = this.T0;
            if (list != null) {
                this.Q0.f(list);
            }
            this.S0 = i;
            this.B0 = true;
            return;
        }
        zzdn zzdnVar2 = this.k;
        zzdnVar2.getClass();
        zzacmVar.k = zzdnVar2;
        zzacmVar.a(i);
    }

    public final boolean D0(zzuj zzujVar) {
        if (this.Q0 == null) {
            Surface surface = this.U0;
            if (surface == null || !surface.isValid()) {
                if (Build.VERSION.SDK_INT < 35 || !zzujVar.h) {
                    if (!z0(zzujVar.f9294a)) {
                        if (zzujVar.f && !zzaby.a(this.F0)) {
                            return false;
                        }
                        return true;
                    }
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzij
    public final void E(zzv[] zzvVarArr, long j, long j2, zzwg zzwgVar) {
        super.E(zzvVarArr, j, j2, zzwgVar);
        zzbf zzbfVar = this.t;
        if (zzbfVar.g()) {
            this.p1 = -9223372036854775807L;
        } else {
            this.p1 = zzbfVar.o(zzwgVar.f9337a, new zzbd()).d;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x006d  */
    /* JADX WARN: Type inference failed for: r0v12, types: [android.os.HandlerThread, java.lang.Thread, android.os.Handler$Callback, java.lang.Object, com.google.android.gms.internal.ads.zzabx] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.Surface E0(com.google.android.gms.internal.ads.zzuj r7) {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzadl r0 = r6.Q0
            if (r0 == 0) goto L9
            android.view.Surface r7 = r0.zzk()
            return r7
        L9:
            android.view.Surface r0 = r6.U0
            if (r0 == 0) goto Le
            return r0
        Le:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 35
            r2 = 0
            if (r0 < r1) goto L1a
            boolean r0 = r7.h
            if (r0 == 0) goto L1a
            return r2
        L1a:
            java.lang.String r0 = r7.f9294a
            boolean r0 = z0(r0)
            r1 = 0
            r3 = 1
            if (r0 != 0) goto L30
            boolean r0 = r7.f
            if (r0 == 0) goto L32
            android.content.Context r0 = r6.F0
            boolean r0 = com.google.android.gms.internal.ads.zzaby.a(r0)
            if (r0 != 0) goto L32
        L30:
            r0 = r1
            goto L33
        L32:
            r0 = r3
        L33:
            com.google.android.gms.internal.ads.zzgqa.f(r0)
            com.google.android.gms.internal.ads.zzaby r0 = r6.V0
            if (r0 == 0) goto L47
            boolean r4 = r7.f
            boolean r5 = r0.f3888c
            if (r5 == r4) goto L47
            if (r0 == 0) goto L47
            r0.release()
            r6.V0 = r2
        L47:
            com.google.android.gms.internal.ads.zzaby r0 = r6.V0
            if (r0 != 0) goto Lbf
            android.content.Context r0 = r6.F0
            boolean r7 = r7.f
            if (r7 == 0) goto L5b
            boolean r0 = com.google.android.gms.internal.ads.zzaby.a(r0)
            if (r0 == 0) goto L59
        L57:
            r0 = r3
            goto L5e
        L59:
            r0 = r1
            goto L5e
        L5b:
            int r0 = com.google.android.gms.internal.ads.zzaby.h
            goto L57
        L5e:
            com.google.android.gms.internal.ads.zzgqa.f(r0)
            com.google.android.gms.internal.ads.zzabx r0 = new com.google.android.gms.internal.ads.zzabx
            java.lang.String r2 = "ExoPlayer:PlaceholderSurface"
            r0.<init>(r2)
            if (r7 == 0) goto L6d
            int r7 = com.google.android.gms.internal.ads.zzaby.h
            goto L6e
        L6d:
            r7 = r1
        L6e:
            r0.start()
            android.os.Handler r2 = new android.os.Handler
            android.os.Looper r4 = r0.getLooper()
            r2.<init>(r4, r0)
            r0.f = r2
            com.google.android.gms.internal.ads.zzdt r4 = new com.google.android.gms.internal.ads.zzdt
            r4.<init>(r2)
            r0.f3887c = r4
            monitor-enter(r0)
            android.os.Handler r2 = r0.f     // Catch: java.lang.Throwable -> L9d
            android.os.Message r7 = r2.obtainMessage(r3, r7, r1)     // Catch: java.lang.Throwable -> L9d
            r7.sendToTarget()     // Catch: java.lang.Throwable -> L9d
        L8d:
            com.google.android.gms.internal.ads.zzaby r7 = r0.i     // Catch: java.lang.Throwable -> L9d
            if (r7 != 0) goto La1
            java.lang.RuntimeException r7 = r0.h     // Catch: java.lang.Throwable -> L9d
            if (r7 != 0) goto La1
            java.lang.Error r7 = r0.g     // Catch: java.lang.Throwable -> L9d
            if (r7 != 0) goto La1
            r0.wait()     // Catch: java.lang.Throwable -> L9d java.lang.InterruptedException -> L9f
            goto L8d
        L9d:
            r7 = move-exception
            goto Lbd
        L9f:
            r1 = r3
            goto L8d
        La1:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9d
            if (r1 == 0) goto Lab
            java.lang.Thread r7 = java.lang.Thread.currentThread()
            r7.interrupt()
        Lab:
            java.lang.RuntimeException r7 = r0.h
            if (r7 != 0) goto Lbc
            java.lang.Error r7 = r0.g
            if (r7 != 0) goto Lbb
            com.google.android.gms.internal.ads.zzaby r7 = r0.i
            r7.getClass()
            r6.V0 = r7
            goto Lbf
        Lbb:
            throw r7
        Lbc:
            throw r7
        Lbd:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9d
            throw r7
        Lbf:
            com.google.android.gms.internal.ads.zzaby r7 = r6.V0
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabw.E0(com.google.android.gms.internal.ads.zzuj):android.view.Surface");
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final boolean G(zzuj zzujVar) {
        return D0(zzujVar);
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final boolean I() {
        zzuj zzujVar = this.W;
        if (this.Q0 != null && zzujVar != null) {
            String str = zzujVar.f9294a;
            if (str.equals("c2.mtk.avc.decoder") || str.equals("c2.mtk.hevc.decoder")) {
                return true;
            }
        }
        return super.I();
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final boolean J() {
        boolean z;
        zzv zzvVar = this.Q;
        long j = this.p1;
        if (j != -9223372036854775807L) {
            if (this.D0 + 1 + j <= LongCompanionObject.MAX_VALUE - (this.y0.f9301c + j)) {
                z = false;
                if (this.e1 != null && !this.f1 && ((zzvVar == null || zzvVar.o <= 0) && !z && this.y0.e == -9223372036854775807L)) {
                    return false;
                }
                return true;
            }
        }
        z = true;
        if (this.e1 != null) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void K() {
        super.K();
        this.M0.clear();
        this.d1 = 0;
        this.f1 = false;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final zzui M(IllegalStateException illegalStateException, zzuj zzujVar) {
        Surface surface = this.U0;
        zzui zzuiVar = new zzui(illegalStateException, zzujVar);
        System.identityHashCode(surface);
        if (surface != null) {
            surface.isValid();
        }
        return zzuiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void N(zzv zzvVar) {
        zzadl zzadlVar = this.Q0;
        if (zzadlVar != null && !zzadlVar.zze()) {
            try {
                zzadlVar.i(zzvVar);
            } catch (zzadk e) {
                throw B(e, zzvVar, false, 7000);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void O(zzih zzihVar) {
        int P = P(zzihVar);
        if (Build.VERSION.SDK_INT >= 34 && (P & 32) != 0) {
            return;
        }
        this.d1++;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final int P(zzih zzihVar) {
        if (Build.VERSION.SDK_INT >= 34 && this.e1 != null && zzihVar.f < this.p && !C0(zzihVar)) {
            return 32;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final boolean Q(zzih zzihVar) {
        boolean z = false;
        if (!C0(zzihVar)) {
            if (zzihVar.f < this.p) {
                if (!zzihVar.b(268435456)) {
                    if (zzihVar.b(67108864)) {
                        zzihVar.c();
                        z = true;
                    }
                    if (z) {
                        this.x0.d++;
                    }
                }
            }
            return z;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void R(long j) {
        super.R(j);
        this.d1--;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final int S(zzus zzusVar, zzv zzvVar) {
        boolean z;
        boolean z2;
        int i;
        int i2;
        int i3;
        String str = zzvVar.m;
        boolean b = zzas.b(str);
        int i4 = Uuid.SIZE_BITS;
        if (!b) {
            return Uuid.SIZE_BITS;
        }
        int i5 = 0;
        if (zzvVar.q != null) {
            z = true;
        } else {
            z = false;
        }
        Context context = this.F0;
        List A0 = A0(context, zzusVar, zzvVar, z, false);
        if (z && A0.isEmpty()) {
            A0 = A0(context, zzusVar, zzvVar, false, false);
        }
        if (A0.isEmpty()) {
            return 129;
        }
        if (zzvVar.L != 0) {
            return 130;
        }
        zzuj zzujVar = (zzuj) A0.get(0);
        boolean b2 = zzujVar.b(zzvVar);
        if (!b2) {
            for (int i6 = 1; i6 < A0.size(); i6++) {
                zzuj zzujVar2 = (zzuj) A0.get(i6);
                if (zzujVar2.b(zzvVar)) {
                    b2 = true;
                    z2 = false;
                    zzujVar = zzujVar2;
                    break;
                }
            }
        }
        z2 = true;
        if (true != b2) {
            i = 3;
        } else {
            i = 4;
        }
        if (true != zzujVar.c(zzvVar)) {
            i2 = 8;
        } else {
            i2 = 16;
        }
        if (true != zzujVar.g) {
            i3 = 0;
        } else {
            i3 = 64;
        }
        if (true != z2) {
            i4 = 0;
        }
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(str) && !zzabt.a(context)) {
            i4 = 256;
        }
        if (b2) {
            List A02 = A0(context, zzusVar, zzvVar, z, true);
            if (!A02.isEmpty()) {
                HashMap hashMap = zzvc.f9311a;
                ArrayList arrayList = new ArrayList(A02);
                Collections.sort(arrayList, new zzuz(new zzva(zzvVar)));
                zzuj zzujVar3 = (zzuj) arrayList.get(0);
                if (zzujVar3.b(zzvVar) && zzujVar3.c(zzvVar)) {
                    i5 = 32;
                }
            }
        }
        return i | i2 | i5 | i3 | i4;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final ArrayList T(zzus zzusVar, zzv zzvVar) {
        List A0 = A0(this.F0, zzusVar, zzvVar, false, false);
        HashMap hashMap = zzvc.f9311a;
        ArrayList arrayList = new ArrayList(A0);
        Collections.sort(arrayList, new zzuz(new zzva(zzvVar)));
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final zzud V(zzuj zzujVar, zzv zzvVar, float f) {
        zzi zziVar;
        zzabv zzabvVar;
        boolean z;
        int i;
        int i2;
        Point point;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int i8;
        char c2;
        boolean z2;
        int i9;
        int t0;
        zzv[] zzvVarArr = this.n;
        zzvVarArr.getClass();
        int length = zzvVarArr.length;
        int y0 = y0(zzujVar, zzvVar);
        float f2 = zzvVar.x;
        zzi zziVar2 = zzvVar.C;
        int i10 = zzvVar.u;
        int i11 = zzvVar.t;
        if (length == 1) {
            if (y0 != -1 && (t0 = t0(zzujVar, zzvVar)) != -1) {
                y0 = Math.min((int) (y0 * 1.5f), t0);
            }
            zzabvVar = new zzabv(i11, i10, y0);
            zziVar = zziVar2;
        } else {
            int i12 = i10;
            int i13 = i11;
            int i14 = 0;
            boolean z3 = false;
            while (i14 < length) {
                zzv zzvVar2 = zzvVarArr[i14];
                if (zziVar2 != null && zzvVar2.C == null) {
                    zzt zztVar = new zzt(zzvVar2);
                    zztVar.B = zziVar2;
                    zzvVar2 = new zzv(zztVar);
                }
                zzil d = zzujVar.d(zzvVar, zzvVar2);
                zzv[] zzvVarArr2 = zzvVarArr;
                int i15 = zzvVar2.u;
                if (d.d != 0) {
                    int i16 = zzvVar2.t;
                    i8 = length;
                    c2 = 65535;
                    if (i16 == -1 || i15 == -1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z3 |= z2;
                    i13 = Math.max(i13, i16);
                    i12 = Math.max(i12, i15);
                    y0 = Math.max(y0, y0(zzujVar, zzvVar2));
                } else {
                    i8 = length;
                    c2 = 65535;
                }
                i14++;
                zzvVarArr = zzvVarArr2;
                length = i8;
            }
            if (z3) {
                zzee.c("MediaCodecVideoRenderer", com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i13).length() + 44 + String.valueOf(i12).length()), "Resolutions unknown. Codec max resolution: ", i13, "x", i12));
                if (i10 > i11) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    i = i10;
                } else {
                    i = i11;
                }
                if (true != z) {
                    i2 = i10;
                } else {
                    i2 = i11;
                }
                zziVar = zziVar2;
                int i17 = 0;
                while (true) {
                    Point point2 = null;
                    if (i17 >= 9) {
                        break;
                    }
                    float f3 = i2;
                    int i18 = i17;
                    float f4 = i;
                    int i19 = r1[i18];
                    float f5 = i19;
                    if (i19 <= i || (i3 = (int) (f5 * (f3 / f4))) <= i2) {
                        break;
                    }
                    if (true != z) {
                        i4 = i3;
                        i3 = i19;
                    } else {
                        i4 = i3;
                    }
                    if (true == z) {
                        i5 = i19;
                    } else {
                        i5 = i4;
                    }
                    boolean z4 = z;
                    MediaCodecInfo.CodecCapabilities codecCapabilities = zzujVar.d;
                    if (codecCapabilities != null && (videoCapabilities = codecCapabilities.getVideoCapabilities()) != null) {
                        point2 = zzuj.j(videoCapabilities, i3, i5);
                    }
                    point = point2;
                    if (point != null) {
                        i6 = i;
                        i7 = i2;
                        if (zzujVar.e(point.x, point.y, f2)) {
                            break;
                        }
                    } else {
                        i6 = i;
                        i7 = i2;
                    }
                    i17 = i18 + 1;
                    z = z4;
                    i = i6;
                    i2 = i7;
                }
                point = null;
                if (point != null) {
                    i13 = Math.max(i13, point.x);
                    i12 = Math.max(i12, point.y);
                    zzt zztVar2 = new zzt(zzvVar);
                    zztVar2.s = i13;
                    zztVar2.t = i12;
                    y0 = Math.max(y0, t0(zzujVar, new zzv(zztVar2)));
                    zzee.c("MediaCodecVideoRenderer", com.mycompany.app.dialog.a.m(new StringBuilder(androidx.work.impl.workers.a.a(i13, 35) + String.valueOf(i12).length()), "Codec max resolution adjusted to: ", i13, "x", i12));
                }
            } else {
                zziVar = zziVar2;
            }
            zzabvVar = new zzabv(i13, i12, y0);
        }
        String str = zzujVar.f9295c;
        this.N0 = zzabvVar;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", i11);
        mediaFormat.setInteger("height", i10);
        zzeh.a(mediaFormat, zzvVar.p);
        if (f2 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f2);
        }
        zzeh.b(mediaFormat, "rotation-degrees", zzvVar.y);
        if (zziVar != null) {
            zzi zziVar3 = zziVar;
            zzeh.b(mediaFormat, "color-transfer", zziVar3.f8903c);
            zzeh.b(mediaFormat, "color-standard", zziVar3.f8902a);
            zzeh.b(mediaFormat, "color-range", zziVar3.b);
            byte[] bArr = zziVar3.d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(zzvVar.m)) {
            HashMap hashMap = zzvc.f9311a;
            Pair b = zzdo.b(zzvVar);
            if (b != null) {
                zzeh.b(mediaFormat, Scopes.PROFILE, ((Integer) b.first).intValue());
            }
        }
        mediaFormat.setInteger("max-width", zzabvVar.f3885a);
        mediaFormat.setInteger("max-height", zzabvVar.b);
        zzeh.b(mediaFormat, "max-input-size", zzabvVar.f3886c);
        mediaFormat.setInteger("priority", 0);
        if (f != -1.0f) {
            mediaFormat.setFloat("operating-rate", f);
        }
        if (this.I0) {
            mediaFormat.setInteger("no-post-process", 1);
            i9 = 0;
            mediaFormat.setInteger("auto-frc", 0);
        } else {
            i9 = 0;
        }
        if (Build.VERSION.SDK_INT >= 35) {
            mediaFormat.setInteger("importance", Math.max(i9, -this.l1));
        }
        Surface E0 = E0(zzujVar);
        if (this.Q0 != null && !zzfj.j(this.F0)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return new zzud(zzujVar, mediaFormat, zzvVar, E0, null);
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final zzil W(zzuj zzujVar, zzv zzvVar, zzv zzvVar2) {
        int i;
        int i2;
        zzil d = zzujVar.d(zzvVar, zzvVar2);
        int i3 = d.e;
        zzabv zzabvVar = this.N0;
        zzabvVar.getClass();
        if (zzvVar2.t > zzabvVar.f3885a || zzvVar2.u > zzabvVar.b) {
            i3 |= 256;
        }
        if (y0(zzujVar, zzvVar2) > zzabvVar.f3886c) {
            i3 |= 64;
        }
        String str = zzujVar.f9294a;
        if (i3 != 0) {
            i2 = 0;
            i = i3;
        } else {
            i = 0;
            i2 = d.d;
        }
        return new zzil(str, zzvVar, zzvVar2, i2, i);
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final float Y(float f, zzv zzvVar, zzv[] zzvVarArr) {
        float f2;
        zzuj zzujVar;
        float f3 = -1.0f;
        for (zzv zzvVar2 : zzvVarArr) {
            float f4 = zzvVar2.x;
            if (f4 != -1.0f) {
                f3 = Math.max(f3, f4);
            }
        }
        if (f3 == -1.0f) {
            f2 = -1.0f;
        } else {
            f2 = f3 * f;
        }
        if (this.e1 != null && (zzujVar = this.W) != null) {
            int i = zzvVar.t;
            int i2 = zzvVar.u;
            float f5 = -3.4028235E38f;
            if (zzujVar.i) {
                float f6 = zzujVar.l;
                if (f6 != -3.4028235E38f && zzujVar.j == i && zzujVar.k == i2) {
                    f5 = f6;
                } else {
                    f5 = 1024.0f;
                    if (!zzujVar.e(i, i2, 1024.0d)) {
                        float f7 = 0.0f;
                        while (true) {
                            float f8 = f5 - f7;
                            if (Math.abs(f8) <= 5.0f) {
                                break;
                            }
                            float f9 = (f8 / 2.0f) + f7;
                            boolean e = zzujVar.e(i, i2, f9);
                            if (true == e) {
                                f7 = f9;
                            }
                            if (true != e) {
                                f5 = f9;
                            }
                        }
                        f5 = f7;
                    }
                    zzujVar.l = f5;
                    zzujVar.j = i;
                    zzujVar.k = i2;
                }
            }
            if (f2 != -1.0f) {
                return Math.max(f2, f5);
            }
            return f5;
        }
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void Z(final long j, final long j2, String str) {
        final String str2;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        final zzadf zzadfVar = this.H0;
        Handler handler = zzadfVar.f3922a;
        if (handler != null) {
            str2 = str;
            handler.post(new Runnable(str2, j, j2) { // from class: com.google.android.gms.internal.ads.zzacv
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzadf zzadfVar2 = zzadf.this;
                    zzadfVar2.getClass();
                    String str3 = zzfj.f7405a;
                    zzadfVar2.b.zzc();
                }
            });
        } else {
            str2 = str;
        }
        this.O0 = z0(str2);
        zzuj zzujVar = this.W;
        zzujVar.getClass();
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 29 && "video/x-vnd.on2.vp9".equals(zzujVar.b)) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = zzujVar.d;
            if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
            }
            int length = codecProfileLevelArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (codecProfileLevelArr[i].profile == 16384) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        this.P0 = z;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void a0(final String str) {
        final zzadf zzadfVar = this.H0;
        Handler handler = zzadfVar.f3922a;
        if (handler != null) {
            handler.post(new Runnable(str) { // from class: com.google.android.gms.internal.ads.zzadb
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzadf zzadfVar2 = zzadf.this;
                    zzadfVar2.getClass();
                    String str2 = zzfj.f7405a;
                    zzadfVar2.b.zzh();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzmi
    public final void b(long j, long j2) {
        zzadl zzadlVar = this.Q0;
        if (zzadlVar != null) {
            try {
                zzadlVar.c(j, j2);
            } catch (zzadk e) {
                throw B(e, e.f3924c, false, 7001);
            }
        }
        super.b(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void b0(final Exception exc) {
        zzee.f("MediaCodecVideoRenderer", "Video codec error", exc);
        final zzadf zzadfVar = this.H0;
        Handler handler = zzadfVar.f3922a;
        if (handler != null) {
            handler.post(new Runnable(exc) { // from class: com.google.android.gms.internal.ads.zzadd
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzadf zzadfVar2 = zzadf.this;
                    zzadfVar2.getClass();
                    String str = zzfj.f7405a;
                    zzadfVar2.b.zzk();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmi, com.google.android.gms.internal.ads.zzmk
    public final String c() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final zzil c0(zzle zzleVar) {
        final zzil c0 = super.c0(zzleVar);
        final zzv zzvVar = zzleVar.b;
        zzvVar.getClass();
        final zzadf zzadfVar = this.H0;
        Handler handler = zzadfVar.f3922a;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzacw
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzadf zzadfVar2 = zzadf.this;
                    zzadfVar2.getClass();
                    String str = zzfj.f7405a;
                    zzadfVar2.b.e(zzvVar, c0);
                }
            });
        }
        return c0;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void d0(zzv zzvVar, MediaFormat mediaFormat) {
        boolean z;
        int integer;
        int integer2;
        zzug zzugVar = this.P;
        if (zzugVar != null) {
            zzugVar.f(this.Y0);
        }
        mediaFormat.getClass();
        if (mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top")) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            integer = (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1;
        } else {
            integer = mediaFormat.getInteger("width");
        }
        if (z) {
            integer2 = (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1;
        } else {
            integer2 = mediaFormat.getInteger("height");
        }
        float f = zzvVar.z;
        int i = zzvVar.y;
        if (i == 90 || i == 270) {
            f = 1.0f / f;
            int i2 = integer2;
            integer2 = integer;
            integer = i2;
        }
        this.j1 = new zzbv(f, integer, integer2);
        zzadl zzadlVar = this.Q0;
        if (zzadlVar != null && this.q1) {
            zzt zztVar = new zzt(zzvVar);
            zztVar.s = integer;
            zztVar.t = integer2;
            zztVar.y = f;
            zzv zzvVar2 = new zzv(zztVar);
            int i3 = this.S0;
            List list = this.T0;
            if (list == null) {
                list = zzguy.i;
            }
            zzadlVar.h(zzvVar2, this.y0.b, i3, list);
            this.S0 = 2;
        } else {
            this.J0.d(zzvVar.x);
        }
        this.q1 = false;
    }

    @Override // com.google.android.gms.internal.ads.zzij, com.google.android.gms.internal.ads.zzmi
    public final void e() {
        zzadl zzadlVar = this.Q0;
        if (zzadlVar != null) {
            int i = this.S0;
            if (i != 0 && i != 1) {
                zzadlVar.zzt();
                return;
            } else {
                this.S0 = 0;
                return;
            }
        }
        zzacm zzacmVar = this.J0;
        if (zzacmVar.d == 0) {
            zzacmVar.d = 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void e0() {
        zzadl zzadlVar = this.Q0;
        if (zzadlVar != null) {
            zzadlVar.zzi();
            long j = this.o1;
            if (j == -9223372036854775807L) {
                j = this.y0.b;
                this.o1 = j;
            }
            this.Q0.g(-j);
        } else {
            this.J0.a(2);
        }
        this.q1 = true;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final boolean f0(long j, long j2, zzug zzugVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzv zzvVar) {
        int i4;
        zzugVar.getClass();
        long j4 = j3 - this.y0.f9301c;
        int i5 = 0;
        while (true) {
            PriorityQueue priorityQueue = this.M0;
            Long l = (Long) priorityQueue.peek();
            if (l == null || l.longValue() >= j3) {
                break;
            }
            priorityQueue.poll();
            i5++;
        }
        v0(i5, 0);
        zzadl zzadlVar = this.Q0;
        if (zzadlVar != null) {
            if (z && !z2) {
                u0(zzugVar, i);
                return true;
            }
            return zzadlVar.e(j3, new zzabs(this, zzugVar, i, j4));
        }
        long j5 = this.y0.b;
        zzacm zzacmVar = this.J0;
        zzack zzackVar = this.K0;
        int f = zzacmVar.f(j3, j, j2, j5, z, z2, zzackVar);
        if (f != 0) {
            if (f != 1) {
                if (f != 2) {
                    if (f != 3) {
                        return false;
                    }
                    u0(zzugVar, i);
                    w0(zzackVar.f3900a);
                    return true;
                }
                Trace.beginSection("dropVideoBuffer");
                zzugVar.zzc(i);
                Trace.endSection();
                v0(0, 1);
                w0(zzackVar.f3900a);
                return true;
            }
            long j6 = zzackVar.b;
            long j7 = zzackVar.f3900a;
            if (j6 == this.i1) {
                u0(zzugVar, i);
            } else {
                zzacj zzacjVar = this.n1;
                if (zzacjVar != null) {
                    i4 = i;
                    zzacjVar.j(j4, j6, zzvVar, this.R);
                } else {
                    i4 = i;
                }
                x0(zzugVar, i4, j6);
            }
            w0(j7);
            this.i1 = j6;
            return true;
        }
        zzdn zzdnVar = this.k;
        zzdnVar.getClass();
        long zzc = zzdnVar.zzc();
        zzacj zzacjVar2 = this.n1;
        if (zzacjVar2 != null) {
            zzacjVar2.j(j4, zzc, zzvVar, this.R);
        }
        x0(zzugVar, i, zzc);
        w0(zzackVar.f3900a);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzij, com.google.android.gms.internal.ads.zzmi
    public final boolean g(long j) {
        long j2 = this.z0;
        if (j2 == -9223372036854775807L || j > j2 - this.y0.f9301c) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void g0() {
        zzadl zzadlVar = this.Q0;
        if (zzadlVar != null) {
            zzadlVar.zzi();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003b, code lost:
    
        if (r0.zzb() >= r7.e0) goto L20;
     */
    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzmi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean h() {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzv r0 = r7.H
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L3f
            boolean r0 = r7.t()
            if (r0 == 0) goto Lf
            boolean r0 = r7.r
            goto L18
        Lf:
            com.google.android.gms.internal.ads.zzxw r0 = r7.m
            r0.getClass()
            boolean r0 = r0.zzb()
        L18:
            if (r0 != 0) goto L3e
            int r0 = r7.g0
            if (r0 < 0) goto L20
            r0 = r1
            goto L21
        L20:
            r0 = r2
        L21:
            if (r0 != 0) goto L3e
            long r3 = r7.e0
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 == 0) goto L3f
            com.google.android.gms.internal.ads.zzdn r0 = r7.k
            r0.getClass()
            long r3 = r0.zzb()
            long r5 = r7.e0
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 < 0) goto L3e
            goto L3f
        L3e:
            r2 = r1
        L3f:
            com.google.android.gms.internal.ads.zzadl r0 = r7.Q0
            if (r0 == 0) goto L48
            boolean r0 = r0.zzh(r2)
            return r0
        L48:
            if (r2 == 0) goto L50
            com.google.android.gms.internal.ads.zzug r0 = r7.P
            if (r0 == 0) goto L4f
            goto L50
        L4f:
            return r1
        L50:
            com.google.android.gms.internal.ads.zzacm r0 = r7.J0
            boolean r0 = r0.e(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabw.h():boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzuq
    public final void h0(zzih zzihVar) {
        if (this.P0) {
            ByteBuffer byteBuffer = zzihVar.g;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4) {
                    if (b3 == 0 || b3 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        zzug zzugVar = this.P;
                        zzugVar.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        zzugVar.a(bundle);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzmi
    public final boolean k() {
        if (this.v0) {
            zzadl zzadlVar = this.Q0;
            if (zzadlVar == null || zzadlVar.zzj()) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzij, com.google.android.gms.internal.ads.zzmd
    public final void l(int i, Object obj) {
        boolean z;
        boolean z2 = true;
        if (i != 1) {
            if (i != 7) {
                if (i != 10) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i != 13) {
                                if (i != 14) {
                                    switch (i) {
                                        case 16:
                                            obj.getClass();
                                            this.l1 = ((Integer) obj).intValue();
                                            zzug zzugVar = this.P;
                                            if (zzugVar != null && Build.VERSION.SDK_INT >= 35) {
                                                Bundle bundle = new Bundle();
                                                bundle.putInt("importance", Math.max(0, -this.l1));
                                                zzugVar.a(bundle);
                                                return;
                                            }
                                            return;
                                        case 17:
                                            Surface surface = this.U0;
                                            B0(null);
                                            obj.getClass();
                                            ((zzabw) obj).l(1, surface);
                                            return;
                                        case 18:
                                            if (this.e1 == null) {
                                                z = false;
                                            } else {
                                                z = true;
                                            }
                                            zzmp zzmpVar = (zzmp) obj;
                                            this.e1 = zzmpVar;
                                            if (zzmpVar == null) {
                                                z2 = false;
                                            }
                                            if (z != z2) {
                                                l0(this.Q);
                                                return;
                                            }
                                            return;
                                        default:
                                            super.l(i, obj);
                                            return;
                                    }
                                }
                                obj.getClass();
                                zzes zzesVar = (zzes) obj;
                                if (zzesVar.f6871a != 0 && zzesVar.b != 0) {
                                    this.W0 = zzesVar;
                                    zzadl zzadlVar = this.Q0;
                                    if (zzadlVar != null) {
                                        Surface surface2 = this.U0;
                                        surface2.getClass();
                                        zzadlVar.d(surface2, zzesVar);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            obj.getClass();
                            List list = (List) obj;
                            if (list.equals(zzbr.f4842a)) {
                                zzadl zzadlVar2 = this.Q0;
                                if (zzadlVar2 != null && zzadlVar2.zze()) {
                                    zzadlVar2.zzf();
                                    return;
                                }
                                return;
                            }
                            this.T0 = list;
                            zzadl zzadlVar3 = this.Q0;
                            if (zzadlVar3 != null) {
                                zzadlVar3.f(list);
                                return;
                            }
                            return;
                        }
                        obj.getClass();
                        int intValue = ((Integer) obj).intValue();
                        this.Z0 = intValue;
                        zzadl zzadlVar4 = this.Q0;
                        if (zzadlVar4 != null) {
                            zzadlVar4.l(intValue);
                            return;
                        }
                        zzact zzactVar = this.J0.b;
                        if (zzactVar.j != intValue) {
                            zzactVar.j = intValue;
                            zzactVar.c(true);
                            return;
                        }
                        return;
                    }
                    obj.getClass();
                    int intValue2 = ((Integer) obj).intValue();
                    this.Y0 = intValue2;
                    zzug zzugVar2 = this.P;
                    if (zzugVar2 != null) {
                        zzugVar2.f(intValue2);
                        return;
                    }
                    return;
                }
                obj.getClass();
                int intValue3 = ((Integer) obj).intValue();
                if (this.m1 != intValue3) {
                    this.m1 = intValue3;
                    return;
                }
                return;
            }
            obj.getClass();
            zzacj zzacjVar = (zzacj) obj;
            this.n1 = zzacjVar;
            zzadl zzadlVar5 = this.Q0;
            if (zzadlVar5 != null) {
                zzadlVar5.j(zzacjVar);
                return;
            }
            return;
        }
        B0(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzij, com.google.android.gms.internal.ads.zzmi
    public final void q(float f, float f2) {
        super.q(f, f2);
        zzadl zzadlVar = this.Q0;
        if (zzadlVar != null) {
            zzadlVar.a(f);
        } else {
            this.J0.g(f);
        }
    }

    public final boolean s0(long j, long j2, boolean z, boolean z2) {
        if (this.Q0 != null && this.G0) {
            j2 -= -this.o1;
        }
        if (j < -500000 && !z) {
            zzxw zzxwVar = this.m;
            zzxwVar.getClass();
            int a2 = zzxwVar.a(j2 - this.o);
            if (a2 != 0) {
                PriorityQueue priorityQueue = this.M0;
                if (z2) {
                    zzik zzikVar = this.x0;
                    int i = zzikVar.d + a2;
                    zzikVar.d = i;
                    zzikVar.f += this.d1;
                    zzikVar.d = priorityQueue.size() + i;
                } else {
                    this.x0.j++;
                    v0(priorityQueue.size() + a2, this.d1);
                }
                if (this.P != null) {
                    if (I()) {
                        H();
                        F();
                    } else if (J()) {
                        j0();
                    } else {
                        this.C0 = true;
                    }
                }
                zzadl zzadlVar = this.Q0;
                if (zzadlVar != null) {
                    zzadlVar.zzg(false);
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzij
    public final void u(long j, boolean z, boolean z2) {
        zzadl zzadlVar = this.Q0;
        if (zzadlVar != null && !z) {
            zzadlVar.zzg(true);
        }
        super.u(j, z, z2);
        zzadl zzadlVar2 = this.Q0;
        zzacm zzacmVar = this.J0;
        if (zzadlVar2 == null) {
            zzacmVar.b.a();
            zzacmVar.g = -9223372036854775807L;
            zzacmVar.e = -9223372036854775807L;
            zzacmVar.d = Math.min(zzacmVar.d, 1);
            zzacmVar.h = -9223372036854775807L;
        }
        if (z) {
            zzadl zzadlVar3 = this.Q0;
            if (zzadlVar3 != null) {
                zzadlVar3.zzw(false);
            } else {
                zzacmVar.i = false;
                zzacmVar.h = -9223372036854775807L;
            }
        }
        this.c1 = 0;
    }

    public final void u0(zzug zzugVar, int i) {
        Trace.beginSection("skipVideoBuffer");
        zzugVar.zzc(i);
        Trace.endSection();
        this.x0.f++;
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void v() {
        this.b1 = 0;
        zzdn zzdnVar = this.k;
        zzdnVar.getClass();
        this.a1 = zzdnVar.zzb();
        this.g1 = 0L;
        this.h1 = 0;
        zzadl zzadlVar = this.Q0;
        if (zzadlVar != null) {
            zzadlVar.zza();
        } else {
            this.J0.b();
        }
    }

    public final void v0(int i, int i2) {
        zzik zzikVar = this.x0;
        zzikVar.h += i;
        int i3 = i + i2;
        zzikVar.g += i3;
        this.b1 += i3;
        int i4 = this.c1 + i3;
        this.c1 = i4;
        zzikVar.i = Math.max(i4, zzikVar.i);
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void w() {
        int i = this.b1;
        final zzadf zzadfVar = this.H0;
        if (i > 0) {
            zzdn zzdnVar = this.k;
            zzdnVar.getClass();
            long zzb = zzdnVar.zzb();
            final long j = zzb - this.a1;
            final int i2 = this.b1;
            Handler handler = zzadfVar.f3922a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzacx
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzadf zzadfVar2 = zzadfVar;
                        zzadfVar2.getClass();
                        String str = zzfj.f7405a;
                        zzadfVar2.b.f(i2, j);
                    }
                });
            }
            this.b1 = 0;
            this.a1 = zzb;
        }
        final int i3 = this.h1;
        if (i3 != 0) {
            final long j2 = this.g1;
            Handler handler2 = zzadfVar.f3922a;
            if (handler2 != null) {
                handler2.post(new Runnable(i3, j2, zzadfVar) { // from class: com.google.android.gms.internal.ads.zzacy

                    /* renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ zzadf f3915c;

                    {
                        this.f3915c = zzadfVar;
                    }

                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzadf zzadfVar2 = this.f3915c;
                        zzadfVar2.getClass();
                        String str = zzfj.f7405a;
                        zzadfVar2.b.zzj();
                    }
                });
            }
            this.g1 = 0L;
            this.h1 = 0;
        }
        zzadl zzadlVar = this.Q0;
        if (zzadlVar != null) {
            zzadlVar.zzb();
            return;
        }
        zzacm zzacmVar = this.J0;
        zzacmVar.f3902c = false;
        zzacmVar.h = -9223372036854775807L;
        zzact zzactVar = zzacmVar.b;
        zzactVar.d = false;
        zzacp zzacpVar = zzactVar.f3909c;
        if (zzacpVar != null) {
            zzacpVar.b();
        }
        zzactVar.d();
    }

    public final void w0(long j) {
        zzik zzikVar = this.x0;
        zzikVar.k += j;
        zzikVar.l++;
        this.g1 += j;
        this.h1++;
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzij
    public final void x() {
        zzadf zzadfVar = this.H0;
        this.k1 = null;
        this.p1 = -9223372036854775807L;
        this.X0 = false;
        this.f1 = true;
        try {
            super.x();
            zzik zzikVar = this.x0;
            zzadfVar.getClass();
            synchronized (zzikVar) {
            }
            Handler handler = zzadfVar.f3922a;
            if (handler != null) {
                handler.post(new zzadc(zzadfVar, zzikVar));
            }
            zzadfVar.a(zzbv.d);
        } catch (Throwable th) {
            zzadfVar.b(this.x0);
            zzadfVar.a(zzbv.d);
            throw th;
        }
    }

    public final void x0(zzug zzugVar, int i, long j) {
        Surface surface;
        Trace.beginSection("releaseOutputBuffer");
        zzugVar.j(i, j);
        Trace.endSection();
        this.x0.e++;
        this.c1 = 0;
        if (this.Q0 == null) {
            zzbv zzbvVar = this.j1;
            boolean equals = zzbvVar.equals(zzbv.d);
            zzadf zzadfVar = this.H0;
            if (!equals && !zzbvVar.equals(this.k1)) {
                this.k1 = zzbvVar;
                zzadfVar.a(zzbvVar);
            }
            zzacm zzacmVar = this.J0;
            int i2 = zzacmVar.d;
            zzacmVar.d = 3;
            zzacmVar.f = zzfj.s(zzacmVar.k.zzb());
            if (i2 != 3 && (surface = this.U0) != null) {
                Handler handler = zzadfVar.f3922a;
                if (handler != null) {
                    handler.post(new zzada(zzadfVar, surface, SystemClock.elapsedRealtime()));
                }
                this.X0 = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuq, com.google.android.gms.internal.ads.zzij
    public final void y() {
        try {
            super.y();
        } finally {
            this.R0 = false;
            this.o1 = -9223372036854775807L;
            zzaby zzabyVar = this.V0;
            if (zzabyVar != null) {
                zzabyVar.release();
                this.V0 = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzij
    public final void z() {
        zzadl zzadlVar = this.Q0;
        if (zzadlVar != null && this.G0) {
            zzadlVar.zzx();
        }
    }
}
