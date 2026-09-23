package com.mycompany.app.down;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.main.MainDownSvc;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public class DownSaveSplit {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.down.DownSaveSplit$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainDownSvc.DownItem f15594c;
        public final /* synthetic */ Context f;
        public final /* synthetic */ String g;
        public final /* synthetic */ int h;
        public final /* synthetic */ int i;
        public final /* synthetic */ boolean j;
        public final /* synthetic */ boolean k;
        public final /* synthetic */ int l;
        public final /* synthetic */ int m;
        public final /* synthetic */ MainDownSvc.DownSaveListener n;

        public AnonymousClass2(int i, int i2, int i3, int i4, Context context, MainDownSvc.DownItem downItem, MainDownSvc.DownSaveListener downSaveListener, String str, boolean z, boolean z2) {
            this.f15594c = downItem;
            this.f = context;
            this.g = str;
            this.h = i;
            this.i = i2;
            this.j = z;
            this.k = z2;
            this.l = i3;
            this.m = i4;
            this.n = downSaveListener;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainDownSvc.DownSaveListener downSaveListener = this.n;
            MainDownSvc.DownItem downItem = this.f15594c;
            MainDownSvc.DownItem downItem2 = this.f15594c;
            if (downItem2.f16518c == 1) {
                try {
                    DownSaveSplit.a(this.f, downItem2, this.g, this.h, this.i, this.j, this.k, this.l, this.m, true, this.n);
                    if (downItem.f16518c == 1) {
                        downSaveListener.e(downItem);
                    }
                } catch (OutOfMemoryError unused) {
                    downItem.N = true;
                    downSaveListener.b(downItem);
                }
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:127|128|(4:130|131|132|(5:133|134|135|(5:139|140|(8:142|143|144|(1:148)|(3:150|151|152)(2:196|197)|153|(2:159|(2:161|162)(1:163))(1:157)|158)(1:202)|136|137)|203))|(14:186|187|188|189|190|171|172|(3:(1:175)(1:179)|176|177)(1:180)|110|(2:121|122)|(2:117|118)|113|(1:115)|116)|170|171|172|(0)(0)|110|(0)|(0)|113|(0)|116) */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0316, code lost:
    
        r18 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0318, code lost:
    
        r23 = r7;
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0363 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x035e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x02f9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0124 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r26, com.mycompany.app.main.MainDownSvc.DownItem r27, java.lang.String r28, int r29, int r30, boolean r31, boolean r32, int r33, int r34, boolean r35, com.mycompany.app.main.MainDownSvc.DownSaveListener r36) {
        /*
            Method dump skipped, instructions count: 940
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownSaveSplit.a(android.content.Context, com.mycompany.app.main.MainDownSvc$DownItem, java.lang.String, int, int, boolean, boolean, int, int, boolean, com.mycompany.app.main.MainDownSvc$DownSaveListener):void");
    }

    public static Cipher b(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return null;
        }
        if (bArr2 == null) {
            bArr2 = new byte[16];
        }
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, new SecretKeySpec(bArr, "AES"), new IvParameterSpec(bArr2));
            return cipher;
        } catch (Exception unused) {
            return null;
        }
    }

    public static MainDownSvc.EncItem c(int i, List list) {
        MainDownSvc.EncItem encItem;
        int i2;
        if (list == null || i < 0 || i >= list.size() || (encItem = (MainDownSvc.EncItem) list.get(i)) == null) {
            return null;
        }
        if (!TextUtils.isEmpty(encItem.b) || i == (i2 = encItem.f16519a)) {
            return encItem;
        }
        if (i2 >= 0 && i2 < list.size()) {
            return (MainDownSvc.EncItem) list.get(i2);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x003f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] d(android.content.Context r6, java.lang.String r7, java.lang.String r8) {
        /*
            r1 = -1
            r5 = 0
            r0 = -1
            r2 = r6
            r3 = r7
            r4 = r8
            java.net.HttpURLConnection r6 = com.mycompany.app.main.MainUtil.S3(r0, r1, r2, r3, r4, r5)
            r7 = 0
            if (r6 != 0) goto Le
            return r7
        Le:
            r8 = 1
            r0 = 0
            r6.setDoInput(r8)     // Catch: java.lang.Exception -> L35
            r6.connect()     // Catch: java.lang.Exception -> L35
            java.io.InputStream r8 = r6.getInputStream()     // Catch: java.lang.Exception -> L35
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Exception -> L33
            r1.<init>()     // Catch: java.lang.Exception -> L33
            r2 = 1024(0x400, float:1.435E-42)
            byte[] r3 = new byte[r2]     // Catch: java.lang.Exception -> L37
        L23:
            int r4 = r8.read(r3, r0, r2)     // Catch: java.io.EOFException -> L2e java.lang.Exception -> L37
            r5 = -1
            if (r4 == r5) goto L2e
            r1.write(r3, r0, r4)     // Catch: java.io.EOFException -> L2e java.lang.Exception -> L37
            goto L23
        L2e:
            byte[] r2 = r1.toByteArray()     // Catch: java.lang.Exception -> L37
            goto L38
        L33:
            r1 = r7
            goto L37
        L35:
            r8 = r7
            r1 = r8
        L37:
            r2 = r7
        L38:
            if (r1 == 0) goto L3d
            r1.close()     // Catch: java.lang.Exception -> L3d
        L3d:
            if (r8 == 0) goto L42
            r8.close()     // Catch: java.lang.Exception -> L42
        L42:
            r6.disconnect()
            if (r2 != 0) goto L48
            goto L5a
        L48:
            int r6 = r2.length
            if (r6 != 0) goto L4c
            goto L5a
        L4c:
            int r7 = r6 % 16
            if (r7 != 0) goto L52
            r7 = r2
            goto L5a
        L52:
            int r7 = 16 - r7
            int r7 = r7 + r6
            byte[] r7 = new byte[r7]
            java.lang.System.arraycopy(r2, r0, r7, r0, r6)
        L5a:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownSaveSplit.d(android.content.Context, java.lang.String, java.lang.String):byte[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x002f, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) != false) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0061 A[Catch: Exception -> 0x006f, TryCatch #0 {Exception -> 0x006f, blocks: (B:15:0x0032, B:20:0x005d, B:23:0x0061, B:26:0x0067), top: B:14:0x0032 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] e(int r6, java.util.ArrayList r7) {
        /*
            com.mycompany.app.main.MainDownSvc$EncItem r6 = c(r6, r7)
            r7 = 0
            if (r6 != 0) goto L8
            return r7
        L8:
            byte[] r0 = r6.f16520c
            if (r0 == 0) goto Ld
            return r0
        Ld:
            java.lang.String r0 = r6.b
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L16
            goto L6f
        L16:
            java.lang.String r1 = "0x"
            boolean r1 = r0.startsWith(r1)
            r2 = 2
            if (r1 != 0) goto L27
            java.lang.String r1 = "0X"
            boolean r1 = r0.startsWith(r1)
            if (r1 == 0) goto L32
        L27:
            java.lang.String r0 = r0.substring(r2)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L32
            goto L6f
        L32:
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L6f
            r3 = 16
            r4 = 0
            if (r1 == 0) goto L3d
        L3b:
            r0 = r7
            goto L5a
        L3d:
            java.math.BigInteger r1 = new java.math.BigInteger     // Catch: java.lang.Exception -> L3b
            r1.<init>(r0, r3)     // Catch: java.lang.Exception -> L3b
            byte[] r0 = r1.toByteArray()     // Catch: java.lang.Exception -> L3b
            if (r0 != 0) goto L49
            goto L5a
        L49:
            int r1 = r0.length     // Catch: java.lang.Exception -> L3b
            if (r1 >= r2) goto L4d
            goto L5a
        L4d:
            r2 = r0[r4]     // Catch: java.lang.Exception -> L3b
            if (r2 == 0) goto L52
            goto L5a
        L52:
            r2 = 1
            int r1 = r1 - r2
            byte[] r5 = new byte[r1]     // Catch: java.lang.Exception -> L3b
            java.lang.System.arraycopy(r0, r2, r5, r4, r1)     // Catch: java.lang.Exception -> L3b
            r0 = r5
        L5a:
            if (r0 != 0) goto L5d
            goto L6f
        L5d:
            int r1 = r0.length     // Catch: java.lang.Exception -> L6f
            if (r1 != 0) goto L61
            goto L6f
        L61:
            int r2 = r1 % 16
            if (r2 != 0) goto L67
            r7 = r0
            goto L6f
        L67:
            int r3 = r3 - r2
            int r3 = r3 + r1
            byte[] r2 = new byte[r3]     // Catch: java.lang.Exception -> L6f
            java.lang.System.arraycopy(r0, r4, r2, r4, r1)     // Catch: java.lang.Exception -> L6f
            r7 = r2
        L6f:
            if (r7 == 0) goto L73
            r6.f16520c = r7
        L73:
            byte[] r6 = r6.f16520c
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownSaveSplit.e(int, java.util.ArrayList):byte[]");
    }

    public static long f(MainDownSvc.DownItem downItem) {
        long j;
        long j2;
        int i = downItem.y;
        int i2 = 1;
        if (i < 1 || i > (i2 = downItem.w)) {
            i = i2;
        }
        long j3 = (((float) downItem.C) / i) * downItem.w;
        int i3 = downItem.x;
        if (i3 > 0) {
            int i4 = downItem.z;
            if (i4 > 0) {
                if (i4 > i3) {
                    i4 = i3;
                }
                j2 = ((float) downItem.D) / i4;
            } else {
                j2 = downItem.E;
            }
            j = j2 * i3;
        } else {
            j = 0;
        }
        if (downItem.o == 0) {
            return j3 + j;
        }
        return ((float) ((r7 + j3) + j)) / 2.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0046 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void g(final android.content.Context r15, final com.mycompany.app.main.MainDownSvc.DownItem r16, java.lang.String r17, final int r18, final int r19, final boolean r20, final boolean r21, final int r22, int r23, java.lang.String r24, boolean r25, final com.mycompany.app.main.MainDownSvc.DownSaveListener r26) {
        /*
            r6 = r16
            r3 = r22
            r0 = r23
            r7 = r26
            r1 = 0
            if (r3 <= 0) goto L1b
            r4 = 360(0x168, float:5.04E-43)
            if (r3 >= r4) goto L17
            r4 = 10000(0x2710, double:4.9407E-320)
        L12:
            r8 = r17
            r11 = r4
            r4 = r0
            goto L41
        L17:
            r7.c(r6)
            return
        L1b:
            boolean r4 = android.text.TextUtils.isEmpty(r24)
            if (r4 != 0) goto L26
            r8 = r24
        L23:
            r4 = r0
            r11 = r1
            goto L41
        L26:
            if (r25 != 0) goto L38
            java.lang.String r4 = r6.g
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L38
            boolean r4 = com.mycompany.app.main.MainConst.f16452a
            r4 = 0
            r6.g = r4
            r8 = r17
            goto L23
        L38:
            int r4 = com.mycompany.app.pref.PrefZone.k0
            if (r0 >= r4) goto L82
            int r0 = r0 + 1
            r4 = 2000(0x7d0, double:9.88E-321)
            goto L12
        L41:
            int r0 = (r11 > r1 ? 1 : (r11 == r1 ? 0 : -1))
            r13 = 1
            if (r0 != 0) goto L5e
            com.mycompany.app.down.DownSaveSplit$2 r0 = new com.mycompany.app.down.DownSaveSplit$2     // Catch: java.lang.OutOfMemoryError -> L58
            r5 = r15
            r1 = r18
            r2 = r19
            r9 = r20
            r10 = r21
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.OutOfMemoryError -> L58
            com.mycompany.app.main.MainApp.J(r15, r0)     // Catch: java.lang.OutOfMemoryError -> L58
            return
        L58:
            r6.N = r13
            r7.b(r6)
            return
        L5e:
            android.os.Handler r14 = r7.a()
            if (r14 != 0) goto L68
            r7.b(r6)
            return
        L68:
            com.mycompany.app.down.DownSaveSplit$1 r0 = new com.mycompany.app.down.DownSaveSplit$1     // Catch: java.lang.OutOfMemoryError -> L7c
            r5 = r15
            r1 = r18
            r2 = r19
            r9 = r20
            r10 = r21
            r3 = r22
            r0.<init>()     // Catch: java.lang.OutOfMemoryError -> L7c
            r14.postDelayed(r0, r11)     // Catch: java.lang.OutOfMemoryError -> L7c
            return
        L7c:
            r6.N = r13
            r7.b(r6)
            return
        L82:
            r7.b(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownSaveSplit.g(android.content.Context, com.mycompany.app.main.MainDownSvc$DownItem, java.lang.String, int, int, boolean, boolean, int, int, java.lang.String, boolean, com.mycompany.app.main.MainDownSvc$DownSaveListener):void");
    }
}
