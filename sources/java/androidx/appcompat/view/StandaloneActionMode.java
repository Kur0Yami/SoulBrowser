package androidx.appcompat.view;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

@RestrictTo
/* loaded from: classes.dex */
public class StandaloneActionMode extends ActionMode implements MenuBuilder.Callback {
    public Context g;
    public ActionBarContextView h;
    public ActionMode.Callback i;
    public WeakReference j;
    public boolean k;
    public MenuBuilder l;

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public final boolean a(MenuBuilder menuBuilder, MenuItem menuItem) {
        return this.i.c(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public final void b(MenuBuilder menuBuilder) {
        i();
        this.h.i();
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void c() {
        if (this.k) {
            return;
        }
        this.k = true;
        this.i.a(this);
    }

    @Override // androidx.appcompat.view.ActionMode
    public final View d() {
        WeakReference weakReference = this.j;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // androidx.appcompat.view.ActionMode
    public final MenuBuilder e() {
        return this.l;
    }

    @Override // androidx.appcompat.view.ActionMode
    public final MenuInflater f() {
        return new SupportMenuInflater(this.h.getContext());
    }

    @Override // androidx.appcompat.view.ActionMode
    public final CharSequence g() {
        return this.h.getSubtitle();
    }

    @Override // androidx.appcompat.view.ActionMode
    public final CharSequence h() {
        return this.h.getTitle();
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void i() {
        this.i.b(this, this.l);
    }

    @Override // androidx.appcompat.view.ActionMode
    public final boolean j() {
        return this.h.w;
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void k(View view) {
        WeakReference weakReference;
        this.h.setCustomView(view);
        if (view != null) {
            weakReference = new WeakReference(view);
        } else {
            weakReference = null;
        }
        this.j = weakReference;
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void l(int i) {
        m(this.g.getString(i));
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void m(CharSequence charSequence) {
        this.h.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void n(int i) {
        o(this.g.getString(i));
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void o(CharSequence charSequence) {
        this.h.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.ActionMode
    public final void p(boolean z) {
        this.f = z;
        this.h.setTitleOptional(z);
    }
}
