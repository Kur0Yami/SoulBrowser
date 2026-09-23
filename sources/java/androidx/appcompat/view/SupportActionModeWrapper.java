package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.view.menu.MenuWrapperICS;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import java.util.ArrayList;

@RestrictTo
/* loaded from: classes.dex */
public class SupportActionModeWrapper extends android.view.ActionMode {

    /* renamed from: a, reason: collision with root package name */
    public final Context f146a;
    public final ActionMode b;

    @RestrictTo
    /* loaded from: classes.dex */
    public static class CallbackWrapper implements ActionMode.Callback {

        /* renamed from: a, reason: collision with root package name */
        public final ActionMode.Callback f147a;
        public final Context b;

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f148c = new ArrayList();
        public final SimpleArrayMap d = new SimpleArrayMap(0);

        public CallbackWrapper(Context context, ActionMode.Callback callback) {
            this.b = context;
            this.f147a = callback;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final void a(ActionMode actionMode) {
            this.f147a.onDestroyActionMode(d(actionMode));
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean b(ActionMode actionMode, Menu menu) {
            SupportActionModeWrapper d = d(actionMode);
            SimpleArrayMap simpleArrayMap = this.d;
            Menu menu2 = (Menu) simpleArrayMap.get(menu);
            if (menu2 == null) {
                menu2 = new MenuWrapperICS(this.b, (SupportMenu) menu);
                simpleArrayMap.put(menu, menu2);
            }
            return this.f147a.onPrepareActionMode(d, menu2);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean c(ActionMode actionMode, MenuItem menuItem) {
            return this.f147a.onActionItemClicked(d(actionMode), new MenuItemWrapperICS(this.b, (SupportMenuItem) menuItem));
        }

        public final SupportActionModeWrapper d(ActionMode actionMode) {
            ArrayList arrayList = this.f148c;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                SupportActionModeWrapper supportActionModeWrapper = (SupportActionModeWrapper) arrayList.get(i);
                if (supportActionModeWrapper != null && supportActionModeWrapper.b == actionMode) {
                    return supportActionModeWrapper;
                }
            }
            SupportActionModeWrapper supportActionModeWrapper2 = new SupportActionModeWrapper(this.b, actionMode);
            arrayList.add(supportActionModeWrapper2);
            return supportActionModeWrapper2;
        }

        public final boolean e(ActionMode actionMode, Menu menu) {
            SupportActionModeWrapper d = d(actionMode);
            SimpleArrayMap simpleArrayMap = this.d;
            Menu menu2 = (Menu) simpleArrayMap.get(menu);
            if (menu2 == null) {
                menu2 = new MenuWrapperICS(this.b, (SupportMenu) menu);
                simpleArrayMap.put(menu, menu2);
            }
            return this.f147a.onCreateActionMode(d, menu2);
        }
    }

    public SupportActionModeWrapper(Context context, ActionMode actionMode) {
        this.f146a = context;
        this.b = actionMode;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.b.c();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.b.d();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new MenuWrapperICS(this.f146a, this.b.e());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.b.f();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.b.g();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.b.f143c;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.b.h();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.b.f;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.b.i();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.b.j();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.b.k(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.b.f143c = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z) {
        this.b.p(z);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i) {
        this.b.l(i);
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i) {
        this.b.n(i);
    }
}
