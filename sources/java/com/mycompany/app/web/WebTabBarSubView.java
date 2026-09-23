package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.view.GestureDetector;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.mycompany.app.quick.TabDragHelper;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyTabFrame;
import com.mycompany.app.view.MyWebBody;
import com.mycompany.app.web.WebTabAdapter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class WebTabBarSubView extends FrameLayout {
    public float A;
    public float B;
    public boolean C;
    public TabDragHelper D;
    public ItemTouchHelper E;
    public boolean F;
    public int G;
    public int H;
    public boolean I;
    public int J;
    public float K;
    public boolean L;
    public boolean M;
    public View N;
    public int O;
    public Rect P;
    public BitmapDrawable Q;
    public boolean R;
    public boolean S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int a0;
    public int b0;

    /* renamed from: c, reason: collision with root package name */
    public Context f19533c;
    public int c0;
    public int d0;
    public int e0;
    public TabBarSubListener f;
    public int f0;
    public MyWebBody g;
    public int g0;
    public int h;
    public int i;
    public boolean j;
    public int k;
    public int l;
    public List m;
    public int n;
    public int o;
    public int p;
    public MyTabFrame q;
    public MyRecyclerView r;
    public MyButtonImage s;
    public WebTabBarAdapter t;
    public boolean u;
    public List v;
    public int w;
    public int x;
    public WebTabAdapter.WebTabItem y;
    public GestureDetector z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.web.WebTabBarSubView$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass6 implements MyFadeListener {
        public AnonymousClass6() {
        }

        @Override // com.mycompany.app.view.MyFadeListener
        public final void a(boolean z) {
            TabBarSubListener tabBarSubListener;
            if (!z && (tabBarSubListener = WebTabBarSubView.this.f) != null) {
                WebViewActivity webViewActivity = WebViewActivity.this;
                int i = WebViewActivity.Fo;
                webViewActivity.z6();
            }
        }

        @Override // com.mycompany.app.view.MyFadeListener
        public final void b(boolean z, boolean z2) {
        }
    }

    /* loaded from: classes3.dex */
    public interface TabBarSubListener {
        void a(int i, boolean z);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0039 A[Catch: Exception -> 0x006b, TryCatch #0 {Exception -> 0x006b, blocks: (B:11:0x0015, B:13:0x0019, B:14:0x0023, B:16:0x002c, B:21:0x0039, B:24:0x0044, B:27:0x004a, B:28:0x004d), top: B:10:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0044 A[Catch: Exception -> 0x006b, TryCatch #0 {Exception -> 0x006b, blocks: (B:11:0x0015, B:13:0x0019, B:14:0x0023, B:16:0x002c, B:21:0x0039, B:24:0x0044, B:27:0x004a, B:28:0x004d), top: B:10:0x0015 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.mycompany.app.web.WebTabBarSubView r10, int r11) {
        /*
            boolean r0 = r10.u
            if (r0 != 0) goto L6d
            com.mycompany.app.web.WebTabBarSubView$TabBarSubListener r0 = r10.f
            if (r0 == 0) goto L6d
            com.mycompany.app.web.WebTabBarAdapter r0 = r10.t
            if (r0 == 0) goto L6d
            java.util.List r0 = r10.v
            if (r0 != 0) goto L11
            goto L6d
        L11:
            r1 = 1
            r10.u = r1
            r2 = 0
            boolean r3 = com.mycompany.app.pref.PrefWeb.A     // Catch: java.lang.Exception -> L6b
            if (r3 == 0) goto L23
            r10.x = r11     // Catch: java.lang.Exception -> L6b
            java.lang.Object r0 = r0.get(r11)     // Catch: java.lang.Exception -> L6b
            com.mycompany.app.web.WebTabAdapter$WebTabItem r0 = (com.mycompany.app.web.WebTabAdapter.WebTabItem) r0     // Catch: java.lang.Exception -> L6b
            r10.y = r0     // Catch: java.lang.Exception -> L6b
        L23:
            java.util.List r0 = r10.v     // Catch: java.lang.Exception -> L6b
            r0.remove(r11)     // Catch: java.lang.Exception -> L6b
            java.util.List r0 = r10.v     // Catch: java.lang.Exception -> L6b
            if (r0 == 0) goto L36
            int r0 = r0.size()     // Catch: java.lang.Exception -> L6b
            r3 = 2
            if (r0 >= r3) goto L34
            goto L36
        L34:
            r0 = r2
            goto L37
        L36:
            r0 = r1
        L37:
            if (r0 == 0) goto L44
            com.mycompany.app.web.WebTabBarSubView$TabBarSubListener r1 = r10.f     // Catch: java.lang.Exception -> L6b
            int r3 = r10.o     // Catch: java.lang.Exception -> L6b
            int r3 = r3 + r11
            com.mycompany.app.web.WebViewActivity$177 r1 = (com.mycompany.app.web.WebViewActivity.AnonymousClass177) r1     // Catch: java.lang.Exception -> L6b
            r1.b(r3, r0)     // Catch: java.lang.Exception -> L6b
            return
        L44:
            int r3 = r10.w     // Catch: java.lang.Exception -> L6b
            if (r3 < 0) goto L4d
            if (r11 > r3) goto L4d
            int r3 = r3 - r1
            r10.w = r3     // Catch: java.lang.Exception -> L6b
        L4d:
            r10.g()     // Catch: java.lang.Exception -> L6b
            com.mycompany.app.web.WebTabBarSubView$TabBarSubListener r1 = r10.f     // Catch: java.lang.Exception -> L6b
            int r3 = r10.o     // Catch: java.lang.Exception -> L6b
            int r3 = r3 + r11
            com.mycompany.app.web.WebViewActivity$177 r1 = (com.mycompany.app.web.WebViewActivity.AnonymousClass177) r1     // Catch: java.lang.Exception -> L6b
            r1.b(r3, r0)     // Catch: java.lang.Exception -> L6b
            com.mycompany.app.web.WebTabBarAdapter r4 = r10.t     // Catch: java.lang.Exception -> L6b
            java.util.List r5 = r10.v     // Catch: java.lang.Exception -> L6b
            int r6 = r10.w     // Catch: java.lang.Exception -> L6b
            com.mycompany.app.web.WebTabBarSubView$8 r9 = new com.mycompany.app.web.WebTabBarSubView$8     // Catch: java.lang.Exception -> L6b
            r9.<init>()     // Catch: java.lang.Exception -> L6b
            r8 = 0
            r7 = r11
            r4.v(r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L6b
            return
        L6b:
            r10.u = r2
        L6d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebTabBarSubView.a(com.mycompany.app.web.WebTabBarSubView, int):void");
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    private List<WebTabAdapter.WebTabItem> getSubRealList() {
        int i;
        WebTabAdapter.WebTabItem webTabItem;
        List list = this.m;
        ArrayList arrayList = null;
        if (list != null && (i = this.o) >= 0 && i < list.size() && (webTabItem = (WebTabAdapter.WebTabItem) this.m.get(this.o)) != null) {
            long j = webTabItem.e;
            if (j != 0) {
                int size = this.m.size();
                for (int i2 = this.o; i2 < size; i2++) {
                    WebTabAdapter.WebTabItem webTabItem2 = (WebTabAdapter.WebTabItem) this.m.get(i2);
                    if (webTabItem2 != null) {
                        if (webTabItem2.e != j) {
                            break;
                        }
                        ?? obj = new Object();
                        obj.f19520c = webTabItem2.f19520c;
                        int i3 = i2 - this.o;
                        obj.h = i3;
                        obj.j = webTabItem2.j;
                        obj.k = webTabItem2.k;
                        if (this.n == webTabItem2.h) {
                            this.w = i3;
                        }
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(obj);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    public void setDrawList(List<WebTabAdapter.WebTabItem> list) {
        WebTabAdapter.WebTabItem B;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = null;
            for (WebTabAdapter.WebTabItem webTabItem : list) {
                if (webTabItem != null) {
                    ?? obj = new Object();
                    obj.h = webTabItem.h + this.o;
                    obj.i = webTabItem.i + this.p;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(obj);
                }
            }
            TabBarSubListener tabBarSubListener = this.f;
            if (tabBarSubListener != null) {
                int i = this.p;
                WebTabBarAdapter webTabBarAdapter = WebViewActivity.this.b3;
                if (webTabBarAdapter != null) {
                    if (arrayList != null && (B = webTabBarAdapter.B(i)) != null && B.q != null) {
                        B.q = arrayList;
                    }
                    webTabBarAdapter.M(true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setSubRealList(List<WebTabAdapter.WebTabItem> list) {
        WebTabAdapter.WebTabItem webTabItem;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            int i2 = -1;
            for (WebTabAdapter.WebTabItem webTabItem2 : list) {
                if (webTabItem2 != null) {
                    int i3 = webTabItem2.h;
                    List list2 = this.v;
                    if (list2 != null && i3 >= 0 && i3 < list2.size()) {
                        webTabItem = (WebTabAdapter.WebTabItem) this.v.get(i3);
                    } else {
                        webTabItem = null;
                    }
                    if (webTabItem != null) {
                        if (this.w == webTabItem.h) {
                            i2 = i;
                        }
                        webTabItem.h = i;
                        arrayList.add(webTabItem);
                        i++;
                    }
                }
            }
            this.v = arrayList;
            this.w = i2;
            this.t.L(arrayList, i2, this.j, this.k, this.l, true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0142  */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.LinearLayoutManager] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(com.mycompany.app.view.MyWebBody r18, int r19, java.util.List r20, int r21, int r22, int r23, boolean r24, int r25, int r26, com.mycompany.app.web.WebTabBarSubView.TabBarSubListener r27) {
        /*
            Method dump skipped, instructions count: 661
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebTabBarSubView.d(com.mycompany.app.view.MyWebBody, int, java.util.List, int, int, int, boolean, int, int, com.mycompany.app.web.WebTabBarSubView$TabBarSubListener):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.L) {
            super.dispatchDraw(canvas);
            BitmapDrawable bitmapDrawable = this.Q;
            if (bitmapDrawable != null) {
                bitmapDrawable.draw(canvas);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        if (r0 != 3) goto L68;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean dispatchTouchEvent(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebTabBarSubView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void e() {
        this.L = false;
        f();
        MyTabFrame myTabFrame = this.q;
        if (myTabFrame != null) {
            myTabFrame.f = false;
            myTabFrame.d();
            myTabFrame.h = null;
            myTabFrame.j = null;
            myTabFrame.k = null;
            myTabFrame.o = null;
            myTabFrame.r = null;
            myTabFrame.t = null;
            myTabFrame.x = null;
            myTabFrame.A = null;
            myTabFrame.F = null;
            myTabFrame.G = null;
            myTabFrame.H = null;
            this.q = null;
        }
        MyRecyclerView myRecyclerView = this.r;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.r = null;
        }
        MyButtonImage myButtonImage = this.s;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.s = null;
        }
        WebTabBarAdapter webTabBarAdapter = this.t;
        if (webTabBarAdapter != null) {
            webTabBarAdapter.H();
            this.t = null;
        }
        TabDragHelper tabDragHelper = this.D;
        if (tabDragHelper != null) {
            tabDragHelper.p();
            this.D = null;
        }
        this.f19533c = null;
        this.f = null;
        this.g = null;
        this.v = null;
        this.y = null;
        this.z = null;
        this.E = null;
    }

    public final void f() {
        View view = this.N;
        if (view != null) {
            view.setVisibility(0);
            this.N = null;
        }
        this.M = false;
        this.P = null;
        this.Q = null;
    }

    public final void g() {
        List<WebTabAdapter.WebTabItem> list = this.v;
        if (list != null && !list.isEmpty()) {
            int i = 0;
            for (WebTabAdapter.WebTabItem webTabItem : list) {
                if (webTabItem != null) {
                    webTabItem.h = i;
                    i++;
                }
            }
        }
    }

    public void setDragPos(int i) {
        this.O = i;
    }
}
