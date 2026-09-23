package androidx.appcompat.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.view.ActionProvider;

@RestrictTo
/* loaded from: classes.dex */
public class ActivityChooserView extends ViewGroup implements ActivityChooserModel.ActivityChooserModelClient {

    /* renamed from: c, reason: collision with root package name */
    public ActionProvider f212c;
    public final DataSetObserver f;
    public final ViewTreeObserver.OnGlobalLayoutListener g;
    public ListPopupWindow h;
    public PopupWindow.OnDismissListener i;
    public boolean j;
    public int k;
    public boolean l;

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 extends View.AccessibilityDelegate {
        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setCanOpenPopup(true);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 extends ForwardingListener {
        @Override // androidx.appcompat.widget.ForwardingListener
        public final ShowableListMenu b() {
            throw null;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public final boolean c() {
            throw null;
        }

        @Override // androidx.appcompat.widget.ForwardingListener
        public final boolean d() {
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActivityChooserView$5, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass5 extends DataSetObserver {
        @Override // android.database.DataSetObserver
        public final void onChanged() {
            super.onChanged();
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public class ActivityChooserViewAdapter extends BaseAdapter {

        /* renamed from: c, reason: collision with root package name */
        public ActivityChooserModel f215c;
        public int f;
        public boolean g;
        public boolean h;
        public boolean i;

        @Override // android.widget.Adapter
        public final int getCount() {
            int size;
            ActivityChooserModel activityChooserModel = this.f215c;
            synchronized (activityChooserModel.f208a) {
                activityChooserModel.b();
                size = activityChooserModel.b.size();
            }
            if (!this.g) {
                this.f215c.d();
            }
            int min = Math.min(size, this.f);
            if (this.i) {
                return min + 1;
            }
            return min;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    return null;
                }
                throw new IllegalArgumentException();
            }
            if (!this.g) {
                this.f215c.d();
            }
            ActivityChooserModel activityChooserModel = this.f215c;
            synchronized (activityChooserModel.f208a) {
                activityChooserModel.b();
                throw null;
            }
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getItemViewType(int i) {
            if (this.i && i == getCount() - 1) {
                return 1;
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    if (view != null && view.getId() == 1) {
                        return view;
                    }
                    throw null;
                }
                throw new IllegalArgumentException();
            }
            if (view != null && view.getId() == R.id.list_item) {
                throw null;
            }
            throw null;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final int getViewTypeCount() {
            return 3;
        }
    }

    /* loaded from: classes.dex */
    public class Callbacks implements AdapterView.OnItemClickListener, View.OnClickListener, View.OnLongClickListener, PopupWindow.OnDismissListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (view != null) {
                if (view == null) {
                    throw null;
                }
                throw new IllegalArgumentException();
            }
            throw null;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            throw null;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
            int itemViewType = ((ActivityChooserViewAdapter) adapterView.getAdapter()).getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType == 1) {
                    throw null;
                }
                throw new IllegalArgumentException();
            }
            throw null;
        }

        @Override // android.view.View.OnLongClickListener
        public final boolean onLongClick(View view) {
            if (view == null) {
                throw null;
            }
            throw new IllegalArgumentException();
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class InnerLayout extends LinearLayout {

        /* renamed from: c, reason: collision with root package name */
        public static final int[] f216c = {android.R.attr.background};

        public InnerLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TintTypedArray tintTypedArray = new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, f216c));
            setBackgroundDrawable(tintTypedArray.b(0));
            tintTypedArray.f();
        }
    }

    public ActivityChooserView() {
        super(null, null, 0);
        this.f = new DataSetObserver() { // from class: androidx.appcompat.widget.ActivityChooserView.1
            @Override // android.database.DataSetObserver
            public final void onChanged() {
                super.onChanged();
                throw null;
            }

            @Override // android.database.DataSetObserver
            public final void onInvalidated() {
                super.onInvalidated();
                throw null;
            }
        };
        this.g = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.ActivityChooserView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                ActionProvider.SubUiVisibilityListener subUiVisibilityListener;
                ActivityChooserView activityChooserView = ActivityChooserView.this;
                if (activityChooserView.b()) {
                    if (!activityChooserView.isShown()) {
                        activityChooserView.getListPopupWindow().dismiss();
                        return;
                    }
                    activityChooserView.getListPopupWindow().b();
                    ActionProvider actionProvider = activityChooserView.f212c;
                    if (actionProvider != null && (subUiVisibilityListener = actionProvider.b) != null) {
                        ((ActionMenuPresenter) subUiVisibilityListener).o(true);
                    }
                }
            }
        };
        this.k = 4;
        throw null;
    }

    public final void a() {
        if (b()) {
            getListPopupWindow().dismiss();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this.g);
            }
        }
    }

    public final boolean b() {
        return getListPopupWindow().D.isShowing();
    }

    public final void c(int i) {
        throw null;
    }

    @RestrictTo
    public ActivityChooserModel getDataModel() {
        throw null;
    }

    public ListPopupWindow getListPopupWindow() {
        if (this.h == null) {
            ListPopupWindow listPopupWindow = new ListPopupWindow(getContext());
            this.h = listPopupWindow;
            listPopupWindow.p(null);
            ListPopupWindow listPopupWindow2 = this.h;
            listPopupWindow2.s = this;
            listPopupWindow2.C = true;
            listPopupWindow2.D.setFocusable(true);
            ListPopupWindow listPopupWindow3 = this.h;
            listPopupWindow3.t = null;
            listPopupWindow3.D.setOnDismissListener(null);
        }
        return this.h;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        throw null;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        throw null;
    }

    @RestrictTo
    public void setActivityChooserModel(ActivityChooserModel activityChooserModel) {
        throw null;
    }

    public void setDefaultActionButtonContentDescription(int i) {
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        getContext().getString(i);
        throw null;
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        throw null;
    }

    public void setInitialActivityCount(int i) {
        this.k = i;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.i = onDismissListener;
    }

    @RestrictTo
    public void setProvider(ActionProvider actionProvider) {
        this.f212c = actionProvider;
    }
}
