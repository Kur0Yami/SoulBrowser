package androidx.core.view;

import android.content.Context;
import android.util.Log;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ShareActionProvider;

/* loaded from: classes.dex */
public abstract class ActionProvider {

    /* renamed from: a, reason: collision with root package name */
    public final Context f762a;
    public SubUiVisibilityListener b;

    /* renamed from: c, reason: collision with root package name */
    public VisibilityListener f763c;

    @RestrictTo
    /* loaded from: classes.dex */
    public interface SubUiVisibilityListener {
    }

    /* loaded from: classes.dex */
    public interface VisibilityListener {
    }

    public ActionProvider(Context context) {
        this.f762a = context;
    }

    public boolean a() {
        return this instanceof ShareActionProvider;
    }

    public boolean b() {
        return true;
    }

    public abstract View c();

    public View d(MenuItemImpl menuItemImpl) {
        return c();
    }

    public boolean e() {
        return false;
    }

    public boolean g() {
        return false;
    }

    public void h(VisibilityListener visibilityListener) {
        if (this.f763c != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f763c = visibilityListener;
    }

    public void f(SubMenuBuilder subMenuBuilder) {
    }
}
