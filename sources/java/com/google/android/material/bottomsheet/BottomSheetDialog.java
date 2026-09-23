package com.google.android.material.bottomsheet;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatDialog;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.ArrayList;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes3.dex */
public class BottomSheetDialog extends AppCompatDialog {
    public BottomSheetBehavior j;
    public FrameLayout k;
    public CoordinatorLayout l;
    public FrameLayout m;
    public boolean n;
    public boolean o;
    public boolean p;
    public EdgeToEdgeCallback q;
    public boolean r;
    public MaterialBackOrchestrator s;
    public BottomSheetBehavior.BottomSheetCallback t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDialog$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements View.OnTouchListener {
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public static class EdgeToEdgeCallback extends BottomSheetBehavior.BottomSheetCallback {

        /* renamed from: a, reason: collision with root package name */
        public final Boolean f11694a;
        public final WindowInsetsCompat b;

        /* renamed from: c, reason: collision with root package name */
        public Window f11695c;
        public boolean d;

        public EdgeToEdgeCallback(View view, WindowInsetsCompat windowInsetsCompat) {
            ColorStateList backgroundTintList;
            Integer num;
            this.b = windowInsetsCompat;
            MaterialShapeDrawable materialShapeDrawable = BottomSheetBehavior.E(view).m;
            if (materialShapeDrawable != null) {
                backgroundTintList = materialShapeDrawable.f.d;
            } else {
                backgroundTintList = view.getBackgroundTintList();
            }
            if (backgroundTintList != null) {
                this.f11694a = Boolean.valueOf(MaterialColors.f(backgroundTintList.getDefaultColor()));
                return;
            }
            ColorStateList d = DrawableUtils.d(view.getBackground());
            if (d != null) {
                num = Integer.valueOf(d.getDefaultColor());
            } else {
                num = null;
            }
            if (num != null) {
                this.f11694a = Boolean.valueOf(MaterialColors.f(num.intValue()));
            } else {
                this.f11694a = null;
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void a(View view) {
            d(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void b(View view) {
            d(view);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void c(View view, int i) {
            d(view);
        }

        public final void d(View view) {
            boolean booleanValue;
            int top = view.getTop();
            WindowInsetsCompat windowInsetsCompat = this.b;
            if (top < windowInsetsCompat.i()) {
                Window window = this.f11695c;
                if (window != null) {
                    Boolean bool = this.f11694a;
                    if (bool == null) {
                        booleanValue = this.d;
                    } else {
                        booleanValue = bool.booleanValue();
                    }
                    new WindowInsetsControllerCompat(window, window.getDecorView()).e(booleanValue);
                }
                view.setPadding(view.getPaddingLeft(), windowInsetsCompat.i() - view.getTop(), view.getPaddingRight(), view.getPaddingBottom());
                return;
            }
            if (view.getTop() != 0) {
                Window window2 = this.f11695c;
                if (window2 != null) {
                    new WindowInsetsControllerCompat(window2, window2.getDecorView()).e(this.d);
                }
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), view.getPaddingBottom());
            }
        }

        public final void e(Window window) {
            if (this.f11695c != window) {
                this.f11695c = window;
                if (window != null) {
                    this.d = new WindowInsetsControllerCompat(window, window.getDecorView()).c();
                }
            }
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void cancel() {
        f();
        super.cancel();
    }

    public final void e() {
        if (this.k == null) {
            FrameLayout frameLayout = (FrameLayout) View.inflate(getContext(), R.layout.design_bottom_sheet_dialog, null);
            this.k = frameLayout;
            this.l = (CoordinatorLayout) frameLayout.findViewById(R.id.coordinator);
            FrameLayout frameLayout2 = (FrameLayout) this.k.findViewById(R.id.design_bottom_sheet);
            this.m = frameLayout2;
            BottomSheetBehavior E = BottomSheetBehavior.E(frameLayout2);
            this.j = E;
            BottomSheetBehavior.BottomSheetCallback bottomSheetCallback = this.t;
            ArrayList arrayList = E.e0;
            if (!arrayList.contains(bottomSheetCallback)) {
                arrayList.add(bottomSheetCallback);
            }
            this.j.K(this.n);
            this.s = new MaterialBackOrchestrator(this.j, this.m);
        }
    }

    public final BottomSheetBehavior f() {
        if (this.j == null) {
            e();
        }
        return this.j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.lang.Object, android.view.View$OnTouchListener] */
    public final FrameLayout g(View view, int i, ViewGroup.LayoutParams layoutParams) {
        e();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.k.findViewById(R.id.coordinator);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        if (this.r) {
            ViewCompat.G(this.k, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.bottomsheet.BottomSheetDialog.1
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat a(View view2, WindowInsetsCompat windowInsetsCompat) {
                    BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
                    EdgeToEdgeCallback edgeToEdgeCallback = bottomSheetDialog.q;
                    if (edgeToEdgeCallback != null) {
                        bottomSheetDialog.j.e0.remove(edgeToEdgeCallback);
                    }
                    EdgeToEdgeCallback edgeToEdgeCallback2 = new EdgeToEdgeCallback(bottomSheetDialog.m, windowInsetsCompat);
                    bottomSheetDialog.q = edgeToEdgeCallback2;
                    edgeToEdgeCallback2.e(bottomSheetDialog.getWindow());
                    BottomSheetBehavior bottomSheetBehavior = bottomSheetDialog.j;
                    EdgeToEdgeCallback edgeToEdgeCallback3 = bottomSheetDialog.q;
                    ArrayList arrayList = bottomSheetBehavior.e0;
                    if (!arrayList.contains(edgeToEdgeCallback3)) {
                        arrayList.add(edgeToEdgeCallback3);
                    }
                    return windowInsetsCompat;
                }
            });
        }
        this.m.removeAllViews();
        if (layoutParams == null) {
            this.m.addView(view);
        } else {
            this.m.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(R.id.touch_outside).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.bottomsheet.BottomSheetDialog.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
                if (bottomSheetDialog.n && bottomSheetDialog.isShowing()) {
                    if (!bottomSheetDialog.p) {
                        TypedArray obtainStyledAttributes = bottomSheetDialog.getContext().obtainStyledAttributes(new int[]{android.R.attr.windowCloseOnTouchOutside});
                        bottomSheetDialog.o = obtainStyledAttributes.getBoolean(0, true);
                        obtainStyledAttributes.recycle();
                        bottomSheetDialog.p = true;
                    }
                    if (bottomSheetDialog.o) {
                        bottomSheetDialog.cancel();
                    }
                }
            }
        });
        ViewCompat.z(this.m, new AccessibilityDelegateCompat() { // from class: com.google.android.material.bottomsheet.BottomSheetDialog.3
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                this.f760a.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat.f834a);
                if (BottomSheetDialog.this.n) {
                    accessibilityNodeInfoCompat.a(1048576);
                    accessibilityNodeInfoCompat.o(true);
                } else {
                    accessibilityNodeInfoCompat.o(false);
                }
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final boolean g(View view2, int i2, Bundle bundle) {
                if (i2 == 1048576) {
                    BottomSheetDialog bottomSheetDialog = BottomSheetDialog.this;
                    if (bottomSheetDialog.n) {
                        bottomSheetDialog.cancel();
                        return true;
                    }
                }
                return super.g(view2, i2, bundle);
            }
        });
        this.m.setOnTouchListener(new Object());
        return this.k;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final void onAttachedToWindow() {
        boolean z;
        super.onAttachedToWindow();
        Window window = getWindow();
        if (window != null) {
            if (this.r && Color.alpha(window.getNavigationBarColor()) < 255) {
                z = true;
            } else {
                z = false;
            }
            FrameLayout frameLayout = this.k;
            if (frameLayout != null) {
                frameLayout.setFitsSystemWindows(!z);
            }
            CoordinatorLayout coordinatorLayout = this.l;
            if (coordinatorLayout != null) {
                coordinatorLayout.setFitsSystemWindows(!z);
            }
            WindowCompat.a(window, !z);
            EdgeToEdgeCallback edgeToEdgeCallback = this.q;
            if (edgeToEdgeCallback != null) {
                edgeToEdgeCallback.e(window);
            }
        }
        MaterialBackOrchestrator materialBackOrchestrator = this.s;
        if (materialBackOrchestrator == null) {
            return;
        }
        if (this.n) {
            materialBackOrchestrator.a(false);
        } else {
            materialBackOrchestrator.b();
        }
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
    public final void onDetachedFromWindow() {
        EdgeToEdgeCallback edgeToEdgeCallback = this.q;
        if (edgeToEdgeCallback != null) {
            edgeToEdgeCallback.e(null);
        }
        MaterialBackOrchestrator materialBackOrchestrator = this.s;
        if (materialBackOrchestrator != null) {
            materialBackOrchestrator.b();
        }
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public final void onStart() {
        super.onStart();
        BottomSheetBehavior bottomSheetBehavior = this.j;
        if (bottomSheetBehavior != null && bottomSheetBehavior.R == 5) {
            bottomSheetBehavior.e(4);
        }
    }

    @Override // android.app.Dialog
    public final void setCancelable(boolean z) {
        MaterialBackOrchestrator materialBackOrchestrator;
        super.setCancelable(z);
        if (this.n != z) {
            this.n = z;
            BottomSheetBehavior bottomSheetBehavior = this.j;
            if (bottomSheetBehavior != null) {
                bottomSheetBehavior.K(z);
            }
            if (getWindow() != null && (materialBackOrchestrator = this.s) != null) {
                if (this.n) {
                    materialBackOrchestrator.a(false);
                } else {
                    materialBackOrchestrator.b();
                }
            }
        }
    }

    @Override // android.app.Dialog
    public final void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.n) {
            this.n = true;
        }
        this.o = z;
        this.p = true;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(int i) {
        super.setContentView(g(null, i, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(View view) {
        super.setContentView(g(view, 0, null));
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(g(view, 0, layoutParams));
    }
}
