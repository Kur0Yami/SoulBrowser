package androidx.appcompat.widget;

import android.R;
import android.app.SearchableInfo;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.cursoradapter.widget.CursorAdapter;
import androidx.customview.view.AbsSavedState;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class SearchView extends LinearLayoutCompat implements CollapsibleActionView {
    public static final PreQAutoCompleteTextViewReflector D;
    public CharSequence A;
    public int B;
    public SearchableInfo C;
    public OnQueryTextListener t;
    public OnCloseListener u;
    public OnSuggestionListener v;
    public View.OnClickListener w;
    public boolean x;
    public boolean y;
    public CursorAdapter z;

    /* renamed from: androidx.appcompat.widget.SearchView$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$10, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass10 implements TextWatcher {
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

    /* renamed from: androidx.appcompat.widget.SearchView$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements View.OnFocusChangeListener {
        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 implements View.OnLayoutChangeListener {
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass5 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass6 implements View.OnKeyListener {
        @Override // android.view.View.OnKeyListener
        public final boolean onKey(View view, int i, KeyEvent keyEvent) {
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$7, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass7 implements TextView.OnEditorActionListener {
        @Override // android.widget.TextView.OnEditorActionListener
        public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$8, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass8 implements AdapterView.OnItemClickListener {
        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$9, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass9 implements AdapterView.OnItemSelectedListener {
        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
            throw null;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView adapterView) {
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        @DoNotInline
        public static void a(AutoCompleteTextView autoCompleteTextView) {
            autoCompleteTextView.refreshAutoCompleteResults();
        }

        @DoNotInline
        public static void b(SearchAutoComplete searchAutoComplete, int i) {
            searchAutoComplete.setInputMethodMode(i);
        }
    }

    @RequiresApi
    @RestrictTo
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {

        /* renamed from: a, reason: collision with root package name */
        public int f318a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f319c;
        public int d;

        public final void mapProperties(PropertyMapper propertyMapper) {
            this.f318a = propertyMapper.mapInt("imeOptions", R.attr.imeOptions);
            this.b = propertyMapper.mapInt("maxWidth", R.attr.maxWidth);
            this.f319c = propertyMapper.mapBoolean("iconifiedByDefault", androidx.appcompat.R.attr.iconifiedByDefault);
            this.d = propertyMapper.mapObject("queryHint", androidx.appcompat.R.attr.queryHint);
        }

        public final void readProperties(Object obj, PropertyReader propertyReader) {
            SearchView searchView = (SearchView) obj;
            propertyReader.readInt(this.f318a, searchView.getImeOptions());
            propertyReader.readInt(this.b, searchView.getMaxWidth());
            propertyReader.readBoolean(this.f319c, searchView.x);
            propertyReader.readObject(this.d, searchView.getQueryHint());
        }
    }

    /* loaded from: classes.dex */
    public interface OnCloseListener {
    }

    /* loaded from: classes.dex */
    public interface OnQueryTextListener {
    }

    /* loaded from: classes.dex */
    public interface OnSuggestionListener {
    }

    /* loaded from: classes.dex */
    public static class PreQAutoCompleteTextViewReflector {

        /* renamed from: a, reason: collision with root package name */
        public Method f320a;

        public static void a() {
            if (Build.VERSION.SDK_INT < 29) {
            } else {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }
    }

    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public boolean g;

        /* renamed from: androidx.appcompat.widget.SearchView$SavedState$1, reason: invalid class name */
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
            this.g = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public final String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.g + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.g));
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {
        public int i;
        public SearchView j;
        public boolean k;
        public final Runnable l;

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            super(context, attributeSet, androidx.appcompat.R.attr.autoCompleteTextViewStyle);
            this.l = new Runnable() { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                @Override // java.lang.Runnable
                public final void run() {
                    SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                    if (searchAutoComplete.k) {
                        ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                        searchAutoComplete.k = false;
                    }
                }
            };
            this.i = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i < 600) {
                if (i < 640 || i2 < 480) {
                    return 160;
                }
                return 192;
            }
            return 192;
        }

        @Override // android.widget.AutoCompleteTextView
        public final boolean enoughToFilter() {
            if (this.i > 0 && !super.enoughToFilter()) {
                return false;
            }
            return true;
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.k) {
                Runnable runnable = this.l;
                removeCallbacks(runnable);
                post(runnable);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            SearchView searchView = this.j;
            searchView.y = searchView.y;
            throw null;
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.j.clearFocus();
                        throw null;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.j.hasFocus() && getVisibility() == 0) {
                this.k = true;
                Context context = getContext();
                PreQAutoCompleteTextViewReflector preQAutoCompleteTextViewReflector = SearchView.D;
                if (context.getResources().getConfiguration().orientation == 2) {
                    if (Build.VERSION.SDK_INT >= 29) {
                        Api29Impl.b(this, 1);
                        if (enoughToFilter()) {
                            showDropDown();
                            return;
                        }
                        return;
                    }
                    PreQAutoCompleteTextViewReflector preQAutoCompleteTextViewReflector2 = SearchView.D;
                    preQAutoCompleteTextViewReflector2.getClass();
                    PreQAutoCompleteTextViewReflector.a();
                    Method method = preQAutoCompleteTextViewReflector2.f320a;
                    if (method != null) {
                        try {
                            method.invoke(this, Boolean.TRUE);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            Runnable runnable = this.l;
            if (!z) {
                this.k = false;
                removeCallbacks(runnable);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (inputMethodManager.isActive(this)) {
                    this.k = false;
                    removeCallbacks(runnable);
                    inputMethodManager.showSoftInput(this, 0);
                    return;
                }
                this.k = true;
            }
        }

        public void setSearchView(SearchView searchView) {
            this.j = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.i = i;
        }
    }

    /* loaded from: classes.dex */
    public static class UpdatableTouchDelegate extends TouchDelegate {

        /* renamed from: a, reason: collision with root package name */
        public boolean f322a;

        @Override // android.view.TouchDelegate
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            motionEvent.getX();
            motionEvent.getY();
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action != 1 && action != 2) {
                    if (action != 3) {
                        z = false;
                    } else {
                        z = this.f322a;
                        this.f322a = false;
                    }
                } else {
                    z = this.f322a;
                    if (z) {
                        throw null;
                    }
                }
                if (!z) {
                    return false;
                }
                throw null;
            }
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.SearchView$PreQAutoCompleteTextViewReflector, java.lang.Object] */
    static {
        PreQAutoCompleteTextViewReflector preQAutoCompleteTextViewReflector = null;
        if (Build.VERSION.SDK_INT < 29) {
            ?? obj = new Object();
            obj.f320a = null;
            PreQAutoCompleteTextViewReflector.a();
            try {
                AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", null).setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", null).setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                obj.f320a = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
            preQAutoCompleteTextViewReflector = obj;
        }
        D = preQAutoCompleteTextViewReflector;
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(androidx.appcompat.R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(androidx.appcompat.R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        super.clearFocus();
        throw null;
    }

    public int getImeOptions() {
        throw null;
    }

    public int getInputType() {
        throw null;
    }

    public int getMaxWidth() {
        return this.B;
    }

    public CharSequence getQuery() {
        throw null;
    }

    @Nullable
    public CharSequence getQueryHint() {
        CharSequence charSequence = this.A;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.C;
        if (searchableInfo != null && searchableInfo.getHintId() != 0) {
            return getContext().getText(this.C.getHintId());
        }
        return null;
    }

    public int getSuggestionCommitIconResId() {
        return 0;
    }

    public int getSuggestionRowLayout() {
        return 0;
    }

    public CursorAdapter getSuggestionsAdapter() {
        return this.z;
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public final void onActionViewCollapsed() {
        throw null;
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public final void onActionViewExpanded() {
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(null);
        post(null);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!z) {
        } else {
            throw null;
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        if (this.y) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824 && (i3 = this.B) > 0) {
                    size = Math.min(i3, size);
                }
            } else {
                size = this.B;
                if (size <= 0) {
                    size = getPreferredWidth();
                }
            }
        } else {
            int i4 = this.B;
            size = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 == 0) {
                size2 = getPreferredHeight();
            }
        } else {
            size2 = Math.min(getPreferredHeight(), size2);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f936c);
        this.y = savedState.g;
        throw null;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, androidx.customview.view.AbsSavedState, androidx.appcompat.widget.SearchView$SavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        absSavedState.g = this.y;
        return absSavedState;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i, Rect rect) {
        return false;
    }

    @RestrictTo
    public void setAppSearchData(Bundle bundle) {
    }

    public void setIconified(boolean z) {
        if (z) {
            throw null;
        }
        this.y = false;
        throw null;
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.x == z) {
            return;
        }
        this.x = z;
        this.y = z;
        throw null;
    }

    public void setImeOptions(int i) {
        throw null;
    }

    public void setInputType(int i) {
        throw null;
    }

    public void setMaxWidth(int i) {
        this.B = i;
        requestLayout();
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.u = onCloseListener;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.t = onQueryTextListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.w = onClickListener;
    }

    public void setOnSuggestionListener(OnSuggestionListener onSuggestionListener) {
        this.v = onSuggestionListener;
    }

    public void setQueryHint(@Nullable CharSequence charSequence) {
        this.A = charSequence;
        getQueryHint();
        throw null;
    }

    public void setQueryRefinementEnabled(boolean z) {
        int i;
        CursorAdapter cursorAdapter = this.z;
        if (cursorAdapter instanceof SuggestionsAdapter) {
            SuggestionsAdapter suggestionsAdapter = (SuggestionsAdapter) cursorAdapter;
            if (z) {
                i = 2;
            } else {
                i = 1;
            }
            suggestionsAdapter.i = i;
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.C = searchableInfo;
        if (searchableInfo == null) {
            if (searchableInfo != null && searchableInfo.getVoiceSearchEnabled() && !this.C.getVoiceSearchLaunchWebSearch()) {
                this.C.getVoiceSearchLaunchRecognizer();
            }
            this.y = this.y;
            throw null;
        }
        searchableInfo.getSuggestThreshold();
        throw null;
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.y = this.y;
        throw null;
    }

    public void setSuggestionsAdapter(CursorAdapter cursorAdapter) {
        this.z = cursorAdapter;
        throw null;
    }
}
