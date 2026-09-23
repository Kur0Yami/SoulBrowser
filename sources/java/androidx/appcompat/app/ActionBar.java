package androidx.appcompat.app;

import android.content.Context;
import android.view.KeyEvent;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.ActionMode;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public abstract class ActionBar {

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface DisplayOptions {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface NavigationMode {
    }

    /* loaded from: classes.dex */
    public interface OnMenuVisibilityListener {
        void a();
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface OnNavigationListener {
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static abstract class Tab {
    }

    @Deprecated
    /* loaded from: classes.dex */
    public interface TabListener {
    }

    public boolean e() {
        return false;
    }

    public boolean f() {
        return false;
    }

    public void g(boolean z) {
    }

    public abstract int h();

    public Context i() {
        return null;
    }

    public boolean j() {
        return false;
    }

    public void l() {
    }

    public boolean m(int i, KeyEvent keyEvent) {
        return false;
    }

    public boolean n(KeyEvent keyEvent) {
        return false;
    }

    public boolean o() {
        return false;
    }

    public void p(boolean z) {
    }

    public abstract void q(boolean z);

    public void r(int i) {
    }

    public void s(boolean z) {
    }

    public abstract void t(String str);

    public abstract void u(String str);

    public void v(CharSequence charSequence) {
    }

    public ActionMode w(ActionMode.Callback callback) {
        return null;
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f72a;

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f72a = 0;
            this.f72a = layoutParams.f72a;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f72a = 0;
        }
    }

    public void k() {
    }
}
