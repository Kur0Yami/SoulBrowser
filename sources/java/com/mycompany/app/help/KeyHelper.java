package com.mycompany.app.help;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefMain;

/* loaded from: classes3.dex */
public class KeyHelper {

    /* renamed from: a, reason: collision with root package name */
    public final int f15716a;
    public KeyHelperListener b;

    /* renamed from: c, reason: collision with root package name */
    public View f15717c;
    public View d;
    public boolean e;
    public boolean f;
    public int g;
    public int h;
    public boolean i;

    /* loaded from: classes3.dex */
    public interface KeyHelperListener {
        void a();

        void b(boolean z);
    }

    public KeyHelper(Context context, View view, boolean z, boolean z2, KeyHelperListener keyHelperListener) {
        if (view != null) {
            this.d = view;
            this.e = z;
            this.f = z2;
            this.b = keyHelperListener;
            this.g = view.getHeight();
            this.f15716a = (int) MainUtil.G(context, 100.0f);
            this.d.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.mycompany.app.help.KeyHelper.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    KeyHelper keyHelper = KeyHelper.this;
                    View view2 = keyHelper.d;
                    if (view2 != null) {
                        if (keyHelper.e && keyHelper.f) {
                            int height = view2.getHeight();
                            if (keyHelper.g == height) {
                                return;
                            } else {
                                keyHelper.g = height;
                            }
                        }
                        keyHelper.d.postDelayed(new Runnable() { // from class: com.mycompany.app.help.KeyHelper.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i;
                                View view3;
                                KeyHelper keyHelper2 = KeyHelper.this;
                                View view4 = keyHelper2.d;
                                if (view4 != null) {
                                    if (keyHelper2.f15717c == null) {
                                        keyHelper2.f15717c = view4.getRootView();
                                        if (keyHelper2.f15717c == null) {
                                            return;
                                        }
                                    }
                                    Rect rect = new Rect();
                                    keyHelper2.f15717c.getWindowVisibleDisplayFrame(rect);
                                    int height2 = keyHelper2.f15717c.getHeight() - rect.bottom;
                                    if (keyHelper2.h != height2) {
                                        keyHelper2.h = height2;
                                        if (height2 > keyHelper2.f15716a) {
                                            if (!keyHelper2.i) {
                                                keyHelper2.i = true;
                                                KeyHelperListener keyHelperListener2 = keyHelper2.b;
                                                if (keyHelperListener2 != null) {
                                                    keyHelperListener2.b(true);
                                                }
                                            } else {
                                                KeyHelperListener keyHelperListener3 = keyHelper2.b;
                                                if (keyHelperListener3 != null) {
                                                    keyHelperListener3.a();
                                                }
                                            }
                                            if (keyHelper2.a()) {
                                                int i2 = keyHelper2.h;
                                                if (!keyHelper2.f || (view3 = keyHelper2.d) == null || view3.getWidth() >= keyHelper2.d.getHeight()) {
                                                    i = 0;
                                                } else {
                                                    i = PrefMain.w;
                                                }
                                                int i3 = i2 - i;
                                                if (keyHelper2.d.getPaddingBottom() != i3) {
                                                    keyHelper2.d.setPadding(0, 0, 0, i3);
                                                    return;
                                                }
                                                return;
                                            }
                                            return;
                                        }
                                        if (keyHelper2.i) {
                                            keyHelper2.i = false;
                                            KeyHelperListener keyHelperListener4 = keyHelper2.b;
                                            if (keyHelperListener4 != null) {
                                                keyHelperListener4.b(false);
                                            }
                                        } else {
                                            KeyHelperListener keyHelperListener5 = keyHelper2.b;
                                            if (keyHelperListener5 != null) {
                                                keyHelperListener5.a();
                                            }
                                        }
                                        if (keyHelper2.a() && keyHelper2.d.getPaddingBottom() != 0) {
                                            keyHelper2.d.setPadding(0, 0, 0, 0);
                                        }
                                    }
                                }
                            }
                        }, 400L);
                    }
                }
            });
        }
    }

    public final boolean a() {
        if (Build.VERSION.SDK_INT < 30) {
            if (!this.e || !this.f) {
                return true;
            }
            return false;
        }
        return !this.e;
    }

    public final void b(boolean z, boolean z2) {
        if (this.e != z || this.f != z2) {
            this.e = z;
            this.f = z2;
            if (this.d != null && !a() && this.d.getPaddingBottom() != 0) {
                this.d.setPadding(0, 0, 0, 0);
            }
        }
    }
}
