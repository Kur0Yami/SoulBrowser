package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.TintTypedArray;

@RestrictTo
/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements MenuBuilder.ItemInvoker, MenuView, AdapterView.OnItemClickListener {
    public static final int[] f = {R.attr.background, R.attr.divider};

    /* renamed from: c, reason: collision with root package name */
    public MenuBuilder f171c;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        TintTypedArray e = TintTypedArray.e(context, attributeSet, f, R.attr.listViewStyle);
        TypedArray typedArray = e.b;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(e.b(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(e.b(1));
        }
        e.f();
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.ItemInvoker
    public final boolean a(MenuItemImpl menuItemImpl) {
        return this.f171c.q(menuItemImpl, null, 0);
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public final void b(MenuBuilder menuBuilder) {
        this.f171c = menuBuilder;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        a((MenuItemImpl) getAdapter().getItem(i));
    }
}
