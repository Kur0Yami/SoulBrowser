package androidx.core.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.KeyEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.PathInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.SwitchCompat;
import androidx.core.R;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.tabs.TabLayout;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;

@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public class ViewCompat {

    /* renamed from: a, reason: collision with root package name */
    public static WeakHashMap f792a = null;
    public static Field b = null;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f793c = false;
    public static final int[] d = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
    public static final e e = new Object();
    public static final AccessibilityPaneVisibilityManager f = new AccessibilityPaneVisibilityManager();

    /* renamed from: androidx.core.view.ViewCompat$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends AccessibilityViewProperty<Boolean> {
        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final Object a(View view) {
            return Boolean.valueOf(Api28Impl.c(view));
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final void b(View view, Object obj) {
            Api28Impl.f(view, ((Boolean) obj).booleanValue());
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final boolean e(Object obj, Object obj2) {
            boolean z;
            boolean z2;
            Boolean bool = (Boolean) obj;
            Boolean bool2 = (Boolean) obj2;
            boolean z3 = false;
            if (bool != null && bool.booleanValue()) {
                z = true;
            } else {
                z = false;
            }
            if (bool2 != null && bool2.booleanValue()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z == z2) {
                z3 = true;
            }
            return !z3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.ViewCompat$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends AccessibilityViewProperty<CharSequence> {
        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final Object a(View view) {
            return Api28Impl.a(view);
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final void b(View view, Object obj) {
            Api28Impl.e(view, (CharSequence) obj);
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final boolean e(Object obj, Object obj2) {
            return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
        }
    }

    /* renamed from: androidx.core.view.ViewCompat$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 extends AccessibilityViewProperty<CharSequence> {
        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final Object a(View view) {
            return Api30Impl.a(view);
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final void b(View view, Object obj) {
            Api30Impl.b(view, (CharSequence) obj);
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final boolean e(Object obj, Object obj2) {
            return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
        }
    }

    /* renamed from: androidx.core.view.ViewCompat$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 extends AccessibilityViewProperty<Boolean> {
        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final Object a(View view) {
            return Boolean.valueOf(Api28Impl.b(view));
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final void b(View view, Object obj) {
            Api28Impl.d(view, ((Boolean) obj).booleanValue());
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final boolean e(Object obj, Object obj2) {
            boolean z;
            boolean z2;
            Boolean bool = (Boolean) obj;
            Boolean bool2 = (Boolean) obj2;
            boolean z3 = false;
            if (bool != null && bool.booleanValue()) {
                z = true;
            } else {
                z = false;
            }
            if (bool2 != null && bool2.booleanValue()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z == z2) {
                z3 = true;
            }
            return !z3;
        }
    }

    /* loaded from: classes.dex */
    public static class AccessibilityPaneVisibilityManager implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* renamed from: c, reason: collision with root package name */
        public final WeakHashMap f794c = new WeakHashMap();

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            boolean z;
            int i;
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry entry : this.f794c.entrySet()) {
                    View view = (View) entry.getKey();
                    boolean booleanValue = ((Boolean) entry.getValue()).booleanValue();
                    if (view.isShown() && view.getWindowVisibility() == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (booleanValue != z) {
                        if (z) {
                            i = 16;
                        } else {
                            i = 32;
                        }
                        ViewCompat.s(view, i);
                        entry.setValue(Boolean.valueOf(z));
                    }
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class AccessibilityViewProperty<T> {

        /* renamed from: a, reason: collision with root package name */
        public final int f795a;
        public final Class b;

        /* renamed from: c, reason: collision with root package name */
        public final int f796c;
        public final int d;

        public AccessibilityViewProperty(int i, Class cls, int i2, int i3) {
            this.f795a = i;
            this.b = cls;
            this.d = i2;
            this.f796c = i3;
        }

        public abstract Object a(View view);

        public abstract void b(View view, Object obj);

        public final Object c(View view) {
            if (Build.VERSION.SDK_INT >= this.f796c) {
                return a(view);
            }
            Object tag = view.getTag(this.f795a);
            if (this.b.isInstance(tag)) {
                return tag;
            }
            return null;
        }

        public final void d(View view, Object obj) {
            if (Build.VERSION.SDK_INT >= this.f796c) {
                b(view, obj);
                return;
            }
            if (e(c(view), obj)) {
                AccessibilityDelegateCompat e = ViewCompat.e(view);
                if (e == null) {
                    e = new AccessibilityDelegateCompat();
                }
                ViewCompat.z(view, e);
                view.setTag(this.f795a, obj);
                ViewCompat.s(view, this.d);
            }
        }

        public boolean e(Object obj, Object obj2) {
            return !obj2.equals(obj);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api20Impl {
        public static WindowInsets a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        public static WindowInsets b(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        public static void c(View view) {
            view.requestApplyInsets();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
        public static void a(@NonNull WindowInsets windowInsets, @NonNull View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        public static WindowInsetsCompat b(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat, @NonNull Rect rect) {
            WindowInsets n = windowInsetsCompat.n();
            if (n != null) {
                return WindowInsetsCompat.o(view, view.computeSystemWindowInsets(n, rect));
            }
            rect.setEmpty();
            return windowInsetsCompat;
        }

        public static ColorStateList c(View view) {
            return view.getBackgroundTintList();
        }

        public static PorterDuff.Mode d(View view) {
            return view.getBackgroundTintMode();
        }

        public static float e(View view) {
            return view.getElevation();
        }

        public static String f(View view) {
            return view.getTransitionName();
        }

        public static float g(View view) {
            return view.getTranslationZ();
        }

        public static float h(@NonNull View view) {
            return view.getZ();
        }

        public static boolean i(View view) {
            return view.isNestedScrollingEnabled();
        }

        public static void j(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        public static void k(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        public static void l(View view, float f) {
            view.setElevation(f);
        }

        public static void m(@NonNull final View view, @Nullable final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(R.id.tag_on_apply_window_listener, onApplyWindowInsetsListener);
            }
            if (onApplyWindowInsetsListener == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: androidx.core.view.ViewCompat.Api21Impl.1

                    /* renamed from: a, reason: collision with root package name */
                    public WindowInsetsCompat f797a = null;

                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                        WindowInsetsCompat o = WindowInsetsCompat.o(view2, windowInsets);
                        int i = Build.VERSION.SDK_INT;
                        OnApplyWindowInsetsListener onApplyWindowInsetsListener2 = onApplyWindowInsetsListener;
                        if (i < 30) {
                            Api21Impl.a(windowInsets, view);
                            if (o.equals(this.f797a)) {
                                return onApplyWindowInsetsListener2.a(view2, o).n();
                            }
                        }
                        this.f797a = o;
                        WindowInsetsCompat a2 = onApplyWindowInsetsListener2.a(view2, o);
                        if (i >= 30) {
                            return a2.n();
                        }
                        WeakHashMap weakHashMap = ViewCompat.f792a;
                        Api20Impl.c(view2);
                        return a2.n();
                    }
                });
            }
        }

        public static void n(View view, String str) {
            view.setTransitionName(str);
        }

        public static void o(View view, float f) {
            view.setTranslationZ(f);
        }

        public static void p(@NonNull View view, float f) {
            view.setZ(f);
        }

        public static void q(View view) {
            view.stopNestedScroll();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
        @Nullable
        public static WindowInsetsCompat a(@NonNull View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            WindowInsetsCompat o = WindowInsetsCompat.o(null, rootWindowInsets);
            WindowInsetsCompat.Impl impl = o.f821a;
            impl.r(o);
            impl.d(view.getRootView());
            return o;
        }

        public static void b(@NonNull View view, int i, int i2) {
            view.setScrollIndicators(i, i2);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
        public static void a(@NonNull View view, PointerIcon pointerIcon) {
            view.setPointerIcon(pointerIcon);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
        public static int a(View view) {
            return view.getImportantForAutofill();
        }

        public static void b(View view, int i) {
            view.setImportantForAutofill(i);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
        public static CharSequence a(View view) {
            return view.getAccessibilityPaneTitle();
        }

        public static boolean b(View view) {
            return view.isAccessibilityHeading();
        }

        public static boolean c(View view) {
            return view.isScreenReaderFocusable();
        }

        public static void d(View view, boolean z) {
            view.setAccessibilityHeading(z);
        }

        public static void e(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        public static void f(View view, boolean z) {
            view.setScreenReaderFocusable(z);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static View.AccessibilityDelegate a(View view) {
            return view.getAccessibilityDelegate();
        }

        public static void b(@NonNull View view, @NonNull Context context, @NonNull int[] iArr, @Nullable AttributeSet attributeSet, @NonNull TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static CharSequence a(View view) {
            return view.getStateDescription();
        }

        public static void b(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class Api31Impl {
        @Nullable
        public static String[] a(@NonNull View view) {
            return view.getReceiveContentMimeTypes();
        }

        @Nullable
        public static ContentInfoCompat b(@NonNull View view, @NonNull ContentInfoCompat contentInfoCompat) {
            ContentInfo c2 = contentInfoCompat.f764a.c();
            Objects.requireNonNull(c2);
            ContentInfo performReceiveContent = view.performReceiveContent(c2);
            if (performReceiveContent == null) {
                return null;
            }
            if (performReceiveContent == c2) {
                return contentInfoCompat;
            }
            return new ContentInfoCompat(new ContentInfoCompat.Compat31Impl(performReceiveContent));
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface FocusDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface FocusRealDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface FocusRelativeDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface NestedScrollType {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class OnReceiveContentListenerAdapter implements android.view.OnReceiveContentListener {
        public final ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
            new ContentInfoCompat.Compat31Impl(contentInfo);
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public interface OnUnhandledKeyEventListenerCompat {
        boolean a();
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ScrollAxis {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ScrollIndicators {
    }

    /* loaded from: classes.dex */
    public static class UnhandledKeyEventManager {
        public static final ArrayList d = new ArrayList();

        /* renamed from: a, reason: collision with root package name */
        public WeakHashMap f799a;
        public SparseArray b;

        /* renamed from: c, reason: collision with root package name */
        public WeakReference f800c;

        public static boolean b(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_unhandled_key_listeners);
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (((OnUnhandledKeyEventListenerCompat) arrayList.get(size)).a()) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }

        public final View a(View view, KeyEvent keyEvent) {
            WeakHashMap weakHashMap = this.f799a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View a2 = a(viewGroup.getChildAt(childCount), keyEvent);
                        if (a2 != null) {
                            return a2;
                        }
                    }
                }
                if (b(view, keyEvent)) {
                    return view;
                }
                return null;
            }
            return null;
        }
    }

    public static void A(View view, boolean z) {
        new AccessibilityViewProperty(R.id.tag_accessibility_heading, Boolean.class, 0, 28).d(view, Boolean.valueOf(z));
    }

    public static void B(View view, CharSequence charSequence) {
        boolean z;
        new AccessibilityViewProperty(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28).d(view, charSequence);
        AccessibilityPaneVisibilityManager accessibilityPaneVisibilityManager = f;
        if (charSequence != null) {
            WeakHashMap weakHashMap = accessibilityPaneVisibilityManager.f794c;
            if (view.isShown() && view.getWindowVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
            weakHashMap.put(view, Boolean.valueOf(z));
            view.addOnAttachStateChangeListener(accessibilityPaneVisibilityManager);
            if (view.isAttachedToWindow()) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(accessibilityPaneVisibilityManager);
                return;
            }
            return;
        }
        accessibilityPaneVisibilityManager.f794c.remove(view);
        view.removeOnAttachStateChangeListener(accessibilityPaneVisibilityManager);
        view.getViewTreeObserver().removeOnGlobalLayoutListener(accessibilityPaneVisibilityManager);
    }

    public static void C(View view, ColorStateList colorStateList) {
        Api21Impl.j(view, colorStateList);
    }

    public static void D(View view, PorterDuff.Mode mode) {
        Api21Impl.k(view, mode);
    }

    public static void E(View view, float f2) {
        Api21Impl.l(view, f2);
    }

    public static void F(RecyclerView recyclerView) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.b(recyclerView, 8);
        }
    }

    public static void G(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        Api21Impl.m(view, onApplyWindowInsetsListener);
    }

    public static void H(TabLayout.TabView tabView, PointerIconCompat pointerIconCompat) {
        if (Build.VERSION.SDK_INT >= 24) {
            Api24Impl.a(tabView, pointerIconCompat.f785a);
        }
    }

    public static void I(View view, boolean z) {
        new AccessibilityViewProperty(R.id.tag_screen_reader_focusable, Boolean.class, 0, 28).d(view, Boolean.valueOf(z));
    }

    public static void J(ViewGroup viewGroup, int i) {
        Api23Impl.b(viewGroup, i, 3);
    }

    public static void K(SwitchCompat switchCompat, CharSequence charSequence) {
        new AccessibilityViewProperty(R.id.tag_state_description, CharSequence.class, 64, 30).d(switchCompat, charSequence);
    }

    public static void L(View view, String str) {
        Api21Impl.n(view, str);
    }

    public static void M(View view, float f2) {
        Api21Impl.o(view, f2);
    }

    public static void N(View view, WindowInsetsAnimationCompat.Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            WindowInsetsAnimationCompat.Impl30.g(view, callback);
            return;
        }
        PathInterpolator pathInterpolator = WindowInsetsAnimationCompat.Impl21.e;
        Object tag = view.getTag(R.id.tag_on_apply_window_listener);
        View.OnApplyWindowInsetsListener impl21OnApplyWindowInsetsListener = new WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener(view, callback);
        view.setTag(R.id.tag_window_insets_animation_callback, impl21OnApplyWindowInsetsListener);
        if (tag == null) {
            view.setOnApplyWindowInsetsListener(impl21OnApplyWindowInsetsListener);
        }
    }

    public static void O(View view, float f2) {
        Api21Impl.p(view, f2);
    }

    public static ViewPropertyAnimatorCompat a(View view) {
        if (f792a == null) {
            f792a = new WeakHashMap();
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = (ViewPropertyAnimatorCompat) f792a.get(view);
        if (viewPropertyAnimatorCompat == null) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = new ViewPropertyAnimatorCompat(view);
            f792a.put(view, viewPropertyAnimatorCompat2);
            return viewPropertyAnimatorCompat2;
        }
        return viewPropertyAnimatorCompat;
    }

    public static void b(View view, WindowInsetsCompat windowInsetsCompat, Rect rect) {
        Api21Impl.b(view, windowInsetsCompat, rect);
    }

    public static WindowInsetsCompat c(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsets n = windowInsetsCompat.n();
        if (n != null) {
            WindowInsets a2 = Api20Impl.a(view, n);
            if (!a2.equals(n)) {
                return WindowInsetsCompat.o(view, a2);
            }
        }
        return windowInsetsCompat;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.core.view.ViewCompat$UnhandledKeyEventManager, java.lang.Object] */
    public static boolean d(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList arrayList = UnhandledKeyEventManager.d;
            UnhandledKeyEventManager unhandledKeyEventManager = (UnhandledKeyEventManager) view.getTag(R.id.tag_unhandled_key_event_manager);
            UnhandledKeyEventManager unhandledKeyEventManager2 = unhandledKeyEventManager;
            if (unhandledKeyEventManager == null) {
                ?? obj = new Object();
                obj.f799a = null;
                obj.b = null;
                obj.f800c = null;
                view.setTag(R.id.tag_unhandled_key_event_manager, obj);
                unhandledKeyEventManager2 = obj;
            }
            if (keyEvent.getAction() == 0) {
                WeakHashMap weakHashMap = unhandledKeyEventManager2.f799a;
                if (weakHashMap != null) {
                    weakHashMap.clear();
                }
                ArrayList arrayList2 = UnhandledKeyEventManager.d;
                if (!arrayList2.isEmpty()) {
                    synchronized (arrayList2) {
                        try {
                            if (unhandledKeyEventManager2.f799a == null) {
                                unhandledKeyEventManager2.f799a = new WeakHashMap();
                            }
                            for (int size = arrayList2.size() - 1; size >= 0; size--) {
                                ArrayList arrayList3 = UnhandledKeyEventManager.d;
                                View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                                if (view2 == null) {
                                    arrayList3.remove(size);
                                } else {
                                    unhandledKeyEventManager2.f799a.put(view2, Boolean.TRUE);
                                    for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                        unhandledKeyEventManager2.f799a.put((View) parent, Boolean.TRUE);
                                    }
                                }
                            }
                        } finally {
                        }
                    }
                }
            }
            View a2 = unhandledKeyEventManager2.a(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (a2 != null && !KeyEvent.isModifierKey(keyCode)) {
                    if (unhandledKeyEventManager2.b == null) {
                        unhandledKeyEventManager2.b = new SparseArray();
                    }
                    unhandledKeyEventManager2.b.put(keyCode, new WeakReference(a2));
                }
            }
            if (a2 != null) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static AccessibilityDelegateCompat e(View view) {
        View.AccessibilityDelegate f2 = f(view);
        if (f2 == null) {
            return null;
        }
        if (f2 instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter) {
            return ((AccessibilityDelegateCompat.AccessibilityDelegateAdapter) f2).f761a;
        }
        return new AccessibilityDelegateCompat(f2);
    }

    public static View.AccessibilityDelegate f(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return Api29Impl.a(view);
        }
        if (!f793c) {
            if (b == null) {
                try {
                    Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                    b = declaredField;
                    declaredField.setAccessible(true);
                } catch (Throwable unused) {
                    f793c = true;
                    return null;
                }
            }
            try {
                Object obj = b.get(view);
                if (obj instanceof View.AccessibilityDelegate) {
                    return (View.AccessibilityDelegate) obj;
                }
                return null;
            } catch (Throwable unused2) {
                f793c = true;
                return null;
            }
        }
        return null;
    }

    public static CharSequence g(View view) {
        return (CharSequence) new AccessibilityViewProperty(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28).c(view);
    }

    public static ArrayList h(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList();
            view.setTag(R.id.tag_accessibility_actions, arrayList2);
            return arrayList2;
        }
        return arrayList;
    }

    public static ColorStateList i(View view) {
        return Api21Impl.c(view);
    }

    public static PorterDuff.Mode j(View view) {
        return Api21Impl.d(view);
    }

    public static float k(View view) {
        return Api21Impl.e(view);
    }

    public static int l(RecyclerView recyclerView) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Api26Impl.a(recyclerView);
        }
        return 0;
    }

    public static String[] m(AppCompatEditText appCompatEditText) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.a(appCompatEditText);
        }
        return (String[]) appCompatEditText.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static WindowInsetsCompat n(View view) {
        return Api23Impl.a(view);
    }

    public static String o(View view) {
        return Api21Impl.f(view);
    }

    public static float p(View view) {
        return Api21Impl.g(view);
    }

    public static float q(View view) {
        return Api21Impl.h(view);
    }

    public static boolean r(View view) {
        return Api21Impl.i(view);
    }

    public static void s(View view, int i) {
        boolean z;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            if (g(view) != null && view.isShown() && view.getWindowVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
            int i2 = 32;
            if (view.getAccessibilityLiveRegion() == 0 && !z) {
                if (i == 32) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    view.onInitializeAccessibilityEvent(obtain);
                    obtain.setEventType(32);
                    obtain.setContentChangeTypes(i);
                    obtain.setSource(view);
                    view.onPopulateAccessibilityEvent(obtain);
                    obtain.getText().add(g(view));
                    accessibilityManager.sendAccessibilityEvent(obtain);
                    return;
                }
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                        return;
                    } catch (AbstractMethodError e2) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
            if (!z) {
                i2 = 2048;
            }
            obtain2.setEventType(i2);
            obtain2.setContentChangeTypes(i);
            if (z) {
                obtain2.getText().add(g(view));
                if (view.getImportantForAccessibility() == 0) {
                    view.setImportantForAccessibility(1);
                }
            }
            view.sendAccessibilityEventUnchecked(obtain2);
        }
    }

    public static WindowInsetsCompat t(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsets n = windowInsetsCompat.n();
        if (n != null) {
            WindowInsets b2 = Api20Impl.b(view, n);
            if (!b2.equals(n)) {
                return WindowInsetsCompat.o(view, b2);
            }
        }
        return windowInsetsCompat;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ContentInfoCompat u(View view, ContentInfoCompat contentInfoCompat) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + contentInfoCompat + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.b(view, contentInfoCompat);
        }
        OnReceiveContentListener onReceiveContentListener = (OnReceiveContentListener) view.getTag(R.id.tag_on_receive_content_listener);
        OnReceiveContentViewBehavior onReceiveContentViewBehavior = e;
        if (onReceiveContentListener != null) {
            ContentInfoCompat a2 = onReceiveContentListener.a(view, contentInfoCompat);
            if (a2 == null) {
                return null;
            }
            if (view instanceof OnReceiveContentViewBehavior) {
                onReceiveContentViewBehavior = (OnReceiveContentViewBehavior) view;
            }
            return onReceiveContentViewBehavior.a(a2);
        }
        if (view instanceof OnReceiveContentViewBehavior) {
            onReceiveContentViewBehavior = (OnReceiveContentViewBehavior) view;
        }
        return onReceiveContentViewBehavior.a(contentInfoCompat);
    }

    public static void v(View view, int i) {
        ArrayList h = h(view);
        for (int i2 = 0; i2 < h.size(); i2++) {
            if (((AccessibilityNodeInfoCompat.AccessibilityActionCompat) h.get(i2)).a() == i) {
                h.remove(i2);
                return;
            }
        }
    }

    public static void w(View view, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, AccessibilityViewCommand accessibilityViewCommand) {
        if (accessibilityViewCommand == null) {
            v(view, accessibilityActionCompat.a());
            s(view, 0);
            return;
        }
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat2 = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(null, accessibilityActionCompat.b, null, accessibilityViewCommand, accessibilityActionCompat.f836c);
        AccessibilityDelegateCompat e2 = e(view);
        if (e2 == null) {
            e2 = new AccessibilityDelegateCompat();
        }
        z(view, e2);
        v(view, accessibilityActionCompat2.a());
        h(view).add(accessibilityActionCompat2);
        s(view, 0);
    }

    public static void x(View view) {
        Api20Impl.c(view);
    }

    public static void y(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.b(view, context, iArr, attributeSet, typedArray, i, 0);
        }
    }

    public static void z(View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (accessibilityDelegateCompat == null && (f(view) instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter)) {
            accessibilityDelegateCompat = new AccessibilityDelegateCompat();
        }
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        if (accessibilityDelegateCompat == null) {
            accessibilityDelegate = null;
        } else {
            accessibilityDelegate = accessibilityDelegateCompat.b;
        }
        view.setAccessibilityDelegate(accessibilityDelegate);
    }
}
