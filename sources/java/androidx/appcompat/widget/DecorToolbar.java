package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.Window;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.view.ViewPropertyAnimatorCompat;

@RestrictTo
/* loaded from: classes.dex */
public interface DecorToolbar {
    void a(Menu menu, MenuPresenter.Callback callback);

    boolean b();

    void c();

    void collapseActionView();

    boolean d();

    boolean e();

    boolean f();

    boolean g();

    Context getContext();

    CharSequence getTitle();

    void h();

    boolean i();

    void j(int i);

    void k();

    void l(CharSequence charSequence);

    void m(int i);

    ViewPropertyAnimatorCompat n(int i, long j);

    void o(int i);

    void p(int i);

    int q();

    void r();

    void s();

    void setIcon(int i);

    void setIcon(Drawable drawable);

    void setTitle(CharSequence charSequence);

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);

    void t(boolean z);
}
