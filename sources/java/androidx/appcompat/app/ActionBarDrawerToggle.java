package androidx.appcompat.app;

import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;

/* loaded from: classes.dex */
public class ActionBarDrawerToggle implements DrawerLayout.DrawerListener {

    /* renamed from: androidx.appcompat.app.ActionBarDrawerToggle$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public interface Delegate {
    }

    /* loaded from: classes.dex */
    public interface DelegateProvider {
    }

    /* loaded from: classes.dex */
    public static class FrameworkActionBarDelegate implements Delegate {
    }

    /* loaded from: classes.dex */
    public static class ToolbarCompatDelegate implements Delegate {
    }

    @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
    public final void a() {
        throw null;
    }
}
