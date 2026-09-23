package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.BaseMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPopup;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.ActionProvider;
import java.util.ArrayList;

/* loaded from: classes.dex */
class ActionMenuPresenter extends BaseMenuPresenter implements ActionProvider.SubUiVisibilityListener {
    public final PopupPresenterCallback A;
    public OverflowMenuButton m;
    public Drawable n;
    public boolean o;
    public boolean p;
    public boolean q;
    public int r;
    public int s;
    public int t;
    public boolean u;
    public final SparseBooleanArray v;
    public OverflowPopup w;
    public ActionButtonSubmenu x;
    public OpenOverflowRunnable y;
    public ActionMenuPopupCallback z;

    /* loaded from: classes.dex */
    public class ActionButtonSubmenu extends MenuPopupHelper {
        public ActionButtonSubmenu(Context context, SubMenuBuilder subMenuBuilder, View view) {
            super(context, subMenuBuilder, view, false, R.attr.actionOverflowMenuStyle, 0);
            if ((subMenuBuilder.A.x & 32) != 32) {
                View view2 = ActionMenuPresenter.this.m;
                this.e = view2 == null ? (View) ActionMenuPresenter.this.l : view2;
            }
            PopupPresenterCallback popupPresenterCallback = ActionMenuPresenter.this.A;
            this.h = popupPresenterCallback;
            MenuPopup menuPopup = this.i;
            if (menuPopup != null) {
                menuPopup.f(popupPresenterCallback);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public final void c() {
            ActionMenuPresenter.this.x = null;
            super.c();
        }
    }

    /* loaded from: classes.dex */
    public class ActionMenuPopupCallback extends ActionMenuItemView.PopupCallback {
        public ActionMenuPopupCallback() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.PopupCallback
        public final ShowableListMenu a() {
            ActionButtonSubmenu actionButtonSubmenu = ActionMenuPresenter.this.x;
            if (actionButtonSubmenu != null) {
                return actionButtonSubmenu.a();
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    public class OpenOverflowRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final OverflowPopup f202c;

        public OpenOverflowRunnable(OverflowPopup overflowPopup) {
            this.f202c = overflowPopup;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MenuBuilder.Callback callback;
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            MenuBuilder menuBuilder = actionMenuPresenter.g;
            if (menuBuilder != null && (callback = menuBuilder.e) != null) {
                callback.b(menuBuilder);
            }
            View view = (View) actionMenuPresenter.l;
            if (view != null && view.getWindowToken() != null) {
                OverflowPopup overflowPopup = this.f202c;
                if (!overflowPopup.b()) {
                    if (overflowPopup.e != null) {
                        overflowPopup.e(0, 0, false, false);
                    }
                }
                actionMenuPresenter.w = overflowPopup;
            }
            actionMenuPresenter.y = null;
        }
    }

    /* loaded from: classes.dex */
    public class OverflowMenuButton extends AppCompatImageView implements ActionMenuView.ActionMenuChildView {
        public OverflowMenuButton(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            TooltipCompat.a(this, getContentDescription());
            setOnTouchListener(new ForwardingListener(this) { // from class: androidx.appcompat.widget.ActionMenuPresenter.OverflowMenuButton.1
                @Override // androidx.appcompat.widget.ForwardingListener
                public final ShowableListMenu b() {
                    OverflowPopup overflowPopup = ActionMenuPresenter.this.w;
                    if (overflowPopup == null) {
                        return null;
                    }
                    return overflowPopup.a();
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                public final boolean c() {
                    ActionMenuPresenter.this.p();
                    return true;
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                public final boolean d() {
                    ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                    if (actionMenuPresenter.y != null) {
                        return false;
                    }
                    actionMenuPresenter.m();
                    return true;
                }
            });
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public final boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public final boolean b() {
            return false;
        }

        @Override // android.view.View
        public final boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.p();
            return true;
        }

        @Override // android.widget.ImageView
        public final boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                background.setHotspotBounds(paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    /* loaded from: classes.dex */
    public class OverflowPopup extends MenuPopupHelper {
        public OverflowPopup(Context context, MenuBuilder menuBuilder, View view) {
            super(context, menuBuilder, view, true, R.attr.actionOverflowMenuStyle, 0);
            this.f = 8388613;
            PopupPresenterCallback popupPresenterCallback = ActionMenuPresenter.this.A;
            this.h = popupPresenterCallback;
            MenuPopup menuPopup = this.i;
            if (menuPopup != null) {
                menuPopup.f(popupPresenterCallback);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public final void c() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            MenuBuilder menuBuilder = actionMenuPresenter.g;
            if (menuBuilder != null) {
                menuBuilder.c(true);
            }
            actionMenuPresenter.w = null;
            super.c();
        }
    }

    /* loaded from: classes.dex */
    public class PopupPresenterCallback implements MenuPresenter.Callback {
        public PopupPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final void c(MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder instanceof SubMenuBuilder) {
                ((SubMenuBuilder) menuBuilder).z.k().c(false);
            }
            MenuPresenter.Callback callback = ActionMenuPresenter.this.i;
            if (callback != null) {
                callback.c(menuBuilder, z);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final boolean d(MenuBuilder menuBuilder) {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            if (menuBuilder == actionMenuPresenter.g) {
                return false;
            }
            int i = ((SubMenuBuilder) menuBuilder).A.f179a;
            MenuPresenter.Callback callback = actionMenuPresenter.i;
            if (callback == null) {
                return false;
            }
            return callback.d(menuBuilder);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public int f204c;

        /* renamed from: androidx.appcompat.widget.ActionMenuPresenter$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.appcompat.widget.ActionMenuPresenter$SavedState] */
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                ?? obj = new Object();
                obj.f204c = parcel.readInt();
                return obj;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f204c);
        }
    }

    public ActionMenuPresenter(Context context) {
        int i = R.layout.abc_action_menu_layout;
        int i2 = R.layout.abc_action_menu_item_layout;
        this.f162c = context;
        this.h = LayoutInflater.from(context);
        this.j = i;
        this.k = i2;
        this.v = new SparseBooleanArray();
        this.A = new PopupPresenterCallback();
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public final void a(MenuItemImpl menuItemImpl, MenuView.ItemView itemView) {
        itemView.c(menuItemImpl);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) itemView;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.l);
        if (this.z == null) {
            this.z = new ActionMenuPopupCallback();
        }
        actionMenuItemView.setPopupCallback(this.z);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public final boolean b(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.m) {
            return false;
        }
        viewGroup.removeViewAt(i);
        return true;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final void c(MenuBuilder menuBuilder, boolean z) {
        m();
        ActionButtonSubmenu actionButtonSubmenu = this.x;
        if (actionButtonSubmenu != null && actionButtonSubmenu.b()) {
            actionButtonSubmenu.i.dismiss();
        }
        super.c(menuBuilder, z);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final void d(boolean z) {
        ArrayList arrayList;
        super.d(z);
        ((View) this.l).requestLayout();
        MenuBuilder menuBuilder = this.g;
        boolean z2 = false;
        if (menuBuilder != null) {
            menuBuilder.i();
            ArrayList arrayList2 = menuBuilder.i;
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                ActionProvider actionProvider = ((MenuItemImpl) arrayList2.get(i)).A;
                if (actionProvider != null) {
                    actionProvider.b = this;
                }
            }
        }
        MenuBuilder menuBuilder2 = this.g;
        if (menuBuilder2 != null) {
            menuBuilder2.i();
            arrayList = menuBuilder2.j;
        } else {
            arrayList = null;
        }
        if (this.p && arrayList != null) {
            int size2 = arrayList.size();
            if (size2 == 1) {
                z2 = !((MenuItemImpl) arrayList.get(0)).C;
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        if (z2) {
            if (this.m == null) {
                this.m = new OverflowMenuButton(this.f162c);
            }
            ViewGroup viewGroup = (ViewGroup) this.m.getParent();
            if (viewGroup != this.l) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.m);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.l;
                OverflowMenuButton overflowMenuButton = this.m;
                actionMenuView.getClass();
                ActionMenuView.LayoutParams j = ActionMenuView.j();
                j.f205a = true;
                actionMenuView.addView(overflowMenuButton, j);
            }
        } else {
            OverflowMenuButton overflowMenuButton2 = this.m;
            if (overflowMenuButton2 != null) {
                Object parent = overflowMenuButton2.getParent();
                Object obj = this.l;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.m);
                }
            }
        }
        ((ActionMenuView) this.l).setOverflowReserved(this.p);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final boolean e() {
        int i;
        ArrayList arrayList;
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        ActionMenuPresenter actionMenuPresenter = this;
        MenuBuilder menuBuilder = actionMenuPresenter.g;
        if (menuBuilder != null) {
            arrayList = menuBuilder.l();
            i = arrayList.size();
        } else {
            i = 0;
            arrayList = null;
        }
        int i3 = actionMenuPresenter.t;
        int i4 = actionMenuPresenter.s;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.l;
        int i5 = 0;
        boolean z5 = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = 2;
            z = true;
            if (i5 >= i) {
                break;
            }
            MenuItemImpl menuItemImpl = (MenuItemImpl) arrayList.get(i5);
            int i8 = menuItemImpl.y;
            if ((i8 & 2) == 2) {
                i6++;
            } else if ((i8 & 1) == 1) {
                i7++;
            } else {
                z5 = true;
            }
            if (actionMenuPresenter.u && menuItemImpl.C) {
                i3 = 0;
            }
            i5++;
        }
        if (actionMenuPresenter.p && (z5 || i7 + i6 > i3)) {
            i3--;
        }
        int i9 = i3 - i6;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.v;
        sparseBooleanArray.clear();
        int i10 = 0;
        int i11 = 0;
        while (i10 < i) {
            MenuItemImpl menuItemImpl2 = (MenuItemImpl) arrayList.get(i10);
            int i12 = menuItemImpl2.y;
            if ((i12 & 2) == i2) {
                z2 = z;
            } else {
                z2 = false;
            }
            int i13 = menuItemImpl2.b;
            if (z2) {
                View i14 = actionMenuPresenter.i(menuItemImpl2, null, viewGroup);
                i14.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = i14.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                if (i13 != 0) {
                    sparseBooleanArray.put(i13, z);
                }
                menuItemImpl2.f(z);
            } else if ((i12 & 1) == z) {
                boolean z6 = sparseBooleanArray.get(i13);
                if ((i9 > 0 || z6) && i4 > 0) {
                    z3 = z;
                } else {
                    z3 = false;
                }
                if (z3) {
                    View i15 = actionMenuPresenter.i(menuItemImpl2, null, viewGroup);
                    i15.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = i15.getMeasuredWidth();
                    i4 -= measuredWidth2;
                    if (i11 == 0) {
                        i11 = measuredWidth2;
                    }
                    if (i4 + i11 > 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    z3 &= z4;
                }
                if (z3 && i13 != 0) {
                    sparseBooleanArray.put(i13, true);
                } else if (z6) {
                    sparseBooleanArray.put(i13, false);
                    for (int i16 = 0; i16 < i10; i16++) {
                        MenuItemImpl menuItemImpl3 = (MenuItemImpl) arrayList.get(i16);
                        if (menuItemImpl3.b == i13) {
                            if ((menuItemImpl3.x & 32) == 32) {
                                i9++;
                            }
                            menuItemImpl3.f(false);
                        }
                    }
                }
                if (z3) {
                    i9--;
                }
                menuItemImpl2.f(z3);
            } else {
                menuItemImpl2.f(false);
                i10++;
                i2 = 2;
                actionMenuPresenter = this;
                z = true;
            }
            i10++;
            i2 = 2;
            actionMenuPresenter = this;
            z = true;
        }
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.appcompat.view.ActionBarPolicy] */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final void h(Context context, MenuBuilder menuBuilder) {
        super.h(context, menuBuilder);
        Resources resources = context.getResources();
        ?? obj = new Object();
        obj.f142a = context;
        if (!this.q) {
            this.p = true;
        }
        this.r = context.getResources().getDisplayMetrics().widthPixels / 2;
        this.t = obj.a();
        int i = this.r;
        if (this.p) {
            if (this.m == null) {
                OverflowMenuButton overflowMenuButton = new OverflowMenuButton(this.f162c);
                this.m = overflowMenuButton;
                if (this.o) {
                    overflowMenuButton.setImageDrawable(this.n);
                    this.n = null;
                    this.o = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.m.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.m.getMeasuredWidth();
        } else {
            this.m = null;
        }
        this.s = i;
        float f = resources.getDisplayMetrics().density;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public final View i(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        int i;
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.e()) {
            actionView = super.i(menuItemImpl, view, viewGroup);
        }
        if (menuItemImpl.C) {
            i = 8;
        } else {
            i = 0;
        }
        actionView.setVisibility(i);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof ActionMenuView.LayoutParams)) {
            actionView.setLayoutParams(ActionMenuView.k(layoutParams));
        }
        return actionView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final boolean j(SubMenuBuilder subMenuBuilder) {
        boolean z;
        if (subMenuBuilder.hasVisibleItems()) {
            SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
            while (true) {
                MenuBuilder menuBuilder = subMenuBuilder2.z;
                if (menuBuilder == this.g) {
                    break;
                }
                subMenuBuilder2 = (SubMenuBuilder) menuBuilder;
            }
            MenuItemImpl menuItemImpl = subMenuBuilder2.A;
            ViewGroup viewGroup = (ViewGroup) this.l;
            View view = null;
            if (viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                int i = 0;
                while (true) {
                    if (i >= childCount) {
                        break;
                    }
                    View childAt = viewGroup.getChildAt(i);
                    if ((childAt instanceof MenuView.ItemView) && ((MenuView.ItemView) childAt).getItemData() == menuItemImpl) {
                        view = childAt;
                        break;
                    }
                    i++;
                }
            }
            if (view != null) {
                int i2 = subMenuBuilder.A.f179a;
                int size = subMenuBuilder.f.size();
                int i3 = 0;
                while (true) {
                    if (i3 < size) {
                        MenuItem item = subMenuBuilder.getItem(i3);
                        if (item.isVisible() && item.getIcon() != null) {
                            z = true;
                            break;
                        }
                        i3++;
                    } else {
                        z = false;
                        break;
                    }
                }
                ActionButtonSubmenu actionButtonSubmenu = new ActionButtonSubmenu(this.f, subMenuBuilder, view);
                this.x = actionButtonSubmenu;
                actionButtonSubmenu.d(z);
                ActionButtonSubmenu actionButtonSubmenu2 = this.x;
                if (!actionButtonSubmenu2.b()) {
                    if (actionButtonSubmenu2.e != null) {
                        actionButtonSubmenu2.e(0, 0, false, false);
                    } else {
                        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
                    }
                }
                super.j(subMenuBuilder);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public final boolean l(MenuItemImpl menuItemImpl) {
        if ((menuItemImpl.x & 32) == 32) {
            return true;
        }
        return false;
    }

    public final boolean m() {
        Object obj;
        OpenOverflowRunnable openOverflowRunnable = this.y;
        if (openOverflowRunnable != null && (obj = this.l) != null) {
            ((View) obj).removeCallbacks(openOverflowRunnable);
            this.y = null;
            return true;
        }
        OverflowPopup overflowPopup = this.w;
        if (overflowPopup != null) {
            if (overflowPopup.b()) {
                overflowPopup.i.dismiss();
            }
            return true;
        }
        return false;
    }

    public final boolean n() {
        OverflowPopup overflowPopup = this.w;
        if (overflowPopup != null && overflowPopup.b()) {
            return true;
        }
        return false;
    }

    public final void o(boolean z) {
        if (z) {
            super.j(null);
            return;
        }
        MenuBuilder menuBuilder = this.g;
        if (menuBuilder != null) {
            menuBuilder.c(false);
        }
    }

    public final boolean p() {
        MenuBuilder menuBuilder;
        if (this.p && !n() && (menuBuilder = this.g) != null && this.l != null && this.y == null) {
            menuBuilder.i();
            if (!menuBuilder.j.isEmpty()) {
                OpenOverflowRunnable openOverflowRunnable = new OpenOverflowRunnable(new OverflowPopup(this.f, this.g, this.m));
                this.y = openOverflowRunnable;
                ((View) this.l).post(openOverflowRunnable);
                return true;
            }
            return false;
        }
        return false;
    }
}
