package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.wview.WebCastView;

/* loaded from: classes3.dex */
public class MyBarView extends LinearLayout {
    public static final /* synthetic */ int B = 0;
    public boolean A;

    /* renamed from: c, reason: collision with root package name */
    public int f18524c;
    public BarListener f;
    public int[] g;
    public int[] h;
    public int[] i;
    public MyIconView[] j;
    public MyIconView k;
    public MyIconView l;
    public MyIconView m;
    public MyIconView n;
    public MyIconView o;
    public MyIconView p;
    public MyIconView q;
    public MyIconView r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;
    public boolean x;
    public int y;
    public int z;

    /* loaded from: classes3.dex */
    public static class BarItem {

        /* renamed from: a, reason: collision with root package name */
        public MyIconView f18531a;
        public int b;
    }

    /* loaded from: classes3.dex */
    public interface BarListener {
        void a(int i, View view, boolean z);
    }

    public static int c(int i, boolean z) {
        int i2;
        int i3;
        boolean z2;
        int[] a2 = MainUtil.a2(PrefMain.D);
        int i4 = 0;
        if (a2 != null) {
            i2 = a2.length;
        } else {
            i2 = 0;
        }
        if (i2 != 0) {
            int[] a22 = MainUtil.a2(PrefMain.E);
            if (a22 != null) {
                i3 = a22.length;
            } else {
                i3 = 0;
            }
            if (i3 == 0) {
                return -1;
            }
            if (i2 != 0) {
                for (int i5 = 0; i5 < i2; i5++) {
                    if (a2[i5] == 1) {
                        i2 += 3;
                        z2 = true;
                        break;
                    }
                }
            }
            z2 = false;
            if (!z2 && i3 != 0) {
                while (true) {
                    if (i4 >= i3) {
                        break;
                    }
                    if (a22[i4] == 1) {
                        i3 += 3;
                        break;
                    }
                    i4++;
                }
            }
            int i6 = (int) ((i / (i3 + i2)) * i2);
            if (z) {
                return i6;
            }
            return i - i6;
        }
        return -1;
    }

    private MyIconView getDownView() {
        int childCount;
        int i = PrefZone.n;
        if (((i == 1 && this.f18524c == 1) || (i == 2 && this.f18524c == 2)) && (childCount = getChildCount()) != 0) {
            for (int i2 = childCount - 1; i2 > -1; i2--) {
                View childAt = getChildAt(i2);
                if (childAt != null && (childAt instanceof MyIconView)) {
                    MyIconView myIconView = (MyIconView) childAt;
                    if (myIconView.h) {
                        return myIconView;
                    }
                }
            }
            return null;
        }
        return null;
    }

