package androidx.core.view;

import android.R;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import androidx.annotation.RequiresApi;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class SoftwareKeyboardControllerCompat {

    /* renamed from: a, reason: collision with root package name */
    public final Impl20 f786a;

    /* loaded from: classes.dex */
    public static class Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl20 extends Impl {

        /* renamed from: a, reason: collision with root package name */
        public final View f787a;

        public Impl20(View view) {
            this.f787a = view;
        }

        public void a() {
            View view = this.f787a;
            if (view != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        }

        public void b() {
            View view;
            View view2 = this.f787a;
            if (view2 != null) {
                if (!view2.isInEditMode() && !view2.onCheckIsTextEditor()) {
                    view = view2.getRootView().findFocus();
                } else {
                    view2.requestFocus();
                    view = view2;
                }
                if (view == null) {
                    view = view2.getRootView().findViewById(R.id.content);
                }
                if (view != null && view.hasWindowFocus()) {
                    view.post(new c(view, 0));
                }
            }
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl30 extends Impl20 {
        public View b;

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.Impl20
        public final void a() {
            WindowInsetsController windowInsetsController;
            View view = this.b;
            if (view != null) {
                windowInsetsController = view.getWindowInsetsController();
            } else {
                windowInsetsController = null;
            }
            if (windowInsetsController != null) {
                final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListener = new WindowInsetsController.OnControllableInsetsChangedListener() { // from class: androidx.core.view.d
                    @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
                    public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController2, int i) {
                        boolean z;
                        AtomicBoolean atomicBoolean2 = atomicBoolean;
                        if ((i & 8) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        atomicBoolean2.set(z);
                    }
                };
                windowInsetsController.addOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
                if (!atomicBoolean.get() && view != null) {
                    ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
                }
                windowInsetsController.removeOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
                windowInsetsController.hide(WindowInsets.Type.ime());
                return;
            }
            super.a();
        }

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.Impl20
        public final void b() {
            WindowInsetsController windowInsetsController;
            View view = this.b;
            if (view != null && Build.VERSION.SDK_INT < 33) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).isActive();
            }
            if (view != null) {
                windowInsetsController = view.getWindowInsetsController();
            } else {
                windowInsetsController = null;
            }
            if (windowInsetsController != null) {
                windowInsetsController.show(WindowInsets.Type.ime());
            }
            super.b();
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.core.view.SoftwareKeyboardControllerCompat$Impl20, androidx.core.view.SoftwareKeyboardControllerCompat$Impl30] */
    public SoftwareKeyboardControllerCompat(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            ?? impl20 = new Impl20(view);
            impl20.b = view;
            this.f786a = impl20;
            return;
        }
        this.f786a = new Impl20(view);
    }
}
