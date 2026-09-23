package androidx.appcompat.widget;

import android.view.Menu;
import android.view.Window;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuPresenter;

@RestrictTo
/* loaded from: classes.dex */
public interface DecorContentParent {
    void a(Menu menu, MenuPresenter.Callback callback);

    boolean b();

    void c();

    boolean d();

    boolean e();

    boolean f();

    boolean g();

    void h(int i);

    void i();

    void setWindowCallback(Window.Callback callback);

    void setWindowTitle(CharSequence charSequence);
}
