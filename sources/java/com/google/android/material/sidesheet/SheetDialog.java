package com.google.android.material.sidesheet;

import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.sidesheet.SheetCallback;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class SheetDialog<C extends SheetCallback> extends AppCompatDialog {
    public static final int p = R.id.coordinator;
    public static final int q = R.id.touch_outside;
    public Sheet j;
    public FrameLayout k;
    public FrameLayout l;
    public boolean m;
    public boolean n;
    public MaterialBackOrchestrator o;

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        g();
        super.cancel();
    }

    public abstract void e(Sheet sheet);

    public final void f() {
        if (this.k == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), j(), null);
            this.k = frameLayout;
            FrameLayout frameLayout2 = (FrameLayout) frameLayout.findViewById(i());
            this.l = frameLayout2;
            SideSheetBehavior h = h(frameLayout2);
            this.j = h;
            e(h);
            this.o = new MaterialBackOrchestrator(this.j, this.l);
        }
    }

    public Sheet g() {
        if (this.j == null) {
            f();
        }
        return this.j;
    }

    public abstract SideSheetBehavior h(FrameLayout frameLayout);

    public abstract int i();

    public abstract int j();

    public final void k() {
        MaterialBackOrchestrator materialBackOrchestrator = this.o;
        if (materialBackOrchestrator == null) {
            return;
        }
        if (this.m) {
            materialBackOrchestrator.a(false);
        } else {
            materialBackOrchestrator.b();
        }
    }

    public final FrameLayout l(View view, int i, ViewGroup.LayoutParams layoutParams) {
        f();
        if (this.k == null) {
            f();
        }
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.k.findViewById(p);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        if (this.l == null) {
            f();
        }
        FrameLayout frameLayout = this.l;
        frameLayout.removeAllViews();
        if (layoutParams == null) {
            frameLayout.addView(view);
        } else {
            frameLayout.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(q).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.sidesheet.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SheetDialog sheetDialog = SheetDialog.this;
                if (sheetDialog.m && sheetDialog.isShowing() && sheetDialog.n) {
                    sheetDialog.cancel();
                }
            }
        });
        if (this.l == null) {
            f();
        }
        ViewCompat.z(this.l, new AccessibilityDelegateCompat() { // from class: com.google.android.material.sidesheet.SheetDialog.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                this.f760a.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat.f834a);
                if (SheetDialog.this.m) {
                    accessibilityNodeInfoCompat.a(1048576);
                    accessibilityNodeInfoCompat.o(true);
                } else {
                    accessibilityNodeInfoCompat.o(false);
                }
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final boolean g(View view2, int i2, Bundle bundle) {
                if (i2 == 1048576) {
                    SheetDialog sheetDialog = SheetDialog.this;
                    if (sheetDialog.m) {
                        sheetDialog.cancel();
                        return true;
                    }
                }
                return super.g(view2, i2, bundle);
            }
        });
        return this.k;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        FrameLayout frameLayout;
        int i;
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null && (frameLayout = this.l) != null && (frameLayout.getLayoutParams() instanceof CoordinatorLayout.LayoutParams)) {
            if (Gravity.getAbsoluteGravity(((CoordinatorLayout.LayoutParams) this.l.getLayoutParams()).f611c, this.l.getLayoutDirection()) == 3) {
                i = R.style.Animation_Material3_SideSheetDialog_Left;
            } else {
                i = R.style.Animation_Material3_SideSheetDialog_Right;
            }
            window.setWindowAnimations(i);
        }
        k();
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setStatusBarColor(0);
            window.addFlags(IntCompanionObject.MIN_VALUE);
            window.setLayout(-1, -1);
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        MaterialBackOrchestrator materialBackOrchestrator = this.o;
        if (materialBackOrchestrator != null) {
            materialBackOrchestrator.b();
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void onStart() {
        super.onStart();
        Sheet sheet = this.j;
        if (sheet != null && sheet.getState() == 5) {
            this.j.e(3);
        }
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.m != z) {
            this.m = z;
        }
        if (getWindow() != null) {
            k();
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.m) {
            this.m = true;
        }
        this.n = z;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(int i) {
        super.setContentView(l(null, i, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(l(view, 0, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(l(view, 0, layoutParams));
    }
}
