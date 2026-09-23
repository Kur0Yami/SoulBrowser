package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import j$.util.Objects;

/* loaded from: classes.dex */
public class AppCompatSpinner extends Spinner implements TintableBackgroundView {
    public static final int[] m = {R.attr.spinnerMode};

    /* renamed from: c, reason: collision with root package name */
    public final AppCompatBackgroundHelper f263c;
    public final Context f;
    public final ForwardingListener g;
    public SpinnerAdapter h;
    public final boolean i;
    public final SpinnerPopup j;
    public int k;
    public final Rect l;

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class Api23Impl {
        @DoNotInline
        public static void a(@NonNull android.widget.ThemedSpinnerAdapter themedSpinnerAdapter, @Nullable Resources.Theme theme) {
            if (!Objects.equals(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
                themedSpinnerAdapter.setDropDownViewTheme(theme);
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public class DialogPopup implements SpinnerPopup, DialogInterface.OnClickListener {

        /* renamed from: c, reason: collision with root package name */
        public AlertDialog f265c;
        public ListAdapter f;
        public CharSequence g;

        public DialogPopup() {
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final boolean a() {
            AlertDialog alertDialog = this.f265c;
            if (alertDialog != null) {
                return alertDialog.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final int c() {
            return 0;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final void dismiss() {
            AlertDialog alertDialog = this.f265c;
            if (alertDialog != null) {
                alertDialog.dismiss();
                this.f265c = null;
            }
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final void e(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final CharSequence f() {
            return this.g;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final Drawable h() {
            return null;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final void j(CharSequence charSequence) {
            this.g = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final void k(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final void l(int i) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final void m(int i) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final void n(int i, int i2) {
            if (this.f == null) {
                return;
            }
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            AlertDialog.Builder builder = new AlertDialog.Builder(appCompatSpinner.getPopupContext());
            CharSequence charSequence = this.g;
            AlertController.AlertParams alertParams = builder.f81a;
            if (charSequence != null) {
                alertParams.d = charSequence;
            }
            ListAdapter listAdapter = this.f;
            int selectedItemPosition = appCompatSpinner.getSelectedItemPosition();
            alertParams.i = listAdapter;
            alertParams.j = this;
            alertParams.m = selectedItemPosition;
            alertParams.l = true;
            AlertDialog a2 = builder.a();
            this.f265c = a2;
            AlertController.RecycleListView e = a2.e();
            e.setTextDirection(i);
            e.setTextAlignment(i2);
            this.f265c.show();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final int o() {
            return 0;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            appCompatSpinner.setSelection(i);
            if (appCompatSpinner.getOnItemClickListener() != null) {
                appCompatSpinner.performItemClick(null, i, this.f.getItemId(i));
            }
            dismiss();
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final void p(ListAdapter listAdapter) {
            this.f = listAdapter;
        }
    }

    /* loaded from: classes.dex */
    public static class DropDownAdapter implements ListAdapter, SpinnerAdapter {

        /* renamed from: c, reason: collision with root package name */
        public SpinnerAdapter f266c;
        public ListAdapter f;

        @Override // android.widget.ListAdapter
        public final boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            SpinnerAdapter spinnerAdapter = this.f266c;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f266c;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i) {
            SpinnerAdapter spinnerAdapter = this.f266c;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i) {
            SpinnerAdapter spinnerAdapter = this.f266c;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public final int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public final boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f266c;
            if (spinnerAdapter != null && spinnerAdapter.hasStableIds()) {
                return true;
            }
            return false;
        }

        @Override // android.widget.Adapter
        public final boolean isEmpty() {
            if (getCount() == 0) {
                return true;
            }
            return false;
        }

        @Override // android.widget.ListAdapter
        public final boolean isEnabled(int i) {
            ListAdapter listAdapter = this.f;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f266c;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f266c;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public class DropdownPopup extends ListPopupWindow implements SpinnerPopup {
        public CharSequence H;
        public ListAdapter I;
        public final Rect J;
        public int K;

        public DropdownPopup(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i, 0);
            this.J = new Rect();
            this.s = AppCompatSpinner.this;
            this.C = true;
            this.D.setFocusable(true);
            this.t = new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.DropdownPopup.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                    DropdownPopup dropdownPopup = DropdownPopup.this;
                    AppCompatSpinner.this.setSelection(i2);
                    if (AppCompatSpinner.this.getOnItemClickListener() != null) {
                        AppCompatSpinner.this.performItemClick(view, i2, dropdownPopup.I.getItemId(i2));
                    }
                    dropdownPopup.dismiss();
                }
            };
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final CharSequence f() {
            return this.H;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final void j(CharSequence charSequence) {
            this.H = charSequence;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final void m(int i) {
            this.K = i;
        }

        @Override // androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final void n(int i, int i2) {
            ViewTreeObserver viewTreeObserver;
            PopupWindow popupWindow = this.D;
            boolean isShowing = popupWindow.isShowing();
            s();
            popupWindow.setInputMethodMode(2);
            b();
            DropDownListView dropDownListView = this.g;
            dropDownListView.setChoiceMode(1);
            dropDownListView.setTextDirection(i);
            dropDownListView.setTextAlignment(i2);
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            int selectedItemPosition = appCompatSpinner.getSelectedItemPosition();
            DropDownListView dropDownListView2 = this.g;
            if (popupWindow.isShowing() && dropDownListView2 != null) {
                dropDownListView2.setListSelectionHidden(false);
                dropDownListView2.setSelection(selectedItemPosition);
                if (dropDownListView2.getChoiceMode() != 0) {
                    dropDownListView2.setItemChecked(selectedItemPosition, true);
                }
            }
            if (!isShowing && (viewTreeObserver = appCompatSpinner.getViewTreeObserver()) != null) {
                final ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.DropdownPopup.2
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    public final void onGlobalLayout() {
                        DropdownPopup dropdownPopup = DropdownPopup.this;
                        AppCompatSpinner appCompatSpinner2 = AppCompatSpinner.this;
                        dropdownPopup.getClass();
                        if (appCompatSpinner2.isAttachedToWindow() && appCompatSpinner2.getGlobalVisibleRect(dropdownPopup.J)) {
                            dropdownPopup.s();
                            dropdownPopup.b();
                        } else {
                            dropdownPopup.dismiss();
                        }
                    }
                };
                viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
                popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.DropdownPopup.3
                    @Override // android.widget.PopupWindow.OnDismissListener
                    public final void onDismiss() {
                        ViewTreeObserver viewTreeObserver2 = AppCompatSpinner.this.getViewTreeObserver();
                        if (viewTreeObserver2 != null) {
                            viewTreeObserver2.removeGlobalOnLayoutListener(onGlobalLayoutListener);
                        }
                    }
                });
            }
        }

        @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.AppCompatSpinner.SpinnerPopup
        public final void p(ListAdapter listAdapter) {
            super.p(listAdapter);
            this.I = listAdapter;
        }

        public final void s() {
            int i;
            int i2;
            AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
            Rect rect = appCompatSpinner.l;
            PopupWindow popupWindow = this.D;
            Drawable background = popupWindow.getBackground();
            if (background != null) {
                background.getPadding(rect);
                boolean z = ViewUtils.f351a;
                if (appCompatSpinner.getLayoutDirection() == 1) {
                    i = rect.right;
                } else {
                    i = -rect.left;
                }
            } else {
                i = 0;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = appCompatSpinner.getPaddingLeft();
            int paddingRight = appCompatSpinner.getPaddingRight();
            int width = appCompatSpinner.getWidth();
            int i3 = appCompatSpinner.k;
            if (i3 == -2) {
                int a2 = appCompatSpinner.a((SpinnerAdapter) this.I, popupWindow.getBackground());
                int i4 = (appCompatSpinner.getContext().getResources().getDisplayMetrics().widthPixels - rect.left) - rect.right;
                if (a2 > i4) {
                    a2 = i4;
                }
                r(Math.max(a2, (width - paddingLeft) - paddingRight));
            } else if (i3 == -1) {
                r((width - paddingLeft) - paddingRight);
            } else {
                r(i3);
            }
            boolean z2 = ViewUtils.f351a;
            if (appCompatSpinner.getLayoutDirection() == 1) {
                i2 = (((width - paddingRight) - this.i) - this.K) + i;
            } else {
                i2 = paddingLeft + this.K + i;
            }
            this.j = i2;
        }
    }

    @RequiresApi
    @RestrictTo
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {

        /* renamed from: a, reason: collision with root package name */
        public int f270a;
        public int b;

        public final void mapProperties(PropertyMapper propertyMapper) {
            this.f270a = propertyMapper.mapObject("backgroundTint", androidx.appcompat.R.attr.backgroundTint);
            this.b = propertyMapper.mapObject("backgroundTintMode", androidx.appcompat.R.attr.backgroundTintMode);
        }

        public final void readProperties(Object obj, PropertyReader propertyReader) {
            AppCompatSpinner appCompatSpinner = (AppCompatSpinner) obj;
            propertyReader.readObject(this.f270a, appCompatSpinner.getBackgroundTintList());
            propertyReader.readObject(this.b, appCompatSpinner.getBackgroundTintMode());
        }
    }

    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public boolean f271c;

        /* renamed from: androidx.appcompat.widget.AppCompatSpinner$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Type inference failed for: r0v0, types: [android.view.View$BaseSavedState, androidx.appcompat.widget.AppCompatSpinner$SavedState] */
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                boolean z;
                ?? baseSavedState = new View.BaseSavedState(parcel);
                if (parcel.readByte() != 0) {
                    z = true;
                } else {
                    z = false;
                }
                baseSavedState.f271c = z;
                return baseSavedState;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeByte(this.f271c ? (byte) 1 : (byte) 0);
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface SpinnerPopup {
        boolean a();

        int c();

        void dismiss();

        void e(int i);

        CharSequence f();

        Drawable h();

        void j(CharSequence charSequence);

        void k(Drawable drawable);

        void l(int i);

        void m(int i);

        void n(int i, int i2);

        int o();

        void p(ListAdapter listAdapter);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005c, code lost:
    
        if (r5 == null) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00da  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppCompatSpinner(android.content.Context r10, android.util.AttributeSet r11, int r12) {
        /*
            r9 = this;
            r9.<init>(r10, r11, r12)
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r9.l = r0
            android.content.Context r0 = r9.getContext()
            androidx.appcompat.widget.ThemeUtils.a(r0, r9)
            int[] r0 = androidx.appcompat.R.styleable.Spinner
            androidx.appcompat.widget.TintTypedArray r0 = androidx.appcompat.widget.TintTypedArray.e(r10, r11, r0, r12)
            android.content.res.TypedArray r1 = r0.b
            androidx.appcompat.widget.AppCompatBackgroundHelper r2 = new androidx.appcompat.widget.AppCompatBackgroundHelper
            r2.<init>(r9)
            r9.f263c = r2
            int r2 = androidx.appcompat.R.styleable.Spinner_popupTheme
            r3 = 0
            int r2 = r1.getResourceId(r2, r3)
            if (r2 == 0) goto L31
            androidx.appcompat.view.ContextThemeWrapper r4 = new androidx.appcompat.view.ContextThemeWrapper
            r4.<init>(r10, r2)
            r9.f = r4
            goto L33
        L31:
            r9.f = r10
        L33:
            r2 = -1
            r4 = 0
            int[] r5 = androidx.appcompat.widget.AppCompatSpinner.m     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L53
            android.content.res.TypedArray r5 = r10.obtainStyledAttributes(r11, r5, r12, r3)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L53
            boolean r6 = r5.hasValue(r3)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4a
            if (r6 == 0) goto L4c
            int r2 = r5.getInt(r3, r3)     // Catch: java.lang.Throwable -> L46 java.lang.Exception -> L4a
            goto L4c
        L46:
            r10 = move-exception
            r4 = r5
            goto Ld8
        L4a:
            r3 = move-exception
            goto L55
        L4c:
            r5.recycle()
            goto L5f
        L50:
            r10 = move-exception
            goto Ld8
        L53:
            r3 = move-exception
            r5 = r4
        L55:
            java.lang.String r6 = "AppCompatSpinner"
            java.lang.String r7 = "Could not read android:spinnerMode"
            android.util.Log.i(r6, r7, r3)     // Catch: java.lang.Throwable -> L46
            if (r5 == 0) goto L5f
            goto L4c
        L5f:
            r3 = 1
            if (r2 == 0) goto L9d
            if (r2 == r3) goto L65
            goto Lac
        L65:
            androidx.appcompat.widget.AppCompatSpinner$DropdownPopup r2 = new androidx.appcompat.widget.AppCompatSpinner$DropdownPopup
            android.content.Context r5 = r9.f
            r2.<init>(r5, r11, r12)
            android.content.Context r5 = r9.f
            int[] r6 = androidx.appcompat.R.styleable.Spinner
            androidx.appcompat.widget.TintTypedArray r5 = androidx.appcompat.widget.TintTypedArray.e(r5, r11, r6, r12)
            int r6 = androidx.appcompat.R.styleable.Spinner_android_dropDownWidth
            r7 = -2
            android.content.res.TypedArray r8 = r5.b
            int r6 = r8.getLayoutDimension(r6, r7)
            r9.k = r6
            int r6 = androidx.appcompat.R.styleable.Spinner_android_popupBackground
            android.graphics.drawable.Drawable r6 = r5.b(r6)
            r2.k(r6)
            int r6 = androidx.appcompat.R.styleable.Spinner_android_prompt
            java.lang.String r6 = r1.getString(r6)
            r2.H = r6
            r5.f()
            r9.j = r2
            androidx.appcompat.widget.AppCompatSpinner$1 r5 = new androidx.appcompat.widget.AppCompatSpinner$1
            r5.<init>(r9)
            r9.g = r5
            goto Lac
        L9d:
            androidx.appcompat.widget.AppCompatSpinner$DialogPopup r2 = new androidx.appcompat.widget.AppCompatSpinner$DialogPopup
            r2.<init>()
            r9.j = r2
            int r5 = androidx.appcompat.R.styleable.Spinner_android_prompt
            java.lang.String r5 = r1.getString(r5)
            r2.g = r5
        Lac:
            int r2 = androidx.appcompat.R.styleable.Spinner_android_entries
            java.lang.CharSequence[] r1 = r1.getTextArray(r2)
            if (r1 == 0) goto Lc4
            android.widget.ArrayAdapter r2 = new android.widget.ArrayAdapter
            r5 = 17367048(0x1090008, float:2.5162948E-38)
            r2.<init>(r10, r5, r1)
            int r10 = androidx.appcompat.R.layout.support_simple_spinner_dropdown_item
            r2.setDropDownViewResource(r10)
            r9.setAdapter(r2)
        Lc4:
            r0.f()
            r9.i = r3
            android.widget.SpinnerAdapter r10 = r9.h
            if (r10 == 0) goto Ld2
            r9.setAdapter(r10)
            r9.h = r4
        Ld2:
            androidx.appcompat.widget.AppCompatBackgroundHelper r10 = r9.f263c
            r10.d(r11, r12)
            return
        Ld8:
            if (r4 == 0) goto Ldd
            r4.recycle()
        Ldd:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatSpinner.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        View view = null;
        int i2 = 0;
        for (int max2 = Math.max(0, max - (15 - (min - max))); max2 < min; max2++) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i) {
                view = null;
                i = itemViewType;
            }
            view = spinnerAdapter.getView(max2, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
        }
        if (drawable != null) {
            Rect rect = this.l;
            drawable.getPadding(rect);
            return rect.left + rect.right + i2;
        }
        return i2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f263c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        SpinnerPopup spinnerPopup = this.j;
        if (spinnerPopup != null) {
            return spinnerPopup.c();
        }
        return super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        SpinnerPopup spinnerPopup = this.j;
        if (spinnerPopup != null) {
            return spinnerPopup.o();
        }
        return super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        if (this.j != null) {
            return this.k;
        }
        return super.getDropDownWidth();
    }

    @VisibleForTesting
    public final SpinnerPopup getInternalPopup() {
        return this.j;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        SpinnerPopup spinnerPopup = this.j;
        if (spinnerPopup != null) {
            return spinnerPopup.h();
        }
        return super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        SpinnerPopup spinnerPopup = this.j;
        if (spinnerPopup != null) {
            return spinnerPopup.f();
        }
        return super.getPrompt();
    }

    @Nullable
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f263c;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.b();
        }
        return null;
    }

    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f263c;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SpinnerPopup spinnerPopup = this.j;
        if (spinnerPopup != null && spinnerPopup.a()) {
            spinnerPopup.dismiss();
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.j != null && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f271c && (viewTreeObserver = getViewTreeObserver()) != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.appcompat.widget.AppCompatSpinner.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    AppCompatSpinner appCompatSpinner = AppCompatSpinner.this;
                    if (!appCompatSpinner.getInternalPopup().a()) {
                        appCompatSpinner.j.n(appCompatSpinner.getTextDirection(), appCompatSpinner.getTextAlignment());
                    }
                    ViewTreeObserver viewTreeObserver2 = appCompatSpinner.getViewTreeObserver();
                    if (viewTreeObserver2 != null) {
                        viewTreeObserver2.removeOnGlobalLayoutListener(this);
                    }
                }
            });
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.View$BaseSavedState, android.os.Parcelable, androidx.appcompat.widget.AppCompatSpinner$SavedState] */
    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        boolean z;
        ?? baseSavedState = new View.BaseSavedState(super.onSaveInstanceState());
        SpinnerPopup spinnerPopup = this.j;
        if (spinnerPopup != null && spinnerPopup.a()) {
            z = true;
        } else {
            z = false;
        }
        baseSavedState.f271c = z;
        return baseSavedState;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener forwardingListener = this.g;
        if (forwardingListener != null && forwardingListener.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        SpinnerPopup spinnerPopup = this.j;
        if (spinnerPopup != null) {
            if (!spinnerPopup.a()) {
                spinnerPopup.n(getTextDirection(), getTextAlignment());
                return true;
            }
            return true;
        }
        return super.performClick();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f263c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        super.setBackgroundResource(i);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f263c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i) {
        SpinnerPopup spinnerPopup = this.j;
        if (spinnerPopup != null) {
            spinnerPopup.m(i);
            spinnerPopup.e(i);
        } else {
            super.setDropDownHorizontalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i) {
        SpinnerPopup spinnerPopup = this.j;
        if (spinnerPopup != null) {
            spinnerPopup.l(i);
        } else {
            super.setDropDownVerticalOffset(i);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i) {
        if (this.j != null) {
            this.k = i;
        } else {
            super.setDropDownWidth(i);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        SpinnerPopup spinnerPopup = this.j;
        if (spinnerPopup != null) {
            spinnerPopup.k(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(@DrawableRes int i) {
        setPopupBackgroundDrawable(AppCompatResources.a(getPopupContext(), i));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        SpinnerPopup spinnerPopup = this.j;
        if (spinnerPopup != null) {
            spinnerPopup.j(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    @RestrictTo
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f263c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.h(colorStateList);
        }
    }

    @RestrictTo
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f263c;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(mode);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.appcompat.widget.AppCompatSpinner$DropDownAdapter, android.widget.ListAdapter, java.lang.Object] */
    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.i) {
            this.h = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        SpinnerPopup spinnerPopup = this.j;
        if (spinnerPopup != 0) {
            Context context = this.f;
            if (context == null) {
                context = getContext();
            }
            Resources.Theme theme = context.getTheme();
            ?? obj = new Object();
            obj.f266c = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                obj.f = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (spinnerAdapter instanceof android.widget.ThemedSpinnerAdapter) {
                    Api23Impl.a((android.widget.ThemedSpinnerAdapter) spinnerAdapter, theme);
                } else if (spinnerAdapter instanceof ThemedSpinnerAdapter) {
                    ThemedSpinnerAdapter themedSpinnerAdapter = (ThemedSpinnerAdapter) spinnerAdapter;
                    if (themedSpinnerAdapter.getDropDownViewTheme() == null) {
                        themedSpinnerAdapter.b();
                    }
                }
            }
            spinnerPopup.p(obj);
        }
    }
}