    private MyIconView getYouView() {
        int childCount;
        int i = PrefZone.r;
        if (((i == 1 && this.f18524c == 1) || (i == 2 && this.f18524c == 2)) && (childCount = getChildCount()) != 0) {
            for (int i2 = childCount - 1; i2 > -1; i2--) {
                View childAt = getChildAt(i2);
                if (childAt != null && (childAt instanceof MyIconView)) {
                    MyIconView myIconView = (MyIconView) childAt;
                    if (myIconView.i) {
                        return myIconView;
                    }
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00e5, code lost:
    
        if (r8 == 30) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ed, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00ea, code lost:
    
        if (r8 != 1) goto L73;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Context r18, int[] r19, java.lang.String r20, java.lang.String r21, int r22, boolean r23, int r24, int r25, boolean r26, int r27, int r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 733
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyBarView.a(android.content.Context, int[], java.lang.String, java.lang.String, int, boolean, int, int, boolean, int, int, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x002d, code lost:
    
        if (r8 == 30) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
    
        if (r8 != 1) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(int r8, com.mycompany.app.view.MyIconView r9) {
        /*
            r7 = this;
            if (r9 != 0) goto L3
            goto L41
        L3:
            android.view.ViewGroup$LayoutParams r0 = r9.getLayoutParams()
            android.widget.LinearLayout$LayoutParams r0 = (android.widget.LinearLayout.LayoutParams) r0
            if (r0 != 0) goto Lc
            goto L41
        Lc:
            boolean r1 = r7.w
            boolean r2 = r7.u
            r3 = 30
            r4 = 0
            r5 = 1
            if (r1 == 0) goto L1e
            if (r8 != r5) goto L19
            goto L26
        L19:
            if (r8 != r3) goto L26
            int r6 = com.mycompany.app.main.MainApp.g1
            goto L27
        L1e:
            if (r2 == 0) goto L26
            if (r8 != r5) goto L23
            goto L26
        L23:
            int r6 = com.mycompany.app.main.MainApp.g1
            goto L27
        L26:
            r6 = r4
        L27:
            if (r1 == 0) goto L30
            if (r8 != r5) goto L2d
            r4 = 4
            goto L35
        L2d:
            if (r8 != r3) goto L34
            goto L35
        L30:
            if (r2 == 0) goto L34
            if (r8 != r5) goto L35
        L34:
            r4 = r5
        L35:
            int r8 = r0.width
            if (r8 != r6) goto L42
            float r8 = r0.weight
            float r1 = (float) r4
            int r8 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
            if (r8 == 0) goto L41
            goto L42
        L41:
            return
        L42:
            r0.width = r6
            float r8 = (float) r4
            r0.weight = r8
            r9.requestLayout()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.view.MyBarView.b(int, com.mycompany.app.view.MyIconView):void");
    }

    public final void d() {
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        int i = this.z;
        if (i != 0) {
            canvas.drawColor(i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
        this.A = dispatchTouchEvent;
        return dispatchTouchEvent;
    }

    public final void e(MyIconView myIconView, int i, int i2) {
        if (myIconView == null) {
            return;
        }
        if (i != 63 && i != 29) {
            if (i == 64) {
                if (this.t) {
                    myIconView.setMaxAlpha(1.0f);
                    return;
                } else {
                    myIconView.setMaxAlpha(MyIconView.i(i2));
                    return;
                }
            }
            myIconView.setMaxAlpha(MyIconView.i(i2));
            return;
        }
        if (this.s) {
            myIconView.setMaxAlpha(1.0f);
        } else {
            myIconView.setMaxAlpha(MyIconView.i(i2));
        }
    }

    public final void f(int i, boolean z) {
        int k2;
        int k22;
        this.s = z;
        MyIconView myIconView = this.o;
        if (myIconView != null) {
            if (z) {
                k22 = R.drawable.outline_kid_star_yellow_24;
            } else {
                k22 = MainUtil.k2(63, i);
            }
            myIconView.setImageResource(k22);
            e(this.o, 63, i);
        }
        MyIconView myIconView2 = this.p;
        if (myIconView2 != null) {
            if (z) {
                k2 = R.drawable.outline_kid_star_2_yellow_24;
            } else {
                k2 = MainUtil.k2(29, i);
            }
            myIconView2.setImageResource(k2);
            e(this.p, 29, i);
        }
    }

    public final void g(Context context, String str, String str2, int i, boolean z, int i2, int i3, boolean z2, int i4, int i5) {
        int i6;
        int i7;
        boolean z3;
        int k2;
        int k22;
        int k23;
        int i8;
        int[] iArr = this.g;
        if (iArr != null) {
            i6 = iArr.length;
        } else {
            i6 = 0;
        }
        if (i6 != 0) {
            MyIconView[] myIconViewArr = this.j;
            if (myIconViewArr != null) {
                i7 = myIconViewArr.length;
            } else {
                i7 = 0;
            }
            if (i6 == i7) {
                this.y = i4;
                int P1 = MainUtil.P1(i4, i5);
                for (int i9 = 0; i9 < i6; i9++) {
                    MyIconView myIconView = this.j[i9];
                    if (myIconView != null) {
                        int i10 = this.g[i9];
                        boolean z4 = true;
                        if (i10 == 1) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (z3) {
                            if (this.f18524c != 1) {
                                z4 = false;
                            }
                            myIconView.p(i4, i5, z2, z4);
                            myIconView.s(i, i4, context, str, str2, z);
                        } else if (i10 == 30) {
                            myIconView.y(i2, i3, i4);
                        } else if (i10 == 63) {
                            if (this.s) {
                                k23 = R.drawable.outline_kid_star_yellow_24;
                            } else {
                                k23 = MainUtil.k2(63, i4);
                            }
                            myIconView.setImageResource(k23);
                        } else if (i10 == 29) {
                            if (this.s) {
                                k22 = R.drawable.outline_kid_star_2_yellow_24;
                            } else {
                                k22 = MainUtil.k2(29, i4);
                            }
                            myIconView.setImageResource(k22);
                        } else if (i10 == 64) {
                            if (this.t) {
                                k2 = R.drawable.outline_download_for_offline_red_24;
                            } else {
                                k2 = MainUtil.k2(64, i4);
                            }
                            myIconView.setImageResource(k2);
                        } else if (i10 == 2) {
                            if (PrefPdf.z || this.f18524c != 1) {
                                z4 = false;
                            }
                            myIconView.setImageResource(MainUtil.j2(i4, z4));
                        } else {
                            myIconView.setImageResource(MainUtil.k2(i10, i4));
                        }
                        e(myIconView, i10, i4);
                        myIconView.v(z3, !z3);
                        myIconView.setBgPreColor(P1);
                        if (z3) {
                            myIconView.setHostPreColor(P1);
                            if (z) {
                                i8 = P1;
                            } else {
                                i8 = 0;
                            }
                            myIconView.setTrnsPreColor(i8);
                        }
                    }
                }
            }
        }
    }

    public WebCastView getCastView() {
        int childCount;
        View childAt;
        if (PrefMain.s && this.f18524c == 1 && (childCount = getChildCount()) != 0 && (childAt = getChildAt(childCount - 1)) != null && (childAt instanceof WebCastView)) {
            return (WebCastView) childAt;
        }
        return null;
    }

    public int getColorType() {
        return this.y;
    }

    public final void h(int i, int i2) {
        int i3;
        int i4;
        MyIconView myIconView;
        int[] iArr = this.g;
        boolean z = false;
        if (iArr != null) {
            i3 = iArr.length;
        } else {
            i3 = 0;
        }
        if (i3 != 0) {
            MyIconView[] myIconViewArr = this.j;
            if (myIconViewArr != null) {
                i4 = myIconViewArr.length;
            } else {
                i4 = 0;
            }
            if (i3 == i4) {
                for (int i5 = 0; i5 < i3; i5++) {
                    if (i == this.g[i5] && (myIconView = this.j[i5]) != null) {
                        if (i == 2) {
                            if (!PrefPdf.z && this.f18524c == 1) {
                                z = true;
                            }
                            myIconView.setImageResource(MainUtil.j2(i2, z));
                        } else {
                            myIconView.setImageResource(MainUtil.k2(i, i2));
                        }
                        e(myIconView, i, i2);
                        return;
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (!this.u) {
            return;
        }
        post(new Runnable() { // from class: com.mycompany.app.view.MyBarView.6
            @Override // java.lang.Runnable
            public final void run() {
                int i5;
                int i6;
                boolean z;
                MyBarView myBarView = MyBarView.this;
                int[] iArr = myBarView.g;
                if (iArr != null) {
                    i5 = iArr.length;
                } else {
                    i5 = 0;
                }
                if (i5 != 0) {
                    MyIconView[] myIconViewArr = myBarView.j;
                    if (myIconViewArr != null) {
                        i6 = myIconViewArr.length;
                    } else {
                        i6 = 0;
                    }
                    if (i5 == i6) {
                        if ((i5 + 3) * MainApp.g1 > myBarView.getWidth()) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (myBarView.w != z) {
                            myBarView.w = z;
                            for (int i7 = 0; i7 < i5; i7++) {
                                myBarView.b(myBarView.g[i7], myBarView.j[i7]);
                            }
                        }
                    }
                }
            }
        });
    }

    public void setAddrNoti(boolean z) {
        MyIconView myIconView = this.k;
        if (myIconView != null) {
            myIconView.x(z, true);
        }
    }

    public void setFilterColor(int i) {
        if (this.z == i) {
            return;
        }
        this.z = i;
        invalidate();
    }

    public void setIconLoad(boolean z) {
        MyIconView myIconView = this.r;
        if (myIconView == null) {
            return;
        }
        int i = this.y;
        this.x = z;
        if (!z) {
            myIconView.setImageResource(MainUtil.k2(35, i));
            e(this.r, 35, i);
        } else {
            if (i == 0) {
                myIconView.setImageResource(R.drawable.outline_close_black_24);
            } else {
                myIconView.setImageResource(R.drawable.outline_close_dark_24);
            }
            e(this.r, 35, i);
        }
    }

    public void setListener(BarListener barListener) {
        this.f = barListener;
    }
}
