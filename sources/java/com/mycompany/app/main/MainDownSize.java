package com.mycompany.app.main;

import android.content.Context;
import android.text.TextUtils;
import com.mycompany.app.dialog.DialogDownSize;
import com.mycompany.app.down.DownParseDzen;
import com.mycompany.app.down.DownParseKakao;
import com.mycompany.app.down.DownParseM3u8;
import com.mycompany.app.down.DownParseReddit;
import com.mycompany.app.down.DownParseTsfile;
import com.mycompany.app.down.DownParseVimeo;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainUtil;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class MainDownSize {

    /* renamed from: a, reason: collision with root package name */
    public Context f16461a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public HttpURLConnection f16462c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainDownSize$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements DialogDownSize.DownSizeListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ DialogDownSize.DownSizeListener f16463a;

        public AnonymousClass1(DialogDownSize.DownSizeListener downSizeListener) {
            this.f16463a = downSizeListener;
        }

        @Override // com.mycompany.app.dialog.DialogDownSize.DownSizeListener
        public final void a(long j) {
            DialogDownSize.DownSizeListener downSizeListener = this.f16463a;
            if (downSizeListener != null) {
                downSizeListener.a(j);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.mycompany.app.main.MainDownSvc$DownItem, java.lang.Object] */
    public final void a(Context context, String str, String str2, DialogDownSize.DownSizeListener downSizeListener) {
        ArrayList arrayList;
        MainDownSvc.M3u8Item b;
        long j = 0;
        if (TextUtils.isEmpty(str)) {
            downSizeListener.a(0L);
            return;
        }
        this.f16461a = context;
        this.b = true;
        final ?? obj = new Object();
        obj.f = str;
        obj.g = str2;
        int s = MainDownSvc.s(str);
        obj.I = s;
        if (s == 0) {
            downSizeListener.a(b(obj.f, obj.g));
            return;
        }
        if (s == 15) {
            if (!TextUtils.isEmpty(obj.f) && this.b) {
                long b2 = b(MainUtil.M0(obj.f), obj.g);
                if (this.b) {
                    long b3 = b(MainUtil.N0(obj.f), obj.g) + b2;
                    if (this.b) {
                        j = b3;
                    }
                }
            }
            downSizeListener.a(j);
            return;
        }
        if (s == 14) {
            downSizeListener.a(0L);
            return;
        }
        if (s == 13) {
            downSizeListener.a(0L);
            return;
        }
        final AnonymousClass1 anonymousClass1 = new AnonymousClass1(downSizeListener);
        if (TextUtils.isEmpty(obj.f)) {
            anonymousClass1.a(0L);
            return;
        }
        int i = obj.I;
        boolean z = false;
        if (i == 1) {
            String M0 = MainUtil.M0(obj.f);
            String n = DownParseM3u8.n(M0);
            final DownParseM3u8 downParseM3u8 = new DownParseM3u8(this.f16461a);
            String str3 = obj.f;
            if (!TextUtils.isEmpty(str3)) {
                z = str3.startsWith("m3fake:");
            }
            downParseM3u8.f15574c = z;
            downParseM3u8.k(M0, obj.g, n, new DownParseM3u8.DownParseListener() { // from class: com.mycompany.app.main.MainDownSize.3
                @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                public final void a(List list) {
                    DialogDownSize.DownSizeListener downSizeListener2 = anonymousClass1;
                    MainDownSize mainDownSize = MainDownSize.this;
                    DownParseM3u8 downParseM3u82 = downParseM3u8;
                    MainDownSvc.DownItem downItem = obj;
                    if ((list == null || list.isEmpty()) && downParseM3u82.f15574c) {
                        downParseM3u82.p();
                        String M02 = MainUtil.M0(downItem.f);
                        downItem.f = M02;
                        downItem.I = 0;
                        ((AnonymousClass1) downSizeListener2).a(mainDownSize.b(M02, downItem.g));
                        return;
                    }
                    if (downParseM3u82.e) {
                        boolean z2 = MainConst.f16452a;
                        downItem.g = null;
                    }
                    downParseM3u82.p();
                    mainDownSize.c(downItem, null, list, downSizeListener2);
                }
            });
            return;
        }
        MainDownSvc.M3u8Item m3u8Item = null;
        r4 = null;
        r4 = null;
        r4 = null;
        ArrayList d = null;
        m3u8Item = null;
        m3u8Item = null;
        if (i == 2) {
            final MainDownSvc.M3u8Item l = DownParseM3u8.l(obj.f);
            if (l == null) {
                c(obj, l, null, anonymousClass1);
                return;
            }
            String n2 = DownParseM3u8.n(l.f16529a);
            final DownParseM3u8 downParseM3u82 = new DownParseM3u8(this.f16461a);
            downParseM3u82.m(null, l.f16529a, obj.g, n2, l.b, new DownParseM3u8.DownParseListener() { // from class: com.mycompany.app.main.MainDownSize.4
                @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                public final void a(List list) {
                    DownParseM3u8 downParseM3u83 = downParseM3u82;
                    boolean z2 = downParseM3u83.e;
                    MainDownSvc.DownItem downItem = obj;
                    if (z2) {
                        boolean z3 = MainConst.f16452a;
                        downItem.g = null;
                    }
                    downParseM3u83.p();
                    MainDownSize.this.c(downItem, l, list, anonymousClass1);
                }
            });
            return;
        }
        if (i == 4) {
            b = DownParseReddit.a(obj.f);
            if (b != null) {
                d = DownParseReddit.b(b.b);
            }
        } else if (i == 6) {
            b = DownParseKakao.a(obj.f);
            if (b != null) {
                d = DownParseKakao.b(this.f16461a, b.f16529a, obj.g, b.g, b.b, null, new MainUtil.LoopCancelListener() { // from class: com.mycompany.app.main.MainDownSize.5
                    @Override // com.mycompany.app.main.MainUtil.LoopCancelListener
                    public final boolean isCancelled() {
                        return !MainDownSize.this.b;
                    }
                });
            }
        } else if (i == 8) {
            b = DownParseDzen.b(obj.f);
            if (b != null) {
                d = DownParseDzen.c(this.f16461a, b.f16529a, obj.g, b.g, b.b, null, new MainUtil.LoopCancelListener() { // from class: com.mycompany.app.main.MainDownSize.6
                    @Override // com.mycompany.app.main.MainUtil.LoopCancelListener
                    public final boolean isCancelled() {
                        return !MainDownSize.this.b;
                    }
                });
            }
        } else if (i == 10) {
            b = DownParseVimeo.b(this.f16461a, obj.f, obj.g);
            if (b != null) {
                d = DownParseVimeo.d(b.j, b.f, b.b, false);
            }
        } else {
            if (i == 11) {
                arrayList = DownParseTsfile.a(this.f16461a, obj.f, obj.g, null, false, new MainUtil.LoopCancelListener() { // from class: com.mycompany.app.main.MainDownSize.7
                    @Override // com.mycompany.app.main.MainUtil.LoopCancelListener
                    public final boolean isCancelled() {
                        return !MainDownSize.this.b;
                    }
                });
            } else if (i == 12) {
                arrayList = DownParseTsfile.a(this.f16461a, obj.f, obj.g, null, true, new MainUtil.LoopCancelListener() { // from class: com.mycompany.app.main.MainDownSize.8
                    @Override // com.mycompany.app.main.MainUtil.LoopCancelListener
                    public final boolean isCancelled() {
                        return !MainDownSize.this.b;
                    }
                });
            } else {
                arrayList = null;
            }
            c(obj, m3u8Item, arrayList, anonymousClass1);
        }
        ArrayList arrayList2 = d;
        m3u8Item = b;
        arrayList = arrayList2;
        c(obj, m3u8Item, arrayList, anonymousClass1);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004c A[Catch: Exception -> 0x005b, TryCatch #0 {Exception -> 0x005b, blocks: (B:9:0x0025, B:12:0x0037, B:14:0x003d, B:25:0x0046, B:27:0x004c, B:28:0x0053), top: B:8:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0053 A[Catch: Exception -> 0x005b, TRY_LEAVE, TryCatch #0 {Exception -> 0x005b, blocks: (B:9:0x0025, B:12:0x0037, B:14:0x003d, B:25:0x0046, B:27:0x004c, B:28:0x0053), top: B:8:0x0025 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long b(java.lang.String r12, java.lang.String r13) {
        /*
            r11 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r12)
            r1 = 0
            if (r0 == 0) goto L9
            goto L69
        L9:
            boolean r0 = r11.b
            if (r0 != 0) goto Le
            goto L69
        Le:
            android.content.Context r3 = r11.f16461a
            java.lang.String r9 = com.mycompany.app.main.MainUtil.J0()
            r10 = 1
            r6 = 0
            r7 = 0
            r8 = 0
            r4 = r12
            r5 = r13
            java.net.HttpURLConnection r12 = com.mycompany.app.main.MainUtil.T3(r3, r4, r5, r6, r7, r8, r9, r10)
            r11.f16462c = r12
            if (r12 != 0) goto L23
            goto L69
        L23:
            r13 = 1
            r0 = 0
            r12.setDoInput(r13)     // Catch: java.lang.Exception -> L5b
            java.net.HttpURLConnection r12 = r11.f16462c     // Catch: java.lang.Exception -> L5b
            r12.connect()     // Catch: java.lang.Exception -> L5b
            java.net.HttpURLConnection r12 = r11.f16462c     // Catch: java.lang.Exception -> L5b
            if (r12 != 0) goto L33
        L31:
            r12 = r0
            goto L37
        L33:
            java.lang.String r12 = r12.getContentType()     // Catch: java.lang.Exception -> L31
        L37:
            boolean r13 = android.text.TextUtils.isEmpty(r12)     // Catch: java.lang.Exception -> L5b
            if (r13 != 0) goto L46
            java.lang.String r13 = "text/html"
            boolean r12 = r12.startsWith(r13)     // Catch: java.lang.Exception -> L5b
            if (r12 == 0) goto L46
            goto L5b
        L46:
            int r12 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L5b
            r13 = 24
            if (r12 < r13) goto L53
            java.net.HttpURLConnection r12 = r11.f16462c     // Catch: java.lang.Exception -> L5b
            long r12 = r12.getContentLengthLong()     // Catch: java.lang.Exception -> L5b
            goto L5c
        L53:
            java.net.HttpURLConnection r12 = r11.f16462c     // Catch: java.lang.Exception -> L5b
            int r12 = r12.getContentLength()     // Catch: java.lang.Exception -> L5b
            long r12 = (long) r12
            goto L5c
        L5b:
            r12 = r1
        L5c:
            java.net.HttpURLConnection r3 = r11.f16462c
            if (r3 == 0) goto L65
            r3.disconnect()
            r11.f16462c = r0
        L65:
            boolean r0 = r11.b
            if (r0 != 0) goto L6a
        L69:
            return r1
        L6a:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainDownSize.b(java.lang.String, java.lang.String):long");
    }

    public final void c(final MainDownSvc.DownItem downItem, MainDownSvc.M3u8Item m3u8Item, final List list, final DialogDownSize.DownSizeListener downSizeListener) {
        int i;
        if (TextUtils.isEmpty(downItem.f)) {
            ((AnonymousClass1) downSizeListener).a(0L);
            return;
        }
        if (list != null) {
            i = list.size();
        } else {
            i = 0;
        }
        if (i == 0) {
            ((AnonymousClass1) downSizeListener).a(0L);
            return;
        }
        if (!this.b) {
            ((AnonymousClass1) downSizeListener).a(0L);
            return;
        }
        int i2 = downItem.I;
        ArrayList arrayList = null;
        if (i2 == 2) {
            if (m3u8Item != null && !TextUtils.isEmpty(m3u8Item.f16530c)) {
                String n = DownParseM3u8.n(m3u8Item.f16529a);
                final DownParseM3u8 downParseM3u8 = new DownParseM3u8(this.f16461a);
                downParseM3u8.m(null, m3u8Item.f16529a, downItem.g, n, m3u8Item.f16530c, new DownParseM3u8.DownParseListener() { // from class: com.mycompany.app.main.MainDownSize.9
                    @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                    public final void a(List list2) {
                        downParseM3u8.p();
                        MainDownSize.this.d(downItem, list, list2, downSizeListener);
                    }
                });
                return;
            }
        } else if (i2 == 4) {
            if (m3u8Item != null) {
                arrayList = DownParseReddit.b(m3u8Item.f16530c);
            }
        } else if (i2 == 6) {
            if (m3u8Item != null) {
                arrayList = DownParseKakao.b(this.f16461a, m3u8Item.f16529a, downItem.g, m3u8Item.h, m3u8Item.f16530c, downItem, new MainUtil.LoopCancelListener() { // from class: com.mycompany.app.main.MainDownSize.10
                    @Override // com.mycompany.app.main.MainUtil.LoopCancelListener
                    public final boolean isCancelled() {
                        return !MainDownSize.this.b;
                    }
                });
            }
        } else if (i2 == 8) {
            if (m3u8Item != null) {
                arrayList = DownParseDzen.c(this.f16461a, m3u8Item.f16529a, downItem.g, m3u8Item.h, m3u8Item.f16530c, downItem, new MainUtil.LoopCancelListener() { // from class: com.mycompany.app.main.MainDownSize.11
                    @Override // com.mycompany.app.main.MainUtil.LoopCancelListener
                    public final boolean isCancelled() {
                        return !MainDownSize.this.b;
                    }
                });
            }
        } else if (i2 == 10 && m3u8Item != null) {
            arrayList = DownParseVimeo.d(m3u8Item.j, m3u8Item.f, null, true);
        }
        d(downItem, list, arrayList, downSizeListener);
    }

    public final void d(MainDownSvc.DownItem downItem, List list, List list2, DialogDownSize.DownSizeListener downSizeListener) {
        int i;
        if (TextUtils.isEmpty(downItem.f)) {
            ((AnonymousClass1) downSizeListener).a(0L);
            return;
        }
        int i2 = 0;
        if (list != null) {
            i = list.size();
        } else {
            i = 0;
        }
        if (i == 0) {
            ((AnonymousClass1) downSizeListener).a(0L);
            return;
        }
        if (!this.b) {
            ((AnonymousClass1) downSizeListener).a(0L);
            return;
        }
        if (list2 != null) {
            i2 = list2.size();
        }
        if (!this.b) {
            ((AnonymousClass1) downSizeListener).a(0L);
            return;
        }
        long b = b((String) list.get(i / 2), downItem.g) * i;
        if (!this.b) {
            ((AnonymousClass1) downSizeListener).a(0L);
            return;
        }
        if (i2 > 0) {
            b += b((String) list2.get(i2 / 2), downItem.g) * i2;
        }
        if (!this.b) {
            ((AnonymousClass1) downSizeListener).a(0L);
        } else {
            ((AnonymousClass1) downSizeListener).a(b);
        }
    }

    public final void e() {
        Context context = this.f16461a;
        this.f16461a = null;
        this.b = false;
        if (this.f16462c == null) {
            return;
        }
        MainApp.J(context, new Runnable() { // from class: com.mycompany.app.main.MainDownSize.2
            @Override // java.lang.Runnable
            public final void run() {
                MainDownSize mainDownSize = MainDownSize.this;
                HttpURLConnection httpURLConnection = mainDownSize.f16462c;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    mainDownSize.f16462c = null;
                }
            }
        });
    }
}
