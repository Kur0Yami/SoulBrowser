package androidx.appcompat.view.menu;

import android.content.Context;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public interface MenuPresenter {

    /* loaded from: classes.dex */
    public interface Callback {
        void c(MenuBuilder menuBuilder, boolean z);

        boolean d(MenuBuilder menuBuilder);
    }

    void c(MenuBuilder menuBuilder, boolean z);

    void d(boolean z);

    boolean e();

    void f(Callback callback);

    boolean g(MenuItemImpl menuItemImpl);

    void h(Context context, MenuBuilder menuBuilder);

    boolean j(SubMenuBuilder subMenuBuilder);

    boolean k(MenuItemImpl menuItemImpl);
}
