package com.mycompany.app.down;

import android.content.Context;
import com.mycompany.app.main.MainDownSvc;

/* loaded from: classes3.dex */
public class DownSavePath {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.down.DownSavePath$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainDownSvc.DownItem f15592c;
        public final /* synthetic */ Context f;
        public final /* synthetic */ String g;
        public final /* synthetic */ int h;
        public final /* synthetic */ int i;
        public final /* synthetic */ int j;
        public final /* synthetic */ int k;
        public final /* synthetic */ MainDownSvc.DownSaveListener l;

        public AnonymousClass2(int i, int i2, int i3, int i4, Context context, MainDownSvc.DownItem downItem, MainDownSvc.DownSaveListener downSaveListener, String str) {
            this.f15592c = downItem;
            this.f = context;
            this.g = str;
            this.h = i;
            this.i = i2;
            this.j = i3;
            this.k = i4;
            this.l = downSaveListener;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainDownSvc.DownItem downItem = this.f15592c;
            if (downItem.f16518c != 1) {
                return;
            }
            try {
                DownSavePath.a(this.f, downItem, this.g, this.h, this.i, this.j, this.k, true, this.l);
            } catch (OutOfMemoryError unused) {
                MainDownSvc.DownItem downItem2 = this.f15592c;
                downItem2.N = true;
                this.l.b(downItem2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:196:0x0169, code lost:
    
        if (r7.equals(r28) == false) goto L93;
     */
    /* JADX WARN: Removed duplicated region for block: B:129:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:86:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x028f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x028a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r26, com.mycompany.app.main.MainDownSvc.DownItem r27, java.lang.String r28, int r29, int r30, int r31, int r32, boolean r33, com.mycompany.app.main.MainDownSvc.DownSaveListener r34) {
        /*
            Method dump skipped, instructions count: 723
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownSavePath.a(android.content.Context, com.mycompany.app.main.MainDownSvc$DownItem, java.lang.String, int, int, int, int, boolean, com.mycompany.app.main.MainDownSvc$DownSaveListener):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0044 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(final android.content.Context r12, final com.mycompany.app.main.MainDownSvc.DownItem r13, java.lang.String r14, final int r15, final int r16, final int r17, int r18, java.lang.String r19, boolean r20, final com.mycompany.app.main.MainDownSvc.DownSaveListener r21) {
        /*
            r3 = r17
            r0 = r18
            r7 = r21
            if (r13 == 0) goto L7b
            r1 = 0
            if (r3 <= 0) goto L1a
            r4 = 360(0x168, float:5.04E-43)
            if (r3 >= r4) goto L16
            r4 = 10000(0x2710, double:4.9407E-320)
        L12:
            r8 = r14
            r9 = r4
            r4 = r0
            goto L3f
        L16:
            r7.c(r13)
            return
        L1a:
            boolean r4 = android.text.TextUtils.isEmpty(r19)
            if (r4 != 0) goto L25
            r8 = r19
        L22:
            r4 = r0
            r9 = r1
            goto L3f
        L25:
            if (r20 != 0) goto L36
            java.lang.String r4 = r13.g
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L36
            boolean r4 = com.mycompany.app.main.MainConst.f16452a
            r4 = 0
            r13.g = r4
            r8 = r14
            goto L22
        L36:
            int r4 = com.mycompany.app.pref.PrefZone.k0
            if (r0 >= r4) goto L78
            int r0 = r0 + 1
            r4 = 2000(0x7d0, double:9.88E-321)
            goto L12
        L3f:
            int r14 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            r11 = 1
            if (r14 != 0) goto L58
            com.mycompany.app.down.DownSavePath$2 r0 = new com.mycompany.app.down.DownSavePath$2     // Catch: java.lang.OutOfMemoryError -> L52
            r5 = r12
            r6 = r13
            r1 = r15
            r2 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.OutOfMemoryError -> L52
            com.mycompany.app.main.MainApp.J(r12, r0)     // Catch: java.lang.OutOfMemoryError -> L52
            return
        L52:
            r13.N = r11
            r7.b(r13)
            return
        L58:
            android.os.Handler r14 = r7.a()
            if (r14 != 0) goto L62
            r7.b(r13)
            return
        L62:
            com.mycompany.app.down.DownSavePath$1 r0 = new com.mycompany.app.down.DownSavePath$1     // Catch: java.lang.OutOfMemoryError -> L72
            r5 = r12
            r6 = r13
            r1 = r15
            r2 = r16
            r3 = r17
            r0.<init>()     // Catch: java.lang.OutOfMemoryError -> L72
            r14.postDelayed(r0, r9)     // Catch: java.lang.OutOfMemoryError -> L72
            return
        L72:
            r13.N = r11
            r7.b(r13)
            return
        L78:
            r7.b(r13)
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownSavePath.b(android.content.Context, com.mycompany.app.main.MainDownSvc$DownItem, java.lang.String, int, int, int, int, java.lang.String, boolean, com.mycompany.app.main.MainDownSvc$DownSaveListener):void");
    }
}
