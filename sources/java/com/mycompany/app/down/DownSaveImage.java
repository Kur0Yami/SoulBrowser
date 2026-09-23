package com.mycompany.app.down;

import android.content.Context;
import com.mycompany.app.main.MainDownSvc;
import java.util.List;

/* loaded from: classes3.dex */
public class DownSaveImage {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.down.DownSaveImage$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainDownSvc.DownImageListener f15590c;
        public final /* synthetic */ Context f;
        public final /* synthetic */ List g;
        public final /* synthetic */ String h;
        public final /* synthetic */ int i;
        public final /* synthetic */ boolean j;
        public final /* synthetic */ long k;
        public final /* synthetic */ int l;
        public final /* synthetic */ int m;
        public final /* synthetic */ MainDownSvc.ImageItem n;

        public AnonymousClass2(int i, int i2, int i3, long j, Context context, MainDownSvc.DownImageListener downImageListener, MainDownSvc.ImageItem imageItem, String str, List list, boolean z) {
            this.f15590c = downImageListener;
            this.f = context;
            this.g = list;
            this.h = str;
            this.i = i;
            this.j = z;
            this.k = j;
            this.l = i2;
            this.m = i3;
            this.n = imageItem;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainDownSvc.DownImageListener downImageListener = this.f15590c;
            if (!downImageListener.isRunning()) {
                return;
            }
            try {
                DownSaveImage.a(this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, downImageListener);
            } catch (OutOfMemoryError unused) {
                this.n.g = 4;
                downImageListener.b(this.g, this.j);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x01a1, code lost:
    
        if (com.mycompany.app.main.MainUri.s(r20, r3.e, r4.e, true, true) != false) goto L107;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:76:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x011a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r20, java.util.List r21, java.lang.String r22, int r23, boolean r24, long r25, int r27, int r28, com.mycompany.app.main.MainDownSvc.DownImageListener r29) {
        /*
            Method dump skipped, instructions count: 592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownSaveImage.a(android.content.Context, java.util.List, java.lang.String, int, boolean, long, int, int, com.mycompany.app.main.MainDownSvc$DownImageListener):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(final android.content.Context r16, final java.util.List r17, final java.lang.String r18, final int r19, final boolean r20, final long r21, final int r23, int r24, final com.mycompany.app.main.MainDownSvc.ImageItem r25, java.lang.String r26, boolean r27, final com.mycompany.app.main.MainDownSvc.DownImageListener r28) {
        /*
            r10 = r17
            r11 = r20
            r2 = r23
            r0 = r24
            r8 = r25
            r7 = r28
            r3 = 0
            r12 = 4
            if (r2 <= 0) goto L1f
            r1 = 360(0x168, float:5.04E-43)
            if (r2 >= r1) goto L19
            r5 = 10000(0x2710, double:4.9407E-320)
        L17:
            r13 = r5
            goto L44
        L19:
            r8.g = r12
            r7.b(r10, r11)
            return
        L1f:
            boolean r1 = android.text.TextUtils.isEmpty(r26)
            if (r1 != 0) goto L2a
            r1 = r26
            r8.f16527a = r1
            goto L39
        L2a:
            if (r27 != 0) goto L3b
            java.lang.String r1 = r8.b
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L3b
            boolean r1 = com.mycompany.app.main.MainConst.f16452a
            r1 = 0
            r8.b = r1
        L39:
            r13 = r3
            goto L44
        L3b:
            int r1 = com.mycompany.app.pref.PrefZone.k0
            if (r0 >= r1) goto L88
            int r0 = r0 + 1
            r5 = 2000(0x7d0, double:9.88E-321)
            goto L17
        L44:
            int r1 = (r13 > r3 ? 1 : (r13 == r3 ? 0 : -1))
            if (r1 != 0) goto L62
            r3 = r0
            com.mycompany.app.down.DownSaveImage$2 r0 = new com.mycompany.app.down.DownSaveImage$2     // Catch: java.lang.OutOfMemoryError -> L5c
            r6 = r16
            r9 = r18
            r1 = r19
            r4 = r21
            r0.<init>(r1, r2, r3, r4, r6, r7, r8, r9, r10, r11)     // Catch: java.lang.OutOfMemoryError -> L5c
            r6 = r16
            com.mycompany.app.main.MainApp.J(r6, r0)     // Catch: java.lang.OutOfMemoryError -> L5c
            return
        L5c:
            r8.g = r12
            r7.b(r10, r11)
            return
        L62:
            r6 = r16
            r3 = r0
            android.os.Handler r15 = r7.a()
            if (r15 != 0) goto L71
            r8.g = r12
            r7.b(r10, r11)
            return
        L71:
            com.mycompany.app.down.DownSaveImage$1 r0 = new com.mycompany.app.down.DownSaveImage$1     // Catch: java.lang.OutOfMemoryError -> L82
            r9 = r18
            r1 = r19
            r4 = r21
            r2 = r23
            r0.<init>()     // Catch: java.lang.OutOfMemoryError -> L82
            r15.postDelayed(r0, r13)     // Catch: java.lang.OutOfMemoryError -> L82
            return
        L82:
            r8.g = r12
            r7.b(r10, r11)
            return
        L88:
            r8.g = r12
            r7.b(r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownSaveImage.b(android.content.Context, java.util.List, java.lang.String, int, boolean, long, int, int, com.mycompany.app.main.MainDownSvc$ImageItem, java.lang.String, boolean, com.mycompany.app.main.MainDownSvc$DownImageListener):void");
    }
}
