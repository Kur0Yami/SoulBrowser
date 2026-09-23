package androidx.appcompat.widget;

import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.Toolbar;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f353c;
    public final /* synthetic */ Toolbar f;

    public /* synthetic */ a(Toolbar toolbar, int i) {
        this.f353c = i;
        this.f = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MenuItemImpl menuItemImpl;
        switch (this.f353c) {
            case 0:
                Toolbar.ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.f.Q;
                if (expandedActionViewMenuPresenter == null) {
                    menuItemImpl = null;
                } else {
                    menuItemImpl = expandedActionViewMenuPresenter.f;
                }
                if (menuItemImpl != null) {
                    menuItemImpl.collapseActionView();
                    return;
                }
                return;
            default:
                this.f.p();
                return;
        }
    }
}
