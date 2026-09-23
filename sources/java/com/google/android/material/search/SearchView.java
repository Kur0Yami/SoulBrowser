package com.google.android.material.search;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.BackEventCompat;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialMainContainerBackHelper;
import com.google.android.material.shape.MaterialShapeUtils;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public class SearchView extends FrameLayout implements CoordinatorLayout.AttachedBehavior, MaterialBackHandler {

    /* renamed from: c, reason: collision with root package name */
    public SearchBar f11870c;
    public int f;
    public TransitionState g;

    /* renamed from: com.google.android.material.search.SearchView$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements TextWatcher {
        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class Behavior extends CoordinatorLayout.Behavior<SearchView> {
        public Behavior() {
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean j(CoordinatorLayout coordinatorLayout, View view, View view2) {
            SearchView searchView = (SearchView) view;
            if (searchView.f11870c == null && (view2 instanceof SearchBar)) {
                searchView.setupWithSearchBar((SearchBar) view2);
                return false;
            }
            return false;
        }

        public Behavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        }
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public String g;
        public final int h;

        /* renamed from: com.google.android.material.search.SearchView$SavedState$1, reason: invalid class name */
        /* loaded from: classes3.dex */
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
            this.g = parcel.readString();
            this.h = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.g);
            parcel.writeInt(this.h);
        }
    }

    /* loaded from: classes3.dex */
    public interface TransitionListener {
        void a();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class TransitionState {

        /* renamed from: c, reason: collision with root package name */
        public static final TransitionState f11871c;
        public static final TransitionState f;
        public static final TransitionState g;
        public static final /* synthetic */ TransitionState[] h;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.material.search.SearchView$TransitionState] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.material.search.SearchView$TransitionState] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.google.android.material.search.SearchView$TransitionState] */
        static {
            ?? r0 = new Enum("HIDING", 0);
            f11871c = r0;
            ?? r1 = new Enum("HIDDEN", 1);
            f = r1;
            Enum r3 = new Enum("SHOWING", 2);
            ?? r5 = new Enum("SHOWN", 3);
            g = r5;
            h = new TransitionState[]{r0, r1, r3, r5};
        }

        public static TransitionState valueOf(String str) {
            return (TransitionState) Enum.valueOf(TransitionState.class, str);
        }

        public static TransitionState[] values() {
            return (TransitionState[]) h.clone();
        }
    }

    @Nullable
    private Window getActivityWindow() {
        Activity activity;
        Context context = getContext();
        while (true) {
            if (context instanceof ContextWrapper) {
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            } else {
                activity = null;
                break;
            }
        }
        if (activity == null) {
            return null;
        }
        return activity.getWindow();
    }

    private float getOverlayElevation() {
        SearchBar searchBar = this.f11870c;
        if (searchBar != null) {
            return searchBar.getCompatElevation();
        }
        return getResources().getDimension(R.dimen.m3_searchview_elevation);
    }

    @Px
    private int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private void setStatusBarSpacerEnabledInternal(boolean z) {
        throw null;
    }

    private void setUpBackgroundViewElevationOverlay(float f) {
    }

    private void setUpHeaderLayout(int i) {
        if (i == -1) {
            return;
        }
        LayoutInflater.from(getContext()).inflate(i, (ViewGroup) null, false);
        throw null;
    }

    private void setUpStatusBarSpacer(@Px int i) {
        throw null;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void b(BackEventCompat backEventCompat) {
        if (!g() && this.f11870c != null) {
            throw null;
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void c(BackEventCompat backEventCompat) {
        if (!g() && this.f11870c != null && Build.VERSION.SDK_INT >= 34) {
            throw null;
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void d() {
        if (g()) {
        } else {
            throw null;
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void f() {
        if (!g() && this.f11870c != null && Build.VERSION.SDK_INT >= 34) {
            throw null;
        }
    }

    public final boolean g() {
        if (!this.g.equals(TransitionState.f) && !this.g.equals(TransitionState.f11871c)) {
            return false;
        }
        return true;
    }

    @VisibleForTesting
    public MaterialMainContainerBackHelper getBackHelper() {
        throw null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<SearchView> getBehavior() {
        return new Behavior();
    }

    @NonNull
    public TransitionState getCurrentTransitionState() {
        return this.g;
    }

    @DrawableRes
    @RestrictTo
    public int getDefaultNavigationIconResource() {
        return R.drawable.ic_arrow_back_black_24;
    }

    @NonNull
    public EditText getEditText() {
        return null;
    }

    @Nullable
    public CharSequence getHint() {
        throw null;
    }

    @NonNull
    public TextView getSearchPrefix() {
        return null;
    }

    @Nullable
    public CharSequence getSearchPrefixText() {
        throw null;
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int getSoftInputMode() {
        return this.f;
    }

    @NonNull
    @SuppressLint({"KotlinPropertyAccess"})
    public Editable getText() {
        throw null;
    }

    @NonNull
    public Toolbar getToolbar() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.d(this);
        TransitionState currentTransitionState = getCurrentTransitionState();
        if (currentTransitionState == TransitionState.g) {
            setModalForAccessibility(true);
        } else if (currentTransitionState == TransitionState.f) {
            setModalForAccessibility(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setModalForAccessibility(false);
        throw null;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        Window activityWindow = getActivityWindow();
        if (activityWindow != null) {
            this.f = activityWindow.getAttributes().softInputMode;
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        boolean z;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f936c);
        setText(savedState.g);
        if (savedState.h == 0) {
            z = true;
        } else {
            z = false;
        }
        setVisible(z);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.customview.view.AbsSavedState, com.google.android.material.search.SearchView$SavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        String charSequence;
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        Editable text = getText();
        if (text == null) {
            charSequence = null;
        } else {
            charSequence = text.toString();
        }
        absSavedState.g = charSequence;
        throw null;
    }

    public void setAnimatedNavigationIcon(boolean z) {
    }

    public void setAutoShowKeyboard(boolean z) {
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        setUpBackgroundViewElevationOverlay(f);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        throw null;
    }

    public void setMenuItemsAnimated(boolean z) {
    }

    public void setModalForAccessibility(boolean z) {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        if (z) {
            new HashMap(viewGroup.getChildCount());
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            if (viewGroup.getChildAt(i) != this) {
                throw null;
            }
        }
    }

    public void setOnMenuItemClickListener(@Nullable Toolbar.OnMenuItemClickListener onMenuItemClickListener) {
        throw null;
    }

    public void setSearchPrefixText(@Nullable CharSequence charSequence) {
        throw null;
    }

    @RestrictTo
    public void setStatusBarSpacerEnabled(boolean z) {
        setStatusBarSpacerEnabledInternal(z);
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setText(@Nullable CharSequence charSequence) {
        throw null;
    }

    public void setToolbarTouchscreenBlocksFocus(boolean z) {
        throw null;
    }

    public void setTransitionState(@NonNull TransitionState transitionState) {
        if (!this.g.equals(transitionState)) {
            TransitionState transitionState2 = TransitionState.g;
            TransitionState transitionState3 = TransitionState.f;
            if (transitionState == transitionState2) {
                setModalForAccessibility(true);
            } else if (transitionState == transitionState3) {
                setModalForAccessibility(false);
            }
            this.g = transitionState;
            Iterator it = new LinkedHashSet((Collection) null).iterator();
            while (it.hasNext()) {
                ((TransitionListener) it.next()).a();
            }
            SearchBar searchBar = this.f11870c;
            if (searchBar != null && transitionState == transitionState3) {
                searchBar.sendAccessibilityEvent(8);
            }
        }
    }

    @RestrictTo
    public void setUseWindowInsetsController(boolean z) {
    }

    public void setVisible(boolean z) {
        throw null;
    }

    public void setupWithSearchBar(@Nullable SearchBar searchBar) {
        this.f11870c = searchBar;
        throw null;
    }

    public void setHint(@StringRes int i) {
        throw null;
    }

    public void setText(@StringRes int i) {
        throw null;
    }
}
