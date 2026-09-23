package com.mycompany.app.down;

import android.content.Context;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainItem;
import java.util.List;

/* loaded from: classes3.dex */
public class DownSaveZip {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.down.DownSaveZip$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainDownSvc.DownZipListener f15596c;
        public final /* synthetic */ Context f;
        public final /* synthetic */ List g;
        public final /* synthetic */ int h;
        public final /* synthetic */ int i;
        public final /* synthetic */ int j;
        public final /* synthetic */ MainItem.ChildItem k;

        public AnonymousClass2(int i, int i2, int i3, Context context, MainDownSvc.DownZipListener downZipListener, MainItem.ChildItem childItem, List list) {
            this.f15596c = downZipListener;
            this.f = context;
            this.g = list;
            this.h = i;
            this.i = i2;
            this.j = i3;
            this.k = childItem;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MainDownSvc.DownZipListener downZipListener = this.f15596c;
            if (!downZipListener.isRunning()) {
                return;
            }
            try {
                DownSaveZip.a(this.f, this.g, this.h, this.i, this.j, downZipListener);
            } catch (OutOfMemoryError unused) {
                this.k.d = 4;
                downZipListener.b(this.g);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0127 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0122 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r19, java.util.List r20, int r21, int r22, int r23, com.mycompany.app.main.MainDownSvc.DownZipListener r24) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownSaveZip.a(android.content.Context, java.util.List, int, int, int, com.mycompany.app.main.MainDownSvc$DownZipListener):void");
    }

    public static void b(Context context, List list, int i, int i2, int i3, MainDownSvc.DownZipListener downZipListener) {
        if (list != null) {
            int size = list.size();
            int i4 = 0;
            while (i4 < i && downZipListener.isRunning()) {
                int i5 = (i3 * i4) + i2;
                if (i5 < size) {
                    Context context2 = context;
                    List list2 = list;
                    MainDownSvc.DownZipListener downZipListener2 = downZipListener;
                    try {
                        a(context2, list2, i5, 0, 0, downZipListener2);
                    } catch (OutOfMemoryError unused) {
                        MainItem.ChildItem childItem = (MainItem.ChildItem) list2.get(i5);
                        if (childItem != null) {
                            childItem.d = 4;
                            downZipListener2.b(list2);
                        } else {
                            return;
                        }
                    }
                    i4++;
                    context = context2;
                    list = list2;
                    downZipListener = downZipListener2;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0044 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void c(final android.content.Context r12, final java.util.List r13, final int r14, final int r15, int r16, final com.mycompany.app.main.MainItem.ChildItem r17, java.lang.String r18, boolean r19, final com.mycompany.app.main.MainDownSvc.DownZipListener r20) {
        /*
            r0 = r16
            r6 = r17
            r5 = r20
            r1 = 0
            r8 = 4
            if (r15 <= 0) goto L1a
            r3 = 360(0x168, float:5.04E-43)
            if (r15 >= r3) goto L14
            r3 = 10000(0x2710, double:4.9407E-320)
        L11:
            r9 = r3
            r3 = r0
            goto L40
        L14:
            r6.d = r8
            r5.b(r13)
            return
        L1a:
            boolean r3 = android.text.TextUtils.isEmpty(r18)
            if (r3 != 0) goto L25
            r3 = r18
            r6.q = r3
            goto L34
        L25:
            if (r19 != 0) goto L37
            java.lang.String r3 = r6.r
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L37
            boolean r3 = com.mycompany.app.main.MainConst.f16452a
            r3 = 0
            r6.r = r3
        L34:
            r3 = r0
            r9 = r1
            goto L40
        L37:
            int r3 = com.mycompany.app.pref.PrefZone.k0
            if (r0 >= r3) goto L76
            int r0 = r0 + 1
            r3 = 2000(0x7d0, double:9.88E-321)
            goto L11
        L40:
            int r0 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r0 != 0) goto L57
            com.mycompany.app.down.DownSaveZip$2 r0 = new com.mycompany.app.down.DownSaveZip$2     // Catch: java.lang.OutOfMemoryError -> L51
            r4 = r12
            r7 = r13
            r1 = r14
            r2 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.OutOfMemoryError -> L51
            com.mycompany.app.main.MainApp.J(r12, r0)     // Catch: java.lang.OutOfMemoryError -> L51
            return
        L51:
            r6.d = r8
            r5.b(r13)
            return
        L57:
            android.os.Handler r11 = r5.a()
            if (r11 != 0) goto L63
            r6.d = r8
            r5.b(r13)
            return
        L63:
            com.mycompany.app.down.DownSaveZip$1 r0 = new com.mycompany.app.down.DownSaveZip$1     // Catch: java.lang.OutOfMemoryError -> L70
            r4 = r12
            r7 = r13
            r1 = r14
            r2 = r15
            r0.<init>()     // Catch: java.lang.OutOfMemoryError -> L70
            r11.postDelayed(r0, r9)     // Catch: java.lang.OutOfMemoryError -> L70
            return
        L70:
            r6.d = r8
            r5.b(r13)
            return
        L76:
            r6.d = r8
            r5.b(r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownSaveZip.c(android.content.Context, java.util.List, int, int, int, com.mycompany.app.main.MainItem$ChildItem, java.lang.String, boolean, com.mycompany.app.main.MainDownSvc$DownZipListener):void");
    }
}
