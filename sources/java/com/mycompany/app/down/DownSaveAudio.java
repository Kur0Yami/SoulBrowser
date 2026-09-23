package com.mycompany.app.down;

import android.content.Context;
import com.mycompany.app.main.MainDownSvc;

/* loaded from: classes3.dex */
public class DownSaveAudio {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.down.DownSaveAudio$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainDownSvc.DownItem f15588c;
        public final /* synthetic */ Context f;
        public final /* synthetic */ String g;
        public final /* synthetic */ int h;
        public final /* synthetic */ int i;
        public final /* synthetic */ MainDownSvc.DownSaveListener j;

        public AnonymousClass2(int i, int i2, Context context, MainDownSvc.DownItem downItem, MainDownSvc.DownSaveListener downSaveListener, String str) {
            this.f15588c = downItem;
            this.f = context;
            this.g = str;
            this.h = i;
            this.i = i2;
            this.j = downSaveListener;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainDownSvc.DownItem downItem = this.f15588c;
            if (downItem.f16518c != 1) {
                return;
            }
            try {
                DownSaveAudio.a(this.f, downItem, this.g, this.h, this.i, true, this.j);
            } catch (OutOfMemoryError unused) {
                MainDownSvc.DownItem downItem2 = this.f15588c;
                downItem2.N = true;
                this.j.b(downItem2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:205:0x015a, code lost:
    
        if (r5.equals(r0) == false) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:79:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02b7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r24, com.mycompany.app.main.MainDownSvc.DownItem r25, java.lang.String r26, int r27, int r28, boolean r29, com.mycompany.app.main.MainDownSvc.DownSaveListener r30) {
        /*
            Method dump skipped, instructions count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownSaveAudio.a(android.content.Context, com.mycompany.app.main.MainDownSvc$DownItem, java.lang.String, int, int, boolean, com.mycompany.app.main.MainDownSvc$DownSaveListener):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(final android.content.Context r9, final com.mycompany.app.main.MainDownSvc.DownItem r10, java.lang.String r11, final int r12, int r13, java.lang.String r14, boolean r15, final com.mycompany.app.main.MainDownSvc.DownSaveListener r16) {
        /*
            r5 = r16
            if (r10 == 0) goto L71
            r0 = 0
            if (r12 <= 0) goto L16
            r2 = 360(0x168, float:5.04E-43)
            if (r12 >= r2) goto L12
            r2 = 10000(0x2710, double:4.9407E-320)
        Le:
            r6 = r11
            r7 = r2
            r2 = r13
            goto L3b
        L12:
            r5.c(r10)
            return
        L16:
            boolean r2 = android.text.TextUtils.isEmpty(r14)
            if (r2 != 0) goto L20
            r2 = r13
            r6 = r14
        L1e:
            r7 = r0
            goto L3b
        L20:
            if (r15 != 0) goto L32
            java.lang.String r2 = r10.g
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L32
            boolean r2 = com.mycompany.app.main.MainConst.f16452a
            r2 = 0
            r10.g = r2
            r6 = r11
            r2 = r13
            goto L1e
        L32:
            int r2 = com.mycompany.app.pref.PrefZone.k0
            if (r13 >= r2) goto L6e
            int r13 = r13 + 1
            r2 = 2000(0x7d0, double:9.88E-321)
            goto Le
        L3b:
            int r11 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            r13 = 1
            if (r11 != 0) goto L52
            com.mycompany.app.down.DownSaveAudio$2 r0 = new com.mycompany.app.down.DownSaveAudio$2     // Catch: java.lang.OutOfMemoryError -> L4c
            r3 = r9
            r4 = r10
            r1 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.OutOfMemoryError -> L4c
            com.mycompany.app.main.MainApp.J(r9, r0)     // Catch: java.lang.OutOfMemoryError -> L4c
            return
        L4c:
            r10.N = r13
            r5.b(r10)
            return
        L52:
            android.os.Handler r11 = r5.a()
            if (r11 != 0) goto L5c
            r5.b(r10)
            return
        L5c:
            com.mycompany.app.down.DownSaveAudio$1 r0 = new com.mycompany.app.down.DownSaveAudio$1     // Catch: java.lang.OutOfMemoryError -> L68
            r3 = r9
            r4 = r10
            r1 = r12
            r0.<init>()     // Catch: java.lang.OutOfMemoryError -> L68
            r11.postDelayed(r0, r7)     // Catch: java.lang.OutOfMemoryError -> L68
            return
        L68:
            r10.N = r13
            r5.b(r10)
            return
        L6e:
            r5.b(r10)
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownSaveAudio.b(android.content.Context, com.mycompany.app.main.MainDownSvc$DownItem, java.lang.String, int, int, java.lang.String, boolean, com.mycompany.app.main.MainDownSvc$DownSaveListener):void");
    }
}
