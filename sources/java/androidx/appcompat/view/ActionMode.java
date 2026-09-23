package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.MenuBuilder;

/* loaded from: classes.dex */
public abstract class ActionMode {

    /* renamed from: c, reason: collision with root package name */
    public Object f143c;
    public boolean f;

    /* loaded from: classes.dex */
    public interface Callback {
        void a(ActionMode actionMode);

        boolean b(ActionMode actionMode, Menu menu);

        boolean c(ActionMode actionMode, MenuItem menuItem);
    }

    public abstract void c();

    public abstract View d();

    public abstract MenuBuilder e();

    public abstract MenuInflater f();

    public abstract CharSequence g();

    public abstract CharSequence h();

    public abstract void i();

    public boolean j() {
        return false;
    }

    public abstract void k(View view);

    public abstract void l(int i);

    public abstract void m(CharSequence charSequence);

    public abstract void n(int i);

    public abstract void o(CharSequence charSequence);

    public void p(boolean z) {
        this.f = z;
    }
}
