package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.ColorInt;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.time.DurationKt;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup implements MenuHost {
    public final int A;
    public CharSequence B;
    public CharSequence C;
    public ColorStateList D;
    public ColorStateList E;
    public boolean F;
    public boolean G;
    public final ArrayList H;
    public final ArrayList I;
    public final int[] J;
    public final MenuHostHelper K;
    public ArrayList L;
    public OnMenuItemClickListener M;
    public final ActionMenuView.OnMenuItemClickListener N;
    public ToolbarWidgetWrapper O;
    public ActionMenuPresenter P;
    public ExpandedActionViewMenuPresenter Q;
    public MenuPresenter.Callback R;
    public MenuBuilder.Callback S;
    public boolean T;
    public OnBackInvokedCallback U;
    public OnBackInvokedDispatcher V;
    public boolean W;
    public final Runnable a0;

    /* renamed from: c, reason: collision with root package name */
    public ActionMenuView f333c;
    public AppCompatTextView f;
    public AppCompatTextView g;
    public AppCompatImageButton h;
    public AppCompatImageView i;
    public final Drawable j;
    public final CharSequence k;
    public AppCompatImageButton l;
    public View m;
    public Context n;
    public int o;
    public int p;
    public int q;
    public final int r;
    public final int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public RtlSpacingHelper x;
    public int y;
    public int z;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api33Impl {
        @Nullable
        @DoNotInline
        public static OnBackInvokedDispatcher a(@NonNull View view) {
            return view.findOnBackInvokedDispatcher();
        }

        @NonNull
        @DoNotInline
        public static OnBackInvokedCallback b(@NonNull final Runnable runnable) {
            Objects.requireNonNull(runnable);
            return new OnBackInvokedCallback() { // from class: androidx.appcompat.widget.b
                public final void onBackInvoked() {
                    runnable.run();
                }
            };
        }

        @DoNotInline
        public static void c(@NonNull Object obj, @NonNull Object obj2) {
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(DurationKt.NANOS_IN_MILLIS, (OnBackInvokedCallback) obj2);
        }

        @DoNotInline
        public static void d(@NonNull Object obj, @NonNull Object obj2) {
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }
    }

    /* loaded from: classes.dex */
    public class ExpandedActionViewMenuPresenter implements MenuPresenter {

        /* renamed from: c, reason: collision with root package name */
        public MenuBuilder f338c;
        public MenuItemImpl f;

        public ExpandedActionViewMenuPresenter() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final void c(MenuBuilder menuBuilder, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final void d(boolean z) {
            if (this.f != null) {
                MenuBuilder menuBuilder = this.f338c;
                if (menuBuilder != null) {
                    int size = menuBuilder.f.size();
                    for (int i = 0; i < size; i++) {
                        if (this.f338c.getItem(i) == this.f) {
                            return;
                        }
                    }
                }
                g(this.f);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final boolean e() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final boolean g(MenuItemImpl menuItemImpl) {
            Toolbar toolbar = Toolbar.this;
            KeyEvent.Callback callback = toolbar.m;
            if (callback instanceof CollapsibleActionView) {
                ((CollapsibleActionView) callback).onActionViewCollapsed();
            }
            toolbar.removeView(toolbar.m);
            toolbar.removeView(toolbar.l);
            toolbar.m = null;
            ArrayList arrayList = toolbar.I;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                toolbar.addView((View) arrayList.get(size));
            }
            arrayList.clear();
            this.f = null;
            toolbar.requestLayout();
            menuItemImpl.C = false;
            menuItemImpl.n.p(false);
            toolbar.y();
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final void h(Context context, MenuBuilder menuBuilder) {
            MenuItemImpl menuItemImpl;
            MenuBuilder menuBuilder2 = this.f338c;
            if (menuBuilder2 != null && (menuItemImpl = this.f) != null) {
                menuBuilder2.d(menuItemImpl);
            }
            this.f338c = menuBuilder;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final boolean j(SubMenuBuilder subMenuBuilder) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public final boolean k(MenuItemImpl menuItemImpl) {
            Toolbar toolbar = Toolbar.this;
            toolbar.c();
            ViewParent parent = toolbar.l.getParent();
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.l);
                }
                toolbar.addView(toolbar.l);
            }
            View actionView = menuItemImpl.getActionView();
            toolbar.m = actionView;
            this.f = menuItemImpl;
            ViewParent parent2 = actionView.getParent();
            if (parent2 != toolbar) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar.m);
                }
                LayoutParams h = Toolbar.h();
                h.f72a = (toolbar.r & 112) | 8388611;
                h.b = 2;
                toolbar.m.setLayoutParams(h);
                toolbar.addView(toolbar.m);
            }
            for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = toolbar.getChildAt(childCount);
                if (((LayoutParams) childAt.getLayoutParams()).b != 2 && childAt != toolbar.f333c) {
                    toolbar.removeViewAt(childCount);
                    toolbar.I.add(childAt);
                }
            }
            toolbar.requestLayout();
            menuItemImpl.C = true;
            menuItemImpl.n.p(false);
            KeyEvent.Callback callback = toolbar.m;
            if (callback instanceof CollapsibleActionView) {
                ((CollapsibleActionView) callback).onActionViewExpanded();
            }
            toolbar.y();
            return true;
        }
    }

    @RequiresApi
    @RestrictTo
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {

        /* renamed from: a, reason: collision with root package name */
        public int f339a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f340c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;

        public final void mapProperties(PropertyMapper propertyMapper) {
            this.f339a = propertyMapper.mapObject("collapseContentDescription", R.attr.collapseContentDescription);
            this.b = propertyMapper.mapObject("collapseIcon", R.attr.collapseIcon);
            this.f340c = propertyMapper.mapInt("contentInsetEnd", R.attr.contentInsetEnd);
            this.d = propertyMapper.mapInt("contentInsetEndWithActions", R.attr.contentInsetEndWithActions);
            this.e = propertyMapper.mapInt("contentInsetLeft", R.attr.contentInsetLeft);
            this.f = propertyMapper.mapInt("contentInsetRight", R.attr.contentInsetRight);
            this.g = propertyMapper.mapInt("contentInsetStart", R.attr.contentInsetStart);
            this.h = propertyMapper.mapInt("contentInsetStartWithNavigation", R.attr.contentInsetStartWithNavigation);
            this.i = propertyMapper.mapObject("logo", R.attr.logo);
            this.j = propertyMapper.mapObject("logoDescription", R.attr.logoDescription);
            this.k = propertyMapper.mapObject("menu", R.attr.menu);
            this.l = propertyMapper.mapObject("navigationContentDescription", R.attr.navigationContentDescription);
            this.m = propertyMapper.mapObject("navigationIcon", R.attr.navigationIcon);
            this.n = propertyMapper.mapResourceId("popupTheme", R.attr.popupTheme);
            this.o = propertyMapper.mapObject("subtitle", R.attr.subtitle);
            this.p = propertyMapper.mapObject("title", R.attr.title);
            this.q = propertyMapper.mapInt("titleMarginBottom", R.attr.titleMarginBottom);
            this.r = propertyMapper.mapInt("titleMarginEnd", R.attr.titleMarginEnd);
            this.s = propertyMapper.mapInt("titleMarginStart", R.attr.titleMarginStart);
            this.t = propertyMapper.mapInt("titleMarginTop", R.attr.titleMarginTop);
        }

        public final void readProperties(Object obj, PropertyReader propertyReader) {
            Toolbar toolbar = (Toolbar) obj;
            propertyReader.readObject(this.f339a, toolbar.getCollapseContentDescription());
            propertyReader.readObject(this.b, toolbar.getCollapseIcon());
            propertyReader.readInt(this.f340c, toolbar.getContentInsetEnd());
            propertyReader.readInt(this.d, toolbar.getContentInsetEndWithActions());
            propertyReader.readInt(this.e, toolbar.getContentInsetLeft());
            propertyReader.readInt(this.f, toolbar.getContentInsetRight());
            propertyReader.readInt(this.g, toolbar.getContentInsetStart());
            propertyReader.readInt(this.h, toolbar.getContentInsetStartWithNavigation());
            propertyReader.readObject(this.i, toolbar.getLogo());
            propertyReader.readObject(this.j, toolbar.getLogoDescription());
            propertyReader.readObject(this.k, toolbar.getMenu());
            propertyReader.readObject(this.l, toolbar.getNavigationContentDescription());
            propertyReader.readObject(this.m, toolbar.getNavigationIcon());
            propertyReader.readResourceId(this.n, toolbar.getPopupTheme());
            propertyReader.readObject(this.o, toolbar.getSubtitle());
            propertyReader.readObject(this.p, toolbar.getTitle());
            propertyReader.readInt(this.q, toolbar.getTitleMarginBottom());
            propertyReader.readInt(this.r, toolbar.getTitleMarginEnd());
            propertyReader.readInt(this.s, toolbar.getTitleMarginStart());
            propertyReader.readInt(this.t, toolbar.getTitleMarginTop());
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ActionBar.LayoutParams {
        public int b;
    }

    /* loaded from: classes.dex */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public int g;
        public boolean h;

        /* renamed from: androidx.appcompat.widget.Toolbar$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            boolean z;
            this.g = parcel.readInt();
            if (parcel.readInt() != 0) {
                z = true;
            } else {
                z = false;
            }
            this.h = z;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h ? 1 : 0);
        }
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.toolbarStyle);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i = 0; i < menu.size(); i++) {
            arrayList.add(menu.getItem(i));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new SupportMenuInflater(getContext());
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.Toolbar$LayoutParams, androidx.appcompat.app.ActionBar$LayoutParams, android.view.ViewGroup$MarginLayoutParams] */
    public static LayoutParams h() {
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.b = 0;
        marginLayoutParams.f72a = 8388627;
        return marginLayoutParams;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.appcompat.widget.Toolbar$LayoutParams, androidx.appcompat.app.ActionBar$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.appcompat.widget.Toolbar$LayoutParams, androidx.appcompat.app.ActionBar$LayoutParams, android.view.ViewGroup$MarginLayoutParams] */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.appcompat.widget.Toolbar$LayoutParams, androidx.appcompat.app.ActionBar$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.appcompat.widget.Toolbar$LayoutParams, androidx.appcompat.app.ActionBar$LayoutParams] */
    public static LayoutParams i(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            ?? layoutParams3 = new ActionBar.LayoutParams((ActionBar.LayoutParams) layoutParams2);
            layoutParams3.b = 0;
            layoutParams3.b = layoutParams2.b;
            return layoutParams3;
        }
        if (layoutParams instanceof ActionBar.LayoutParams) {
            ?? layoutParams4 = new ActionBar.LayoutParams((ActionBar.LayoutParams) layoutParams);
            layoutParams4.b = 0;
            return layoutParams4;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            ?? layoutParams5 = new ActionBar.LayoutParams(marginLayoutParams);
            layoutParams5.b = 0;
            ((ViewGroup.MarginLayoutParams) layoutParams5).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams5).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams5).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) layoutParams5).bottomMargin = marginLayoutParams.bottomMargin;
            return layoutParams5;
        }
        ?? layoutParams6 = new ActionBar.LayoutParams(layoutParams);
        layoutParams6.b = 0;
        return layoutParams6;
    }

    public static int k(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    @Override // androidx.core.view.MenuHost
    public final void I(MenuProvider menuProvider) {
        MenuHostHelper menuHostHelper = this.K;
        menuHostHelper.b.add(menuProvider);
        menuHostHelper.f778a.run();
    }

    public final void a(int i, ArrayList arrayList) {
        boolean z;
        if (getLayoutDirection() == 1) {
            z = true;
        } else {
            z = false;
        }
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        arrayList.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.b == 0 && w(childAt)) {
                    int i3 = layoutParams.f72a;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i3, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt2 = getChildAt(i4);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.b == 0 && w(childAt2)) {
                int i5 = layoutParams2.f72a;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i5, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    public final void b(View view, boolean z) {
        LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams = h();
        } else if (!checkLayoutParams(layoutParams2)) {
            layoutParams = i(layoutParams2);
        } else {
            layoutParams = (LayoutParams) layoutParams2;
        }
        layoutParams.b = 1;
        if (z && this.m != null) {
            view.setLayoutParams(layoutParams);
            this.I.add(view);
        } else {
            addView(view, layoutParams);
        }
    }

    public final void c() {
        if (this.l == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.l = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.j);
            this.l.setContentDescription(this.k);
            LayoutParams h = h();
            h.f72a = (this.r & 112) | 8388611;
            h.b = 2;
            this.l.setLayoutParams(h);
            this.l.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.Toolbar.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MenuItemImpl menuItemImpl;
                    ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = Toolbar.this.Q;
                    if (expandedActionViewMenuPresenter == null) {
                        menuItemImpl = null;
                    } else {
                        menuItemImpl = expandedActionViewMenuPresenter.f;
                    }
                    if (menuItemImpl != null) {
                        menuItemImpl.collapseActionView();
                    }
                }
            });
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams)) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.RtlSpacingHelper, java.lang.Object] */
    public final void d() {
        if (this.x == null) {
            ?? obj = new Object();
            obj.f316a = 0;
            obj.b = 0;
            obj.f317c = IntCompanionObject.MIN_VALUE;
            obj.d = IntCompanionObject.MIN_VALUE;
            obj.e = 0;
            obj.f = 0;
            obj.g = false;
            obj.h = false;
            this.x = obj;
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.f333c;
        if (actionMenuView.t == null) {
            MenuBuilder menuBuilder = (MenuBuilder) actionMenuView.getMenu();
            if (this.Q == null) {
                this.Q = new ExpandedActionViewMenuPresenter();
            }
            this.f333c.setExpandedActionViewsExclusive(true);
            menuBuilder.b(this.Q, this.n);
            y();
        }
    }

    public final void f() {
        if (this.f333c == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f333c = actionMenuView;
            actionMenuView.setPopupTheme(this.o);
            this.f333c.setOnMenuItemClickListener(this.N);
            ActionMenuView actionMenuView2 = this.f333c;
            MenuPresenter.Callback callback = this.R;
            MenuBuilder.Callback callback2 = new MenuBuilder.Callback() { // from class: androidx.appcompat.widget.Toolbar.3
                @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
                public final boolean a(MenuBuilder menuBuilder, MenuItem menuItem) {
                    return false;
                }

                @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
                public final void b(MenuBuilder menuBuilder) {
                    Toolbar toolbar = Toolbar.this;
                    ActionMenuPresenter actionMenuPresenter = toolbar.f333c.x;
                    if (actionMenuPresenter == null || !actionMenuPresenter.n()) {
                        Iterator it = toolbar.K.b.iterator();
                        while (it.hasNext()) {
                            ((MenuProvider) it.next()).d(menuBuilder);
                        }
                    }
                    MenuBuilder.Callback callback3 = toolbar.S;
                    if (callback3 != null) {
                        callback3.b(menuBuilder);
                    }
                }
            };
            actionMenuView2.y = callback;
            actionMenuView2.z = callback2;
            LayoutParams h = h();
            h.f72a = (this.r & 112) | 8388613;
            this.f333c.setLayoutParams(h);
            b(this.f333c, false);
        }
    }

    public final void g() {
        if (this.h == null) {
            this.h = new AppCompatImageButton(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            LayoutParams h = h();
            h.f72a = (this.r & 112) | 8388611;
            this.h.setLayoutParams(h);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    @Nullable
    public CharSequence getCollapseContentDescription() {
        AppCompatImageButton appCompatImageButton = this.l;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getContentDescription();
        }
        return null;
    }

    @Nullable
    public Drawable getCollapseIcon() {
        AppCompatImageButton appCompatImageButton = this.l;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        RtlSpacingHelper rtlSpacingHelper = this.x;
        if (rtlSpacingHelper != null) {
            if (rtlSpacingHelper.g) {
                return rtlSpacingHelper.f316a;
            }
            return rtlSpacingHelper.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.z;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        return getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        RtlSpacingHelper rtlSpacingHelper = this.x;
        if (rtlSpacingHelper != null) {
            return rtlSpacingHelper.f316a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        RtlSpacingHelper rtlSpacingHelper = this.x;
        if (rtlSpacingHelper != null) {
            return rtlSpacingHelper.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        RtlSpacingHelper rtlSpacingHelper = this.x;
        if (rtlSpacingHelper != null) {
            if (rtlSpacingHelper.g) {
                return rtlSpacingHelper.b;
            }
            return rtlSpacingHelper.f316a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.y;
        if (i != Integer.MIN_VALUE) {
            return i;
        }
        return getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        MenuBuilder menuBuilder;
        ActionMenuView actionMenuView = this.f333c;
        if (actionMenuView != null && (menuBuilder = actionMenuView.t) != null && menuBuilder.hasVisibleItems()) {
            return Math.max(getContentInsetEnd(), Math.max(this.z, 0));
        }
        return getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        if (getLayoutDirection() == 1) {
            return getCurrentContentInsetEnd();
        }
        return getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        if (getLayoutDirection() == 1) {
            return getCurrentContentInsetStart();
        }
        return getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        if (getNavigationIcon() != null) {
            return Math.max(getContentInsetStart(), Math.max(this.y, 0));
        }
        return getContentInsetStart();
    }

    public Drawable getLogo() {
        AppCompatImageView appCompatImageView = this.i;
        if (appCompatImageView != null) {
            return appCompatImageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        AppCompatImageView appCompatImageView = this.i;
        if (appCompatImageView != null) {
            return appCompatImageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.f333c.getMenu();
    }

    @Nullable
    @VisibleForTesting
    public View getNavButtonView() {
        return this.h;
    }

    @Nullable
    public CharSequence getNavigationContentDescription() {
        AppCompatImageButton appCompatImageButton = this.h;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getContentDescription();
        }
        return null;
    }

    @Nullable
    public Drawable getNavigationIcon() {
        AppCompatImageButton appCompatImageButton = this.h;
        if (appCompatImageButton != null) {
            return appCompatImageButton.getDrawable();
        }
        return null;
    }

    public ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.P;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        e();
        return this.f333c.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.n;
    }

    @StyleRes
    public int getPopupTheme() {
        return this.o;
    }

    public CharSequence getSubtitle() {
        return this.C;
    }

    @Nullable
    @VisibleForTesting
    public final TextView getSubtitleTextView() {
        return this.g;
    }

    public CharSequence getTitle() {
        return this.B;
    }

    public int getTitleMarginBottom() {
        return this.w;
    }

    public int getTitleMarginEnd() {
        return this.u;
    }

    public int getTitleMarginStart() {
        return this.t;
    }

    public int getTitleMarginTop() {
        return this.v;
    }

    @Nullable
    @VisibleForTesting
    public final TextView getTitleTextView() {
        return this.f;
    }

    @RestrictTo
    public DecorToolbar getWrapper() {
        if (this.O == null) {
            this.O = new ToolbarWidgetWrapper(this, true);
        }
        return this.O;
    }

    public final int j(View view, int i) {
        int i2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        if (i > 0) {
            i2 = (measuredHeight - i) / 2;
        } else {
            i2 = 0;
        }
        int i3 = layoutParams.f72a & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.A & 112;
        }
        if (i3 != 48) {
            if (i3 != 80) {
                int paddingTop = getPaddingTop();
                int paddingBottom = getPaddingBottom();
                int height = getHeight();
                int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
                int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                if (i4 < i5) {
                    i4 = i5;
                } else {
                    int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
                    int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    if (i6 < i7) {
                        i4 = Math.max(0, i4 - (i7 - i6));
                    }
                }
                return paddingTop + i4;
            }
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i2;
        }
        return getPaddingTop() - i2;
    }

    public final boolean m() {
        ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.Q;
        if (expandedActionViewMenuPresenter != null && expandedActionViewMenuPresenter.f != null) {
            return true;
        }
        return false;
    }

    public void n(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    @Override // androidx.core.view.MenuHost
    public final void o(MenuProvider menuProvider) {
        this.K.a(menuProvider);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        y();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.a0);
        y();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.G = false;
        }
        if (!this.G) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.G = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.G = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x028f A[LOOP:0: B:39:0x028d->B:40:0x028f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02a7 A[LOOP:1: B:43:0x02a5->B:44:0x02a7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02c7 A[LOOP:2: B:47:0x02c5->B:48:0x02c7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x031a A[LOOP:3: B:56:0x0318->B:57:0x031a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0218  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 811
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        char c2;
        Object[] objArr;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z = ViewUtils.f351a;
        int i10 = 0;
        if (getLayoutDirection() == 1) {
            objArr = true;
            c2 = 0;
        } else {
            c2 = 1;
            objArr = false;
        }
        if (w(this.h)) {
            v(this.h, i, 0, i2, this.s);
            i3 = k(this.h) + this.h.getMeasuredWidth();
            i4 = Math.max(0, l(this.h) + this.h.getMeasuredHeight());
            i5 = View.combineMeasuredStates(0, this.h.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (w(this.l)) {
            v(this.l, i, 0, i2, this.s);
            i3 = k(this.l) + this.l.getMeasuredWidth();
            i4 = Math.max(i4, l(this.l) + this.l.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.l.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i3);
        int max2 = Math.max(0, currentContentInsetStart - i3);
        Object[] objArr2 = objArr;
        int[] iArr = this.J;
        iArr[objArr2 == true ? 1 : 0] = max2;
        if (w(this.f333c)) {
            v(this.f333c, i, max, i2, this.s);
            i6 = k(this.f333c) + this.f333c.getMeasuredWidth();
            i4 = Math.max(i4, l(this.f333c) + this.f333c.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.f333c.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max3 = max + Math.max(currentContentInsetEnd, i6);
        iArr[c2] = Math.max(0, currentContentInsetEnd - i6);
        if (w(this.m)) {
            max3 += u(this.m, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, l(this.m) + this.m.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.m.getMeasuredState());
        }
        if (w(this.i)) {
            max3 += u(this.i, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, l(this.i) + this.i.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.i.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (((LayoutParams) childAt.getLayoutParams()).b == 0 && w(childAt)) {
                max3 += u(childAt, i, max3, i2, 0, iArr);
                int max4 = Math.max(i4, l(childAt) + childAt.getMeasuredHeight());
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
                i4 = max4;
            } else {
                max3 = max3;
            }
        }
        int i12 = max3;
        int i13 = this.v + this.w;
        int i14 = this.t + this.u;
        if (w(this.f)) {
            u(this.f, i, i12 + i14, i2, i13, iArr);
            int k = k(this.f) + this.f.getMeasuredWidth();
            i7 = l(this.f) + this.f.getMeasuredHeight();
            i8 = View.combineMeasuredStates(i5, this.f.getMeasuredState());
            i9 = k;
        } else {
            i7 = 0;
            i8 = i5;
            i9 = 0;
        }
        if (w(this.g)) {
            i9 = Math.max(i9, u(this.g, i, i12 + i14, i2, i13 + i7, iArr));
            i7 += l(this.g) + this.g.getMeasuredHeight();
            i8 = View.combineMeasuredStates(i8, this.g.getMeasuredState());
        }
        int max5 = Math.max(i4, i7);
        int paddingRight = getPaddingRight() + getPaddingLeft() + i12 + i9;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + max5;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & i8);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, i8 << 16);
        if (this.T) {
            int childCount2 = getChildCount();
            for (int i15 = 0; i15 < childCount2; i15++) {
                View childAt2 = getChildAt(i15);
                if (!w(childAt2) || childAt2.getMeasuredWidth() <= 0 || childAt2.getMeasuredHeight() <= 0) {
                }
            }
            setMeasuredDimension(resolveSizeAndState, i10);
        }
        i10 = resolveSizeAndState2;
        setMeasuredDimension(resolveSizeAndState, i10);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuBuilder menuBuilder;
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f936c);
        ActionMenuView actionMenuView = this.f333c;
        if (actionMenuView != null) {
            menuBuilder = actionMenuView.t;
        } else {
            menuBuilder = null;
        }
        int i = savedState.g;
        if (i != 0 && this.Q != null && menuBuilder != null && (findItem = menuBuilder.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (savedState.h) {
            Runnable runnable = this.a0;
            removeCallbacks(runnable);
            post(runnable);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        d();
        RtlSpacingHelper rtlSpacingHelper = this.x;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (z == rtlSpacingHelper.g) {
            return;
        }
        rtlSpacingHelper.g = z;
        if (rtlSpacingHelper.h) {
            if (z) {
                int i2 = rtlSpacingHelper.d;
                if (i2 == Integer.MIN_VALUE) {
                    i2 = rtlSpacingHelper.e;
                }
                rtlSpacingHelper.f316a = i2;
                int i3 = rtlSpacingHelper.f317c;
                if (i3 == Integer.MIN_VALUE) {
                    i3 = rtlSpacingHelper.f;
                }
                rtlSpacingHelper.b = i3;
                return;
            }
            int i4 = rtlSpacingHelper.f317c;
            if (i4 == Integer.MIN_VALUE) {
                i4 = rtlSpacingHelper.e;
            }
            rtlSpacingHelper.f316a = i4;
            int i5 = rtlSpacingHelper.d;
            if (i5 == Integer.MIN_VALUE) {
                i5 = rtlSpacingHelper.f;
            }
            rtlSpacingHelper.b = i5;
            return;
        }
        rtlSpacingHelper.f316a = rtlSpacingHelper.e;
        rtlSpacingHelper.b = rtlSpacingHelper.f;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, androidx.customview.view.AbsSavedState, androidx.appcompat.widget.Toolbar$SavedState] */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        boolean z;
        ActionMenuPresenter actionMenuPresenter;
        MenuItemImpl menuItemImpl;
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        ExpandedActionViewMenuPresenter expandedActionViewMenuPresenter = this.Q;
        if (expandedActionViewMenuPresenter != null && (menuItemImpl = expandedActionViewMenuPresenter.f) != null) {
            absSavedState.g = menuItemImpl.f179a;
        }
        ActionMenuView actionMenuView = this.f333c;
        if (actionMenuView != null && (actionMenuPresenter = actionMenuView.x) != null && actionMenuPresenter.n()) {
            z = true;
        } else {
            z = false;
        }
        absSavedState.h = z;
        return absSavedState;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.F = false;
        }
        if (!this.F) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.F = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.F = false;
        return true;
    }

    public final void p() {
        ArrayList arrayList = this.L;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            getMenu().removeItem(((MenuItem) obj).getItemId());
        }
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        MenuInflater menuInflater = getMenuInflater();
        Iterator it = this.K.b.iterator();
        while (it.hasNext()) {
            ((MenuProvider) it.next()).c(menu, menuInflater);
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.L = currentMenuItems2;
    }

    public final boolean q(View view) {
        if (view.getParent() != this && !this.I.contains(view)) {
            return false;
        }
        return true;
    }

    public final boolean r() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f333c;
        if (actionMenuView != null && (actionMenuPresenter = actionMenuView.x) != null && actionMenuPresenter.n()) {
            return true;
        }
        return false;
    }

    public final int s(View view, int i, int i2, int[] iArr) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int j = j(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, j, max + measuredWidth, view.getMeasuredHeight() + j);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + max;
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.W != z) {
            this.W = z;
            y();
        }
    }

    public void setCollapseContentDescription(@StringRes int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseIcon(@DrawableRes int i) {
        setCollapseIcon(AppCompatResources.a(getContext(), i));
    }

    @RestrictTo
    public void setCollapsible(boolean z) {
        this.T = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = IntCompanionObject.MIN_VALUE;
        }
        if (i != this.z) {
            this.z = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = IntCompanionObject.MIN_VALUE;
        }
        if (i != this.y) {
            this.y = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(@DrawableRes int i) {
        setLogo(AppCompatResources.a(getContext(), i));
    }

    public void setLogoDescription(@StringRes int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setNavigationContentDescription(@StringRes int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationIcon(@DrawableRes int i) {
        setNavigationIcon(AppCompatResources.a(getContext(), i));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.h.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.M = onMenuItemClickListener;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        e();
        this.f333c.setOverflowIcon(drawable);
    }

    public void setPopupTheme(@StyleRes int i) {
        if (this.o != i) {
            this.o = i;
            if (i == 0) {
                this.n = getContext();
            } else {
                this.n = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(@StringRes int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitleTextColor(@ColorInt int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitle(@StringRes int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitleMarginBottom(int i) {
        this.w = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.u = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.t = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.v = i;
        requestLayout();
    }

    public void setTitleTextColor(@ColorInt int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public final int t(View view, int i, int i2, int[] iArr) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int j = j(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, j, max, view.getMeasuredHeight() + j);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    public final int u(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public final void v(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final boolean w(View view) {
        if (view != null && view.getParent() == this && view.getVisibility() != 8) {
            return true;
        }
        return false;
    }

    public final boolean x() {
        ActionMenuPresenter actionMenuPresenter;
        ActionMenuView actionMenuView = this.f333c;
        if (actionMenuView != null && (actionMenuPresenter = actionMenuView.x) != null && actionMenuPresenter.p()) {
            return true;
        }
        return false;
    }

    public final void y() {
        boolean z;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher a2 = Api33Impl.a(this);
            if (m() && a2 != null && isAttachedToWindow() && this.W) {
                z = true;
            } else {
                z = false;
            }
            if (z && this.V == null) {
                if (this.U == null) {
                    this.U = Api33Impl.b(new a(this, 0));
                }
                Api33Impl.c(a2, this.U);
                this.V = a2;
                return;
            }
            if (!z && (onBackInvokedDispatcher = this.V) != null) {
                Api33Impl.d(onBackInvokedDispatcher, this.U);
                this.V = null;
            }
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.A = 8388627;
        this.H = new ArrayList();
        this.I = new ArrayList();
        this.J = new int[2];
        this.K = new MenuHostHelper(new a(this, 1));
        this.L = new ArrayList();
        this.N = new ActionMenuView.OnMenuItemClickListener() { // from class: androidx.appcompat.widget.Toolbar.1
            @Override // androidx.appcompat.widget.ActionMenuView.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                Toolbar toolbar = Toolbar.this;
                Iterator it = toolbar.K.b.iterator();
                while (it.hasNext()) {
                    if (((MenuProvider) it.next()).a(menuItem)) {
                        return true;
                    }
                }
                OnMenuItemClickListener onMenuItemClickListener = toolbar.M;
                if (onMenuItemClickListener != null) {
                    return onMenuItemClickListener.onMenuItemClick(menuItem);
                }
                return false;
            }
        };
        this.a0 = new Runnable() { // from class: androidx.appcompat.widget.Toolbar.2
            @Override // java.lang.Runnable
            public final void run() {
                Toolbar.this.x();
            }
        };
        TintTypedArray e = TintTypedArray.e(getContext(), attributeSet, R.styleable.Toolbar, i);
        ViewCompat.y(this, context, R.styleable.Toolbar, attributeSet, e.b, i);
        int i2 = R.styleable.Toolbar_titleTextAppearance;
        TypedArray typedArray = e.b;
        this.p = typedArray.getResourceId(i2, 0);
        this.q = typedArray.getResourceId(R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.A = typedArray.getInteger(R.styleable.Toolbar_android_gravity, 8388627);
        this.r = typedArray.getInteger(R.styleable.Toolbar_buttonGravity, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(R.styleable.Toolbar_titleMargin, 0);
        dimensionPixelOffset = typedArray.hasValue(R.styleable.Toolbar_titleMargins) ? typedArray.getDimensionPixelOffset(R.styleable.Toolbar_titleMargins, dimensionPixelOffset) : dimensionPixelOffset;
        this.w = dimensionPixelOffset;
        this.v = dimensionPixelOffset;
        this.u = dimensionPixelOffset;
        this.t = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginStart, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.t = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginEnd, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.u = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginTop, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.v = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(R.styleable.Toolbar_titleMarginBottom, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.w = dimensionPixelOffset5;
        }
        this.s = typedArray.getDimensionPixelSize(R.styleable.Toolbar_maxButtonHeight, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStart, IntCompanionObject.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEnd, IntCompanionObject.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.Toolbar_contentInsetLeft, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(R.styleable.Toolbar_contentInsetRight, 0);
        d();
        RtlSpacingHelper rtlSpacingHelper = this.x;
        rtlSpacingHelper.h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            rtlSpacingHelper.e = dimensionPixelSize;
            rtlSpacingHelper.f316a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            rtlSpacingHelper.f = dimensionPixelSize2;
            rtlSpacingHelper.b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            rtlSpacingHelper.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.y = typedArray.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetStartWithNavigation, IntCompanionObject.MIN_VALUE);
        this.z = typedArray.getDimensionPixelOffset(R.styleable.Toolbar_contentInsetEndWithActions, IntCompanionObject.MIN_VALUE);
        this.j = e.b(R.styleable.Toolbar_collapseIcon);
        this.k = typedArray.getText(R.styleable.Toolbar_collapseContentDescription);
        CharSequence text = typedArray.getText(R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(R.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.n = getContext();
        setPopupTheme(typedArray.getResourceId(R.styleable.Toolbar_popupTheme, 0));
        Drawable b = e.b(R.styleable.Toolbar_navigationIcon);
        if (b != null) {
            setNavigationIcon(b);
        }
        CharSequence text3 = typedArray.getText(R.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable b2 = e.b(R.styleable.Toolbar_logo);
        if (b2 != null) {
            setLogo(b2);
        }
        CharSequence text4 = typedArray.getText(R.styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(R.styleable.Toolbar_titleTextColor)) {
            setTitleTextColor(e.a(R.styleable.Toolbar_titleTextColor));
        }
        if (typedArray.hasValue(R.styleable.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(e.a(R.styleable.Toolbar_subtitleTextColor));
        }
        if (typedArray.hasValue(R.styleable.Toolbar_menu)) {
            n(typedArray.getResourceId(R.styleable.Toolbar_menu, 0));
        }
        e.f();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.Toolbar$LayoutParams, androidx.appcompat.app.ActionBar$LayoutParams, android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(context, attributeSet);
        marginLayoutParams.f72a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBarLayout);
        marginLayoutParams.f72a = obtainStyledAttributes.getInt(R.styleable.ActionBarLayout_android_layout_gravity, 0);
        obtainStyledAttributes.recycle();
        marginLayoutParams.b = 0;
        return marginLayoutParams;
    }

    public void setCollapseContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        AppCompatImageButton appCompatImageButton = this.l;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            c();
            this.l.setImageDrawable(drawable);
        } else {
            AppCompatImageButton appCompatImageButton = this.l;
            if (appCompatImageButton != null) {
                appCompatImageButton.setImageDrawable(this.j);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.i == null) {
                this.i = new AppCompatImageView(getContext());
            }
            if (!q(this.i)) {
                b(this.i, true);
            }
        } else {
            AppCompatImageView appCompatImageView = this.i;
            if (appCompatImageView != null && q(appCompatImageView)) {
                removeView(this.i);
                this.I.remove(this.i);
            }
        }
        AppCompatImageView appCompatImageView2 = this.i;
        if (appCompatImageView2 != null) {
            appCompatImageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.i == null) {
            this.i = new AppCompatImageView(getContext());
        }
        AppCompatImageView appCompatImageView = this.i;
        if (appCompatImageView != null) {
            appCompatImageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        AppCompatImageButton appCompatImageButton = this.h;
        if (appCompatImageButton != null) {
            appCompatImageButton.setContentDescription(charSequence);
            TooltipCompat.a(this.h, charSequence);
        }
    }

    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            g();
            if (!q(this.h)) {
                b(this.h, true);
            }
        } else {
            AppCompatImageButton appCompatImageButton = this.h;
            if (appCompatImageButton != null && q(appCompatImageButton)) {
                removeView(this.h);
                this.I.remove(this.h);
            }
        }
        AppCompatImageButton appCompatImageButton2 = this.h;
        if (appCompatImageButton2 != null) {
            appCompatImageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.g == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                this.g = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.g.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.q;
                if (i != 0) {
                    this.g.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.E;
                if (colorStateList != null) {
                    this.g.setTextColor(colorStateList);
                }
            }
            if (!q(this.g)) {
                b(this.g, true);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.g;
            if (appCompatTextView2 != null && q(appCompatTextView2)) {
                removeView(this.g);
                this.I.remove(this.g);
            }
        }
        AppCompatTextView appCompatTextView3 = this.g;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.C = charSequence;
    }

    public void setSubtitleTextColor(@NonNull ColorStateList colorStateList) {
        this.E = colorStateList;
        AppCompatTextView appCompatTextView = this.g;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                this.f = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.p;
                if (i != 0) {
                    this.f.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.D;
                if (colorStateList != null) {
                    this.f.setTextColor(colorStateList);
                }
            }
            if (!q(this.f)) {
                b(this.f, true);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.f;
            if (appCompatTextView2 != null && q(appCompatTextView2)) {
                removeView(this.f);
                this.I.remove(this.f);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.B = charSequence;
    }

    public void setTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.D = colorStateList;
        AppCompatTextView appCompatTextView = this.f;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }
}
