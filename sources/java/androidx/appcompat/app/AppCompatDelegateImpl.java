package androidx.appcompat.app;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.i;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatViewInflater;
import androidx.appcompat.app.TwilightManager;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatRatingBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatToggleButton;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.DecorContentParent;
import androidx.appcompat.widget.FitWindowsViewGroup;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.ViewUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.NavUtils;
import androidx.core.content.PermissionChecker;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.os.LocaleListCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.WindowInsetsCompat;
import j$.util.Objects;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.WeakHashMap;
import kotlin.io.ConstantsKt;
import kotlin.time.DurationKt;

/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes.dex */
public class AppCompatDelegateImpl extends AppCompatDelegate implements MenuBuilder.Callback, LayoutInflater.Factory2 {
    public static final SimpleArrayMap m0 = new SimpleArrayMap(0);
    public static final int[] n0 = {R.attr.windowBackground};
    public static final boolean o0 = !"robolectric".equals(Build.FINGERPRINT);
    public PopupWindow A;
    public Runnable B;
    public boolean E;
    public ViewGroup F;
    public TextView G;
    public View H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public PanelFeatureState[] Q;
    public PanelFeatureState R;
    public boolean S;
    public boolean T;
    public boolean U;
    public boolean V;
    public Configuration W;
    public final int X;
    public int Y;
    public int Z;
    public boolean a0;
    public AutoTimeNightModeManager b0;
    public AutoBatteryNightModeManager c0;
    public boolean d0;
    public int e0;
    public boolean g0;
    public Rect h0;
    public Rect i0;
    public AppCompatViewInflater j0;
    public OnBackInvokedDispatcher k0;
    public OnBackInvokedCallback l0;
    public final Object n;
    public final Context o;
    public Window p;
    public AppCompatWindowCallback q;
    public final Object r;
    public ActionBar s;
    public SupportMenuInflater t;
    public CharSequence u;
    public DecorContentParent v;
    public ActionMenuPresenterCallback w;
    public PanelMenuPresenterCallback x;
    public ActionMode y;
    public ActionBarContextView z;
    public ViewPropertyAnimatorCompat C = null;
    public final boolean D = true;
    public final Runnable f0 = new AnonymousClass2();

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Thread.UncaughtExceptionHandler {
        @Override // java.lang.Thread.UncaughtExceptionHandler
        public final void uncaughtException(Thread thread, Throwable th) {
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Runnable {
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.e0 & 1) != 0) {
                appCompatDelegateImpl.P(0);
            }
            if ((appCompatDelegateImpl.e0 & ConstantsKt.DEFAULT_BLOCK_SIZE) != 0) {
                appCompatDelegateImpl.P(108);
            }
            appCompatDelegateImpl.d0 = false;
            appCompatDelegateImpl.e0 = 0;
        }
    }

    /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 implements FitWindowsViewGroup.OnFitSystemWindowsListener {
        @Override // androidx.appcompat.widget.FitWindowsViewGroup.OnFitSystemWindowsListener
        public final void a(Rect rect) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public class ActionBarDrawableToggleImpl implements ActionBarDrawerToggle.Delegate {
    }

    /* loaded from: classes.dex */
    public interface ActionBarMenuCallback {
        void a(int i);

        View onCreatePanelView(int i);
    }

    /* loaded from: classes.dex */
    public final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        public ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final void c(MenuBuilder menuBuilder, boolean z) {
            AppCompatDelegateImpl.this.L(menuBuilder);
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final boolean d(MenuBuilder menuBuilder) {
            Window.Callback callback = AppCompatDelegateImpl.this.p.getCallback();
            if (callback != null) {
                callback.onMenuOpened(108, menuBuilder);
                return true;
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public class ActionModeCallbackWrapperV9 implements ActionMode.Callback {

        /* renamed from: a, reason: collision with root package name */
        public final SupportActionModeWrapper.CallbackWrapper f93a;

        public ActionModeCallbackWrapperV9(SupportActionModeWrapper.CallbackWrapper callbackWrapper) {
            this.f93a = callbackWrapper;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final void a(ActionMode actionMode) {
            this.f93a.a(actionMode);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.A != null) {
                appCompatDelegateImpl.p.getDecorView().removeCallbacks(appCompatDelegateImpl.B);
            }
            if (appCompatDelegateImpl.z != null) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = appCompatDelegateImpl.C;
                if (viewPropertyAnimatorCompat != null) {
                    viewPropertyAnimatorCompat.b();
                }
                ViewPropertyAnimatorCompat a2 = ViewCompat.a(appCompatDelegateImpl.z);
                a2.a(0.0f);
                appCompatDelegateImpl.C = a2;
                a2.d(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.ActionModeCallbackWrapperV9.1
                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    public final void a() {
                        AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                        appCompatDelegateImpl2.z.setVisibility(8);
                        PopupWindow popupWindow = appCompatDelegateImpl2.A;
                        if (popupWindow != null) {
                            popupWindow.dismiss();
                        } else if (appCompatDelegateImpl2.z.getParent() instanceof View) {
                            ViewCompat.x((View) appCompatDelegateImpl2.z.getParent());
                        }
                        appCompatDelegateImpl2.z.g();
                        appCompatDelegateImpl2.C.d(null);
                        appCompatDelegateImpl2.C = null;
                        ViewCompat.x(appCompatDelegateImpl2.F);
                    }
                });
            }
            appCompatDelegateImpl.y = null;
            ViewCompat.x(appCompatDelegateImpl.F);
            appCompatDelegateImpl.d0();
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean b(ActionMode actionMode, Menu menu) {
            ViewCompat.x(AppCompatDelegateImpl.this.F);
            return this.f93a.b(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean c(ActionMode actionMode, MenuItem menuItem) {
            return this.f93a.c(actionMode, menuItem);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
        @DoNotInline
        public static boolean a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }

        @DoNotInline
        public static String b(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
        @DoNotInline
        public static void a(@NonNull Configuration configuration, @NonNull Configuration configuration2, @NonNull Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (!locales.equals(locales2)) {
                configuration3.setLocales(locales2);
                configuration3.locale = configuration2.locale;
            }
        }

        @DoNotInline
        public static LocaleListCompat b(Configuration configuration) {
            return LocaleListCompat.b(configuration.getLocales().toLanguageTags());
        }

        @DoNotInline
        public static void c(LocaleListCompat localeListCompat) {
            LocaleList.setDefault(LocaleList.forLanguageTags(localeListCompat.f()));
        }

        @DoNotInline
        public static void d(Configuration configuration, LocaleListCompat localeListCompat) {
            configuration.setLocales(LocaleList.forLanguageTags(localeListCompat.f()));
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
        public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            i = configuration.colorMode;
            int i7 = i & 3;
            i2 = configuration2.colorMode;
            int i8 = i2 & 3;
            if (i7 != i8) {
                i6 = configuration3.colorMode;
                configuration3.colorMode = i6 | i8;
            }
            i3 = configuration.colorMode;
            int i9 = i3 & 12;
            i4 = configuration2.colorMode;
            int i10 = i4 & 12;
            if (i9 != i10) {
                i5 = configuration3.colorMode;
                configuration3.colorMode = i5 | i10;
            }
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api33Impl {
        @DoNotInline
        public static OnBackInvokedDispatcher a(Activity activity) {
            return activity.getOnBackInvokedDispatcher();
        }

        @DoNotInline
        public static OnBackInvokedCallback b(Object obj, final AppCompatDelegateImpl appCompatDelegateImpl) {
            Objects.requireNonNull(appCompatDelegateImpl);
            OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: androidx.appcompat.app.c
                public final void onBackInvoked() {
                    AppCompatDelegateImpl.this.Y();
                }
            };
            i.c(obj).registerOnBackInvokedCallback(DurationKt.NANOS_IN_MILLIS, onBackInvokedCallback);
            return onBackInvokedCallback;
        }

        @DoNotInline
        public static void c(Object obj, Object obj2) {
            i.c(obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }
    }

    /* loaded from: classes.dex */
    public class AppCompatWindowCallback extends WindowCallbackWrapper {
        public ActionBarMenuCallback f;
        public boolean g;
        public boolean h;
        public boolean i;

        public AppCompatWindowCallback(Window.Callback callback) {
            super(callback);
        }

        public final void a(Window.Callback callback) {
            try {
                this.g = true;
                callback.onContentChanged();
            } finally {
                this.g = false;
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            boolean z = this.h;
            Window.Callback callback = this.f159c;
            if (z) {
                return callback.dispatchKeyEvent(keyEvent);
            }
            if (!AppCompatDelegateImpl.this.O(keyEvent) && !callback.dispatchKeyEvent(keyEvent)) {
                return false;
            }
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            if (!this.f159c.dispatchKeyShortcutEvent(keyEvent)) {
                int keyCode = keyEvent.getKeyCode();
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                appCompatDelegateImpl.V();
                ActionBar actionBar = appCompatDelegateImpl.s;
                if (actionBar == null || !actionBar.m(keyCode, keyEvent)) {
                    PanelFeatureState panelFeatureState = appCompatDelegateImpl.R;
                    if (panelFeatureState != null && appCompatDelegateImpl.a0(panelFeatureState, keyEvent.getKeyCode(), keyEvent)) {
                        PanelFeatureState panelFeatureState2 = appCompatDelegateImpl.R;
                        if (panelFeatureState2 != null) {
                            panelFeatureState2.l = true;
                            return true;
                        }
                    } else {
                        if (appCompatDelegateImpl.R == null) {
                            PanelFeatureState U = appCompatDelegateImpl.U(0);
                            appCompatDelegateImpl.b0(U, keyEvent);
                            boolean a0 = appCompatDelegateImpl.a0(U, keyEvent.getKeyCode(), keyEvent);
                            U.k = false;
                            if (a0) {
                            }
                        }
                        return false;
                    }
                }
            }
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final void onContentChanged() {
            if (this.g) {
                this.f159c.onContentChanged();
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean onCreatePanelMenu(int i, Menu menu) {
            if (i == 0 && !(menu instanceof MenuBuilder)) {
                return false;
            }
            return this.f159c.onCreatePanelMenu(i, menu);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final View onCreatePanelView(int i) {
            View onCreatePanelView;
            ActionBarMenuCallback actionBarMenuCallback = this.f;
            if (actionBarMenuCallback != null && (onCreatePanelView = actionBarMenuCallback.onCreatePanelView(i)) != null) {
                return onCreatePanelView;
            }
            return this.f159c.onCreatePanelView(i);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean onMenuOpened(int i, Menu menu) {
            super.onMenuOpened(i, menu);
            if (i == 108) {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                appCompatDelegateImpl.V();
                ActionBar actionBar = appCompatDelegateImpl.s;
                if (actionBar != null) {
                    actionBar.g(true);
                }
            }
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final void onPanelClosed(int i, Menu menu) {
            if (this.i) {
                this.f159c.onPanelClosed(i, menu);
                return;
            }
            super.onPanelClosed(i, menu);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (i == 108) {
                appCompatDelegateImpl.V();
                ActionBar actionBar = appCompatDelegateImpl.s;
                if (actionBar != null) {
                    actionBar.g(false);
                    return;
                }
                return;
            }
            if (i == 0) {
                PanelFeatureState U = appCompatDelegateImpl.U(i);
                if (U.m) {
                    appCompatDelegateImpl.M(U, false);
                }
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            MenuBuilder menuBuilder;
            if (menu instanceof MenuBuilder) {
                menuBuilder = (MenuBuilder) menu;
            } else {
                menuBuilder = null;
            }
            if (i == 0 && menuBuilder == null) {
                return false;
            }
            if (menuBuilder != null) {
                menuBuilder.x = true;
            }
            ActionBarMenuCallback actionBarMenuCallback = this.f;
            if (actionBarMenuCallback != null) {
                actionBarMenuCallback.a(i);
            }
            boolean onPreparePanel = this.f159c.onPreparePanel(i, view, menu);
            if (menuBuilder != null) {
                menuBuilder.x = false;
            }
            return onPreparePanel;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final void onProvideKeyboardShortcuts(List list, Menu menu, int i) {
            MenuBuilder menuBuilder = AppCompatDelegateImpl.this.U(0).h;
            if (menuBuilder != null) {
                super.onProvideKeyboardShortcuts(list, menuBuilder, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i);
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, androidx.appcompat.view.StandaloneActionMode, androidx.appcompat.view.menu.MenuBuilder$Callback, androidx.appcompat.view.ActionMode] */
        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final android.view.ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            ViewGroup viewGroup;
            final AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.D && i == 0) {
                Context context = appCompatDelegateImpl.o;
                SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(context, callback);
                androidx.appcompat.view.ActionMode actionMode = appCompatDelegateImpl.y;
                if (actionMode != null) {
                    actionMode.c();
                }
                ActionModeCallbackWrapperV9 actionModeCallbackWrapperV9 = new ActionModeCallbackWrapperV9(callbackWrapper);
                appCompatDelegateImpl.V();
                ActionBar actionBar = appCompatDelegateImpl.s;
                if (actionBar != null) {
                    appCompatDelegateImpl.y = actionBar.w(actionModeCallbackWrapperV9);
                }
                if (appCompatDelegateImpl.y == null) {
                    ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = appCompatDelegateImpl.C;
                    if (viewPropertyAnimatorCompat != null) {
                        viewPropertyAnimatorCompat.b();
                    }
                    androidx.appcompat.view.ActionMode actionMode2 = appCompatDelegateImpl.y;
                    if (actionMode2 != null) {
                        actionMode2.c();
                    }
                    if (appCompatDelegateImpl.z == null) {
                        if (appCompatDelegateImpl.N) {
                            TypedValue typedValue = new TypedValue();
                            Resources.Theme theme = context.getTheme();
                            theme.resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
                            if (typedValue.resourceId != 0) {
                                Resources.Theme newTheme = context.getResources().newTheme();
                                newTheme.setTo(theme);
                                newTheme.applyStyle(typedValue.resourceId, true);
                                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                                contextThemeWrapper.getTheme().setTo(newTheme);
                                context = contextThemeWrapper;
                            }
                            appCompatDelegateImpl.z = new ActionBarContextView(context, null);
                            PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, androidx.appcompat.R.attr.actionModePopupWindowStyle);
                            appCompatDelegateImpl.A = popupWindow;
                            popupWindow.setWindowLayoutType(2);
                            appCompatDelegateImpl.A.setContentView(appCompatDelegateImpl.z);
                            appCompatDelegateImpl.A.setWidth(-1);
                            context.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarSize, typedValue, true);
                            appCompatDelegateImpl.z.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                            appCompatDelegateImpl.A.setHeight(-2);
                            appCompatDelegateImpl.B = new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ViewGroup viewGroup2;
                                    AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                                    appCompatDelegateImpl2.A.showAtLocation(appCompatDelegateImpl2.z, 55, 0, 0);
                                    ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = appCompatDelegateImpl2.C;
                                    if (viewPropertyAnimatorCompat2 != null) {
                                        viewPropertyAnimatorCompat2.b();
                                    }
                                    if (appCompatDelegateImpl2.E && (viewGroup2 = appCompatDelegateImpl2.F) != null && viewGroup2.isLaidOut()) {
                                        appCompatDelegateImpl2.z.setAlpha(0.0f);
                                        ViewPropertyAnimatorCompat a2 = ViewCompat.a(appCompatDelegateImpl2.z);
                                        a2.a(1.0f);
                                        appCompatDelegateImpl2.C = a2;
                                        a2.d(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.6.1
                                            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                                            public final void a() {
                                                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                                                appCompatDelegateImpl3.z.setAlpha(1.0f);
                                                appCompatDelegateImpl3.C.d(null);
                                                appCompatDelegateImpl3.C = null;
                                            }

                                            @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                                            public final void c() {
                                                AppCompatDelegateImpl.this.z.setVisibility(0);
                                            }
                                        });
                                        return;
                                    }
                                    appCompatDelegateImpl2.z.setAlpha(1.0f);
                                    appCompatDelegateImpl2.z.setVisibility(0);
                                }
                            };
                        } else {
                            ViewStubCompat viewStubCompat = (ViewStubCompat) appCompatDelegateImpl.F.findViewById(androidx.appcompat.R.id.action_mode_bar_stub);
                            if (viewStubCompat != null) {
                                appCompatDelegateImpl.V();
                                ActionBar actionBar2 = appCompatDelegateImpl.s;
                                Context i2 = actionBar2 != null ? actionBar2.i() : null;
                                if (i2 != null) {
                                    context = i2;
                                }
                                viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                                appCompatDelegateImpl.z = (ActionBarContextView) viewStubCompat.a();
                            }
                        }
                    }
                    if (appCompatDelegateImpl.z != null) {
                        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = appCompatDelegateImpl.C;
                        if (viewPropertyAnimatorCompat2 != null) {
                            viewPropertyAnimatorCompat2.b();
                        }
                        appCompatDelegateImpl.z.g();
                        Context context2 = appCompatDelegateImpl.z.getContext();
                        ActionBarContextView actionBarContextView = appCompatDelegateImpl.z;
                        ?? obj = new Object();
                        obj.g = context2;
                        obj.h = actionBarContextView;
                        obj.i = actionModeCallbackWrapperV9;
                        MenuBuilder menuBuilder = new MenuBuilder(actionBarContextView.getContext());
                        menuBuilder.l = 1;
                        obj.l = menuBuilder;
                        menuBuilder.e = obj;
                        if (callbackWrapper.e(obj, menuBuilder)) {
                            obj.i();
                            appCompatDelegateImpl.z.e(obj);
                            appCompatDelegateImpl.y = obj;
                            if (appCompatDelegateImpl.E && (viewGroup = appCompatDelegateImpl.F) != null && viewGroup.isLaidOut()) {
                                appCompatDelegateImpl.z.setAlpha(0.0f);
                                ViewPropertyAnimatorCompat a2 = ViewCompat.a(appCompatDelegateImpl.z);
                                a2.a(1.0f);
                                appCompatDelegateImpl.C = a2;
                                a2.d(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.7
                                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                                    public final void a() {
                                        AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                                        appCompatDelegateImpl2.z.setAlpha(1.0f);
                                        appCompatDelegateImpl2.C.d(null);
                                        appCompatDelegateImpl2.C = null;
                                    }

                                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                                    public final void c() {
                                        AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                                        appCompatDelegateImpl2.z.setVisibility(0);
                                        if (appCompatDelegateImpl2.z.getParent() instanceof View) {
                                            ViewCompat.x((View) appCompatDelegateImpl2.z.getParent());
                                        }
                                    }
                                });
                            } else {
                                appCompatDelegateImpl.z.setAlpha(1.0f);
                                appCompatDelegateImpl.z.setVisibility(0);
                                if (appCompatDelegateImpl.z.getParent() instanceof View) {
                                    ViewCompat.x((View) appCompatDelegateImpl.z.getParent());
                                }
                            }
                            if (appCompatDelegateImpl.A != null) {
                                appCompatDelegateImpl.p.getDecorView().post(appCompatDelegateImpl.B);
                            }
                        } else {
                            appCompatDelegateImpl.y = null;
                        }
                    }
                    appCompatDelegateImpl.d0();
                    appCompatDelegateImpl.y = appCompatDelegateImpl.y;
                }
                appCompatDelegateImpl.d0();
                androidx.appcompat.view.ActionMode actionMode3 = appCompatDelegateImpl.y;
                if (actionMode3 != null) {
                    return callbackWrapper.d(actionMode3);
                }
                return null;
            }
            return super.onWindowStartingActionMode(callback, i);
        }
    }

    /* loaded from: classes.dex */
    public class AutoBatteryNightModeManager extends AutoNightModeManager {

        /* renamed from: c, reason: collision with root package name */
        public final PowerManager f95c;

        public AutoBatteryNightModeManager(Context context) {
            super();
            this.f95c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final int c() {
            if (Api21Impl.a(this.f95c)) {
                return 2;
            }
            return 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final void d() {
            AppCompatDelegateImpl.this.H(true, true);
        }
    }

    @RestrictTo
    @VisibleForTesting
    /* loaded from: classes.dex */
    public abstract class AutoNightModeManager {

        /* renamed from: a, reason: collision with root package name */
        public BroadcastReceiver f96a;

        public AutoNightModeManager() {
        }

        public final void a() {
            BroadcastReceiver broadcastReceiver = this.f96a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.o.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f96a = null;
            }
        }

        public abstract IntentFilter b();

        public abstract int c();

        public abstract void d();

        public final void e() {
            a();
            IntentFilter b = b();
            if (b.countActions() == 0) {
                return;
            }
            if (this.f96a == null) {
                this.f96a = new BroadcastReceiver() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager.1
                    @Override // android.content.BroadcastReceiver
                    public final void onReceive(Context context, Intent intent) {
                        AutoNightModeManager.this.d();
                    }
                };
            }
            AppCompatDelegateImpl.this.o.registerReceiver(this.f96a, b);
        }
    }

    /* loaded from: classes.dex */
    public class AutoTimeNightModeManager extends AutoNightModeManager {

        /* renamed from: c, reason: collision with root package name */
        public final TwilightManager f98c;

        public AutoTimeNightModeManager(TwilightManager twilightManager) {
            super();
            this.f98c = twilightManager;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        /* JADX WARN: Type inference failed for: r3v10, types: [java.lang.Object, androidx.appcompat.app.TwilightCalculator] */
        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final int c() {
            Location location;
            boolean z;
            long j;
            Location location2;
            TwilightManager twilightManager = this.f98c;
            TwilightManager.TwilightState twilightState = twilightManager.f119c;
            LocationManager locationManager = twilightManager.b;
            if (twilightState.b > System.currentTimeMillis()) {
                z = twilightState.f120a;
            } else {
                Context context = twilightManager.f118a;
                Location location3 = null;
                if (PermissionChecker.a(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                    try {
                    } catch (Exception e) {
                        Log.d("TwilightManager", "Failed to get last known location", e);
                    }
                    if (locationManager.isProviderEnabled("network")) {
                        location2 = locationManager.getLastKnownLocation("network");
                        location = location2;
                    }
                    location2 = null;
                    location = location2;
                } else {
                    location = null;
                }
                if (PermissionChecker.a(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                    try {
                        if (locationManager.isProviderEnabled("gps")) {
                            location3 = locationManager.getLastKnownLocation("gps");
                        }
                    } catch (Exception e2) {
                        Log.d("TwilightManager", "Failed to get last known location", e2);
                    }
                }
                if (location3 == null || location == null ? location3 != null : location3.getTime() > location.getTime()) {
                    location = location3;
                }
                z = false;
                if (location != null) {
                    long currentTimeMillis = System.currentTimeMillis();
                    if (TwilightCalculator.d == null) {
                        TwilightCalculator.d = new Object();
                    }
                    TwilightCalculator twilightCalculator = TwilightCalculator.d;
                    twilightCalculator.a(location.getLatitude(), location.getLongitude(), currentTimeMillis - 86400000);
                    twilightCalculator.a(location.getLatitude(), location.getLongitude(), currentTimeMillis);
                    if (twilightCalculator.f117c == 1) {
                        z = true;
                    }
                    long j2 = twilightCalculator.b;
                    long j3 = twilightCalculator.f116a;
                    twilightCalculator.a(location.getLatitude(), location.getLongitude(), currentTimeMillis + 86400000);
                    long j4 = twilightCalculator.b;
                    if (j2 != -1 && j3 != -1) {
                        if (currentTimeMillis > j3) {
                            j2 = j4;
                        } else if (currentTimeMillis > j2) {
                            j2 = j3;
                        }
                        j = j2 + 60000;
                    } else {
                        j = currentTimeMillis + 43200000;
                    }
                    twilightState.f120a = z;
                    twilightState.b = j;
                } else {
                    Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                    int i = Calendar.getInstance().get(11);
                    if (i < 6 || i >= 22) {
                        z = true;
                    }
                }
            }
            if (!z) {
                return 1;
            }
            return 2;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final void d() {
            AppCompatDelegateImpl.this.H(true, true);
        }
    }

    /* loaded from: classes.dex */
    public class ListMenuDecorView extends ContentFrameLayout {
        public ListMenuDecorView(ContextThemeWrapper contextThemeWrapper) {
            super(contextThemeWrapper, null);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            if (!AppCompatDelegateImpl.this.O(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
                return false;
            }
            return true;
        }

        @Override // android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                    appCompatDelegateImpl.M(appCompatDelegateImpl.U(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public final void setBackgroundResource(int i) {
            setBackgroundDrawable(AppCompatResources.a(getContext(), i));
        }
    }

    /* loaded from: classes.dex */
    public static final class PanelFeatureState {

        /* renamed from: a, reason: collision with root package name */
        public int f99a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f100c;
        public int d;
        public ViewGroup e;
        public View f;
        public View g;
        public MenuBuilder h;
        public ListMenuPresenter i;
        public ContextThemeWrapper j;
        public boolean k;
        public boolean l;
        public boolean m;
        public boolean n;
        public boolean o;
        public Bundle p;

        @SuppressLint({"BanParcelableUsage"})
        /* loaded from: classes.dex */
        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Object();

            /* renamed from: c, reason: collision with root package name */
            public int f101c;
            public boolean f;
            public Bundle g;

            /* renamed from: androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
                @Override // android.os.Parcelable.ClassLoaderCreator
                public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.a(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                public final Object[] newArray(int i) {
                    return new SavedState[i];
                }

                @Override // android.os.Parcelable.Creator
                public final Object createFromParcel(Parcel parcel) {
                    return SavedState.a(parcel, null);
                }
            }

            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState] */
            public static SavedState a(Parcel parcel, ClassLoader classLoader) {
                ?? obj = new Object();
                obj.f101c = parcel.readInt();
                boolean z = true;
                if (parcel.readInt() != 1) {
                    z = false;
                }
                obj.f = z;
                if (z) {
                    obj.g = parcel.readBundle(classLoader);
                }
                return obj;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.f101c);
                parcel.writeInt(this.f ? 1 : 0);
                if (this.f) {
                    parcel.writeBundle(this.g);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public final class PanelMenuPresenterCallback implements MenuPresenter.Callback {
        public PanelMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final void c(MenuBuilder menuBuilder, boolean z) {
            boolean z2;
            int i;
            PanelFeatureState panelFeatureState;
            MenuBuilder k = menuBuilder.k();
            int i2 = 0;
            if (k != menuBuilder) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                menuBuilder = k;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            PanelFeatureState[] panelFeatureStateArr = appCompatDelegateImpl.Q;
            if (panelFeatureStateArr != null) {
                i = panelFeatureStateArr.length;
            } else {
                i = 0;
            }
            while (true) {
                if (i2 < i) {
                    panelFeatureState = panelFeatureStateArr[i2];
                    if (panelFeatureState != null && panelFeatureState.h == menuBuilder) {
                        break;
                    } else {
                        i2++;
                    }
                } else {
                    panelFeatureState = null;
                    break;
                }
            }
            if (panelFeatureState != null) {
                if (z2) {
                    appCompatDelegateImpl.K(panelFeatureState.f99a, panelFeatureState, k);
                    appCompatDelegateImpl.M(panelFeatureState, true);
                } else {
                    appCompatDelegateImpl.M(panelFeatureState, z);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final boolean d(MenuBuilder menuBuilder) {
            Window.Callback callback;
            if (menuBuilder == menuBuilder.k()) {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                if (appCompatDelegateImpl.K && (callback = appCompatDelegateImpl.p.getCallback()) != null && !appCompatDelegateImpl.V) {
                    callback.onMenuOpened(108, menuBuilder);
                    return true;
                }
                return true;
            }
            return true;
        }
    }

    public AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback, Object obj) {
        AppCompatActivity appCompatActivity = null;
        this.X = -100;
        this.o = context;
        this.r = appCompatCallback;
        this.n = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (context instanceof AppCompatActivity) {
                        appCompatActivity = (AppCompatActivity) context;
                        break;
                    } else if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    break;
                }
            }
            if (appCompatActivity != null) {
                this.X = appCompatActivity.V().j();
            }
        }
        if (this.X == -100) {
            String name = this.n.getClass().getName();
            SimpleArrayMap simpleArrayMap = m0;
            Integer num = (Integer) simpleArrayMap.get(name);
            if (num != null) {
                this.X = num.intValue();
                simpleArrayMap.remove(this.n.getClass().getName());
            }
        }
        if (window != null) {
            I(window);
        }
        AppCompatDrawableManager.d();
    }

    public static LocaleListCompat J(Context context) {
        LocaleListCompat localeListCompat;
        LocaleListCompat b;
        Locale c2;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33 || (localeListCompat = AppCompatDelegate.g) == null) {
            return null;
        }
        LocaleListCompat T = T(context.getApplicationContext().getResources().getConfiguration());
        if (i >= 24) {
            if (localeListCompat.d()) {
                b = LocaleListCompat.b;
            } else {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                for (int i2 = 0; i2 < T.e() + localeListCompat.e(); i2++) {
                    if (i2 < localeListCompat.e()) {
                        c2 = localeListCompat.c(i2);
                    } else {
                        c2 = T.c(i2 - localeListCompat.e());
                    }
                    if (c2 != null) {
                        linkedHashSet.add(c2);
                    }
                }
                b = LocaleListCompat.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
            }
        } else if (localeListCompat.d()) {
            b = LocaleListCompat.b;
        } else {
            b = LocaleListCompat.b(Api21Impl.b(localeListCompat.c(0)));
        }
        if (b.d()) {
            return T;
        }
        return b;
    }

    public static Configuration N(Context context, int i, LocaleListCompat localeListCompat, Configuration configuration, boolean z) {
        int i2;
        if (i != 1) {
            if (i != 2) {
                if (z) {
                    i2 = 0;
                } else {
                    i2 = context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
                }
            } else {
                i2 = 32;
            }
        } else {
            i2 = 16;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        if (localeListCompat != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                Api24Impl.d(configuration2, localeListCompat);
                return configuration2;
            }
            configuration2.setLocale(localeListCompat.c(0));
            configuration2.setLayoutDirection(localeListCompat.c(0));
        }
        return configuration2;
    }

    public static LocaleListCompat T(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.b(configuration);
        }
        return LocaleListCompat.b(Api21Impl.b(configuration.locale));
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void A(int i) {
        Q();
        ViewGroup viewGroup = (ViewGroup) this.F.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.o).inflate(i, viewGroup);
        this.q.a(this.p.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void B(View view) {
        Q();
        ViewGroup viewGroup = (ViewGroup) this.F.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.q.a(this.p.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void C(View view, ViewGroup.LayoutParams layoutParams) {
        Q();
        ViewGroup viewGroup = (ViewGroup) this.F.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.q.a(this.p.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void D(Toolbar toolbar) {
        CharSequence charSequence;
        Object obj = this.n;
        if (!(obj instanceof Activity)) {
            return;
        }
        V();
        ActionBar actionBar = this.s;
        if (!(actionBar instanceof WindowDecorActionBar)) {
            this.t = null;
            if (actionBar != null) {
                actionBar.l();
            }
            this.s = null;
            if (toolbar != null) {
                if (obj instanceof Activity) {
                    charSequence = ((Activity) obj).getTitle();
                } else {
                    charSequence = this.u;
                }
                ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, charSequence, this.q);
                this.s = toolbarActionBar;
                this.q.f = toolbarActionBar.f110c;
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                this.q.f = null;
            }
            o();
            return;
        }
        throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void E(int i) {
        this.Y = i;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void F(CharSequence charSequence) {
        this.u = charSequence;
        DecorContentParent decorContentParent = this.v;
        if (decorContentParent != null) {
            decorContentParent.setWindowTitle(charSequence);
            return;
        }
        ActionBar actionBar = this.s;
        if (actionBar != null) {
            actionBar.v(charSequence);
            return;
        }
        TextView textView = this.G;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0226  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0102 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean H(boolean r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.H(boolean, boolean):boolean");
    }

    public final void I(Window window) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        if (this.p == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof AppCompatWindowCallback)) {
                AppCompatWindowCallback appCompatWindowCallback = new AppCompatWindowCallback(callback);
                this.q = appCompatWindowCallback;
                window.setCallback(appCompatWindowCallback);
                Context context = this.o;
                TintTypedArray tintTypedArray = new TintTypedArray(context, context.obtainStyledAttributes((AttributeSet) null, n0));
                Drawable c2 = tintTypedArray.c(0);
                if (c2 != null) {
                    window.setBackgroundDrawable(c2);
                }
                tintTypedArray.f();
                this.p = window;
                if (Build.VERSION.SDK_INT >= 33 && (onBackInvokedDispatcher = this.k0) == null) {
                    if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.l0) != null) {
                        Api33Impl.c(onBackInvokedDispatcher, onBackInvokedCallback);
                        this.l0 = null;
                    }
                    Object obj = this.n;
                    if (obj instanceof Activity) {
                        Activity activity = (Activity) obj;
                        if (activity.getWindow() != null) {
                            this.k0 = Api33Impl.a(activity);
                            d0();
                            return;
                        }
                    }
                    this.k0 = null;
                    d0();
                    return;
                }
                return;
            }
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }

    public final void K(int i, PanelFeatureState panelFeatureState, MenuBuilder menuBuilder) {
        if (menuBuilder == null) {
            if (panelFeatureState == null && i >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.Q;
                if (i < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i];
                }
            }
            if (panelFeatureState != null) {
                menuBuilder = panelFeatureState.h;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.m) && !this.V) {
            AppCompatWindowCallback appCompatWindowCallback = this.q;
            Window.Callback callback = this.p.getCallback();
            appCompatWindowCallback.getClass();
            try {
                appCompatWindowCallback.i = true;
                callback.onPanelClosed(i, menuBuilder);
            } finally {
                appCompatWindowCallback.i = false;
            }
        }
    }

    public final void L(MenuBuilder menuBuilder) {
        if (this.P) {
            return;
        }
        this.P = true;
        this.v.i();
        Window.Callback callback = this.p.getCallback();
        if (callback != null && !this.V) {
            callback.onPanelClosed(108, menuBuilder);
        }
        this.P = false;
    }

    public final void M(PanelFeatureState panelFeatureState, boolean z) {
        ViewGroup viewGroup;
        DecorContentParent decorContentParent;
        if (z && panelFeatureState.f99a == 0 && (decorContentParent = this.v) != null && decorContentParent.b()) {
            L(panelFeatureState.h);
            return;
        }
        WindowManager windowManager = (WindowManager) this.o.getSystemService("window");
        if (windowManager != null && panelFeatureState.m && (viewGroup = panelFeatureState.e) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                K(panelFeatureState.f99a, panelFeatureState, null);
            }
        }
        panelFeatureState.k = false;
        panelFeatureState.l = false;
        panelFeatureState.m = false;
        panelFeatureState.f = null;
        panelFeatureState.n = true;
        if (this.R == panelFeatureState) {
            this.R = null;
        }
        if (panelFeatureState.f99a == 0) {
            d0();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
    
        if (r4.dispatchKeyEvent(r7) != false) goto L82;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean O(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.O(android.view.KeyEvent):boolean");
    }

    public final void P(int i) {
        PanelFeatureState U = U(i);
        if (U.h != null) {
            Bundle bundle = new Bundle();
            U.h.t(bundle);
            if (bundle.size() > 0) {
                U.p = bundle;
            }
            U.h.w();
            U.h.clear();
        }
        U.o = true;
        U.n = true;
        if ((i == 108 || i == 0) && this.v != null) {
            PanelFeatureState U2 = U(0);
            U2.k = false;
            b0(U2, null);
        }
    }

    public final void Q() {
        ViewGroup viewGroup;
        CharSequence charSequence;
        Context context;
        if (!this.E) {
            int[] iArr = androidx.appcompat.R.styleable.AppCompatTheme;
            Context context2 = this.o;
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(iArr);
            if (obtainStyledAttributes.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBar)) {
                if (obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowNoTitle, false)) {
                    y(1);
                } else if (obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBar, false)) {
                    y(108);
                }
                if (obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
                    y(109);
                }
                if (obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
                    y(10);
                }
                this.N = obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_android_windowIsFloating, false);
                obtainStyledAttributes.recycle();
                R();
                this.p.getDecorView();
                LayoutInflater from = LayoutInflater.from(context2);
                if (!this.O) {
                    if (this.N) {
                        viewGroup = (ViewGroup) from.inflate(androidx.appcompat.R.layout.abc_dialog_title_material, (ViewGroup) null);
                        this.L = false;
                        this.K = false;
                    } else if (this.K) {
                        TypedValue typedValue = new TypedValue();
                        context2.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            context = new ContextThemeWrapper(context2, typedValue.resourceId);
                        } else {
                            context = context2;
                        }
                        viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(androidx.appcompat.R.layout.abc_screen_toolbar, (ViewGroup) null);
                        DecorContentParent decorContentParent = (DecorContentParent) viewGroup.findViewById(androidx.appcompat.R.id.decor_content_parent);
                        this.v = decorContentParent;
                        decorContentParent.setWindowCallback(this.p.getCallback());
                        if (this.L) {
                            this.v.h(109);
                        }
                        if (this.I) {
                            this.v.h(2);
                        }
                        if (this.J) {
                            this.v.h(5);
                        }
                    } else {
                        viewGroup = null;
                    }
                } else {
                    viewGroup = this.M ? (ViewGroup) from.inflate(androidx.appcompat.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(androidx.appcompat.R.layout.abc_screen_simple, (ViewGroup) null);
                }
                if (viewGroup != null) {
                    ViewCompat.G(viewGroup, new OnApplyWindowInsetsListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.3
                        @Override // androidx.core.view.OnApplyWindowInsetsListener
                        public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
                            boolean z;
                            WindowInsetsCompat windowInsetsCompat2;
                            int g;
                            int h;
                            boolean z2;
                            int color;
                            int i = windowInsetsCompat.i();
                            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                            Context context3 = appCompatDelegateImpl.o;
                            int i2 = windowInsetsCompat.i();
                            ActionBarContextView actionBarContextView = appCompatDelegateImpl.z;
                            int i3 = 8;
                            if (actionBarContextView != null && (actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) appCompatDelegateImpl.z.getLayoutParams();
                                boolean z3 = true;
                                if (appCompatDelegateImpl.z.isShown()) {
                                    if (appCompatDelegateImpl.h0 == null) {
                                        appCompatDelegateImpl.h0 = new Rect();
                                        appCompatDelegateImpl.i0 = new Rect();
                                    }
                                    Rect rect = appCompatDelegateImpl.h0;
                                    Rect rect2 = appCompatDelegateImpl.i0;
                                    rect.set(windowInsetsCompat.g(), windowInsetsCompat.i(), windowInsetsCompat.h(), windowInsetsCompat.f());
                                    ViewUtils.a(appCompatDelegateImpl.F, rect, rect2);
                                    int i4 = rect.top;
                                    int i5 = rect.left;
                                    int i6 = rect.right;
                                    WindowInsetsCompat n = ViewCompat.n(appCompatDelegateImpl.F);
                                    if (n == null) {
                                        g = 0;
                                    } else {
                                        g = n.g();
                                    }
                                    if (n == null) {
                                        h = 0;
                                    } else {
                                        h = n.h();
                                    }
                                    if (marginLayoutParams.topMargin == i4 && marginLayoutParams.leftMargin == i5 && marginLayoutParams.rightMargin == i6) {
                                        z2 = false;
                                    } else {
                                        marginLayoutParams.topMargin = i4;
                                        marginLayoutParams.leftMargin = i5;
                                        marginLayoutParams.rightMargin = i6;
                                        z2 = true;
                                    }
                                    if (i4 > 0 && appCompatDelegateImpl.H == null) {
                                        View view2 = new View(context3);
                                        appCompatDelegateImpl.H = view2;
                                        view2.setVisibility(8);
                                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                                        layoutParams.leftMargin = g;
                                        layoutParams.rightMargin = h;
                                        appCompatDelegateImpl.F.addView(appCompatDelegateImpl.H, -1, layoutParams);
                                    } else {
                                        View view3 = appCompatDelegateImpl.H;
                                        if (view3 != null) {
                                            ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view3.getLayoutParams();
                                            int i7 = marginLayoutParams2.height;
                                            int i8 = marginLayoutParams.topMargin;
                                            if (i7 != i8 || marginLayoutParams2.leftMargin != g || marginLayoutParams2.rightMargin != h) {
                                                marginLayoutParams2.height = i8;
                                                marginLayoutParams2.leftMargin = g;
                                                marginLayoutParams2.rightMargin = h;
                                                appCompatDelegateImpl.H.setLayoutParams(marginLayoutParams2);
                                            }
                                        }
                                    }
                                    View view4 = appCompatDelegateImpl.H;
                                    if (view4 == null) {
                                        z3 = false;
                                    }
                                    if (z3 && view4.getVisibility() != 0) {
                                        View view5 = appCompatDelegateImpl.H;
                                        if ((view5.getWindowSystemUiVisibility() & 8192) != 0) {
                                            color = context3.getColor(androidx.appcompat.R.color.abc_decor_view_status_guard_light);
                                        } else {
                                            color = context3.getColor(androidx.appcompat.R.color.abc_decor_view_status_guard);
                                        }
                                        view5.setBackgroundColor(color);
                                    }
                                    if (!appCompatDelegateImpl.M && z3) {
                                        i2 = 0;
                                    }
                                    z = z3;
                                    z3 = z2;
                                } else if (marginLayoutParams.topMargin != 0) {
                                    marginLayoutParams.topMargin = 0;
                                    z = false;
                                } else {
                                    z = false;
                                    z3 = false;
                                }
                                if (z3) {
                                    appCompatDelegateImpl.z.setLayoutParams(marginLayoutParams);
                                }
                            } else {
                                z = false;
                            }
                            View view6 = appCompatDelegateImpl.H;
                            if (view6 != null) {
                                if (z) {
                                    i3 = 0;
                                }
                                view6.setVisibility(i3);
                            }
                            if (i != i2) {
                                windowInsetsCompat2 = windowInsetsCompat.m(windowInsetsCompat.g(), i2, windowInsetsCompat.h(), windowInsetsCompat.f());
                            } else {
                                windowInsetsCompat2 = windowInsetsCompat;
                            }
                            return ViewCompat.t(view, windowInsetsCompat2);
                        }
                    });
                    if (this.v == null) {
                        this.G = (TextView) viewGroup.findViewById(androidx.appcompat.R.id.title);
                    }
                    boolean z = ViewUtils.f351a;
                    try {
                        Method method = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
                        if (!method.isAccessible()) {
                            method.setAccessible(true);
                        }
                        method.invoke(viewGroup, null);
                    } catch (IllegalAccessException e) {
                        Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e);
                    } catch (NoSuchMethodException unused) {
                        Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
                    } catch (InvocationTargetException e2) {
                        Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e2);
                    }
                    ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(androidx.appcompat.R.id.action_bar_activity_content);
                    ViewGroup viewGroup2 = (ViewGroup) this.p.findViewById(R.id.content);
                    if (viewGroup2 != null) {
                        while (viewGroup2.getChildCount() > 0) {
                            View childAt = viewGroup2.getChildAt(0);
                            viewGroup2.removeViewAt(0);
                            contentFrameLayout.addView(childAt);
                        }
                        viewGroup2.setId(-1);
                        contentFrameLayout.setId(R.id.content);
                        if (viewGroup2 instanceof FrameLayout) {
                            ((FrameLayout) viewGroup2).setForeground(null);
                        }
                    }
                    this.p.setContentView(viewGroup);
                    contentFrameLayout.setAttachListener(new ContentFrameLayout.OnAttachListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.5
                        @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
                        public final void onDetachedFromWindow() {
                            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                            DecorContentParent decorContentParent2 = appCompatDelegateImpl.v;
                            if (decorContentParent2 != null) {
                                decorContentParent2.i();
                            }
                            if (appCompatDelegateImpl.A != null) {
                                appCompatDelegateImpl.p.getDecorView().removeCallbacks(appCompatDelegateImpl.B);
                                if (appCompatDelegateImpl.A.isShowing()) {
                                    try {
                                        appCompatDelegateImpl.A.dismiss();
                                    } catch (IllegalArgumentException unused2) {
                                    }
                                }
                                appCompatDelegateImpl.A = null;
                            }
                            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = appCompatDelegateImpl.C;
                            if (viewPropertyAnimatorCompat != null) {
                                viewPropertyAnimatorCompat.b();
                            }
                            MenuBuilder menuBuilder = appCompatDelegateImpl.U(0).h;
                            if (menuBuilder != null) {
                                menuBuilder.c(true);
                            }
                        }
                    });
                    this.F = viewGroup;
                    Object obj = this.n;
                    if (obj instanceof Activity) {
                        charSequence = ((Activity) obj).getTitle();
                    } else {
                        charSequence = this.u;
                    }
                    if (!TextUtils.isEmpty(charSequence)) {
                        DecorContentParent decorContentParent2 = this.v;
                        if (decorContentParent2 != null) {
                            decorContentParent2.setWindowTitle(charSequence);
                        } else {
                            ActionBar actionBar = this.s;
                            if (actionBar != null) {
                                actionBar.v(charSequence);
                            } else {
                                TextView textView = this.G;
                                if (textView != null) {
                                    textView.setText(charSequence);
                                }
                            }
                        }
                    }
                    ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.F.findViewById(R.id.content);
                    View decorView = this.p.getDecorView();
                    contentFrameLayout2.k.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
                    if (contentFrameLayout2.isLaidOut()) {
                        contentFrameLayout2.requestLayout();
                    }
                    TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
                    obtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout2.getMinWidthMajor());
                    obtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout2.getMinWidthMinor());
                    if (obtainStyledAttributes2.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
                        obtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout2.getFixedWidthMajor());
                    }
                    if (obtainStyledAttributes2.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
                        obtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout2.getFixedWidthMinor());
                    }
                    if (obtainStyledAttributes2.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
                        obtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout2.getFixedHeightMajor());
                    }
                    if (obtainStyledAttributes2.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
                        obtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout2.getFixedHeightMinor());
                    }
                    obtainStyledAttributes2.recycle();
                    contentFrameLayout2.requestLayout();
                    this.E = true;
                    PanelFeatureState U = U(0);
                    if (!this.V && U.h == null) {
                        W(108);
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.K + ", windowActionBarOverlay: " + this.L + ", android:windowIsFloating: " + this.N + ", windowActionModeOverlay: " + this.M + ", windowNoTitle: " + this.O + " }");
            }
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
    }

    public final void R() {
        if (this.p == null) {
            Object obj = this.n;
            if (obj instanceof Activity) {
                I(((Activity) obj).getWindow());
            }
        }
        if (this.p != null) {
        } else {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final AutoNightModeManager S(Context context) {
        if (this.b0 == null) {
            if (TwilightManager.d == null) {
                Context applicationContext = context.getApplicationContext();
                TwilightManager.d = new TwilightManager(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.b0 = new AutoTimeNightModeManager(TwilightManager.d);
        }
        return this.b0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
    
        if (r2 <= r5) goto L6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState U(int r5) {
        /*
            r4 = this;
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r0 = r4.Q
            r1 = 0
            if (r0 == 0) goto L8
            int r2 = r0.length
            if (r2 > r5) goto L15
        L8:
            int r2 = r5 + 1
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] r2 = new androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState[r2]
            if (r0 == 0) goto L12
            int r3 = r0.length
            java.lang.System.arraycopy(r0, r1, r2, r1, r3)
        L12:
            r4.Q = r2
            r0 = r2
        L15:
            r2 = r0[r5]
            if (r2 != 0) goto L24
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState r2 = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState
            r2.<init>()
            r2.f99a = r5
            r2.n = r1
            r0[r5] = r2
        L24:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.U(int):androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState");
    }

    public final void V() {
        Q();
        if (this.K && this.s == null) {
            Object obj = this.n;
            if (obj instanceof Activity) {
                this.s = new WindowDecorActionBar((Activity) obj, this.L);
            } else if (obj instanceof Dialog) {
                this.s = new WindowDecorActionBar((Dialog) obj);
            }
            ActionBar actionBar = this.s;
            if (actionBar != null) {
                actionBar.p(this.g0);
            }
        }
    }

    public final void W(int i) {
        this.e0 = (1 << i) | this.e0;
        if (!this.d0) {
            View decorView = this.p.getDecorView();
            WeakHashMap weakHashMap = ViewCompat.f792a;
            decorView.postOnAnimation(this.f0);
            this.d0 = true;
        }
    }

    public final int X(Context context, int i) {
        if (i != -100) {
            if (i != -1) {
                if (i != 0) {
                    if (i != 1 && i != 2) {
                        if (i == 3) {
                            if (this.c0 == null) {
                                this.c0 = new AutoBatteryNightModeManager(context);
                            }
                            return this.c0.c();
                        }
                        throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                    }
                } else if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return S(context).c();
                }
            }
            return i;
        }
        return -1;
    }

    public final boolean Y() {
        boolean z = this.S;
        this.S = false;
        PanelFeatureState U = U(0);
        if (U.m) {
            if (!z) {
                M(U, true);
                return true;
            }
        } else {
            androidx.appcompat.view.ActionMode actionMode = this.y;
            if (actionMode != null) {
                actionMode.c();
                return true;
            }
            V();
            ActionBar actionBar = this.s;
            if (actionBar == null || !actionBar.f()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x0132, code lost:
    
        if (r2 != null) goto L71;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Z(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.Z(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, android.view.KeyEvent):void");
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public final boolean a(MenuBuilder menuBuilder, MenuItem menuItem) {
        int i;
        PanelFeatureState panelFeatureState;
        Window.Callback callback = this.p.getCallback();
        if (callback != null && !this.V) {
            MenuBuilder k = menuBuilder.k();
            PanelFeatureState[] panelFeatureStateArr = this.Q;
            if (panelFeatureStateArr != null) {
                i = panelFeatureStateArr.length;
            } else {
                i = 0;
            }
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    panelFeatureState = panelFeatureStateArr[i2];
                    if (panelFeatureState != null && panelFeatureState.h == k) {
                        break;
                    }
                    i2++;
                } else {
                    panelFeatureState = null;
                    break;
                }
            }
            if (panelFeatureState != null) {
                return callback.onMenuItemSelected(panelFeatureState.f99a, menuItem);
            }
        }
        return false;
    }

    public final boolean a0(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent) {
        MenuBuilder menuBuilder;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((!panelFeatureState.k && !b0(panelFeatureState, keyEvent)) || (menuBuilder = panelFeatureState.h) == null) {
            return false;
        }
        return menuBuilder.performShortcut(i, keyEvent, 1);
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public final void b(MenuBuilder menuBuilder) {
        DecorContentParent decorContentParent = this.v;
        if (decorContentParent != null && decorContentParent.d() && (!ViewConfiguration.get(this.o).hasPermanentMenuKey() || this.v.e())) {
            Window.Callback callback = this.p.getCallback();
            if (this.v.b()) {
                this.v.f();
                if (!this.V) {
                    callback.onPanelClosed(108, U(0).h);
                    return;
                }
                return;
            }
            if (callback != null && !this.V) {
                if (this.d0 && (1 & this.e0) != 0) {
                    View decorView = this.p.getDecorView();
                    Runnable runnable = this.f0;
                    decorView.removeCallbacks(runnable);
                    ((AnonymousClass2) runnable).run();
                }
                PanelFeatureState U = U(0);
                MenuBuilder menuBuilder2 = U.h;
                if (menuBuilder2 != null && !U.o && callback.onPreparePanel(0, U.g, menuBuilder2)) {
                    callback.onMenuOpened(108, U.h);
                    this.v.g();
                    return;
                }
                return;
            }
            return;
        }
        PanelFeatureState U2 = U(0);
        U2.n = true;
        M(U2, false);
        Z(U2, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00cd, code lost:
    
        if (r12.h == null) goto L81;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b0(androidx.appcompat.app.AppCompatDelegateImpl.PanelFeatureState r12, android.view.KeyEvent r13) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.b0(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState, android.view.KeyEvent):boolean");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void c(View view, ViewGroup.LayoutParams layoutParams) {
        Q();
        ((ViewGroup) this.F.findViewById(R.id.content)).addView(view, layoutParams);
        this.q.a(this.p.getCallback());
    }

    public final void c0() {
        if (!this.E) {
        } else {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void d() {
        LocaleListCompat localeListCompat;
        Context context = this.o;
        if (AppCompatDelegate.p(context) && (localeListCompat = AppCompatDelegate.g) != null && !localeListCompat.equals(AppCompatDelegate.h)) {
            AppCompatDelegate.f84c.execute(new a(context, 1));
        }
        H(true, true);
    }

    public final void d0() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = false;
            if (this.k0 != null && (U(0).m || this.y != null)) {
                z = true;
            }
            if (z && this.l0 == null) {
                this.l0 = Api33Impl.b(this.k0, this);
            } else if (!z && (onBackInvokedCallback = this.l0) != null) {
                Api33Impl.c(this.k0, onBackInvokedCallback);
                this.l0 = null;
            }
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final boolean e() {
        return H(true, true);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final Context f(Context context) {
        this.T = true;
        int i = this.X;
        if (i == -100) {
            i = AppCompatDelegate.f;
        }
        int X = X(context, i);
        if (AppCompatDelegate.p(context)) {
            AppCompatDelegate.G(context);
        }
        LocaleListCompat J = J(context);
        Configuration configuration = null;
        if (context instanceof android.view.ContextThemeWrapper) {
            try {
                ((android.view.ContextThemeWrapper) context).applyOverrideConfiguration(N(context, X, J, null, false));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).a(N(context, X, J, null, false));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!o0) {
            return context;
        }
        Configuration configuration2 = new Configuration();
        configuration2.uiMode = -1;
        configuration2.fontScale = 0.0f;
        Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
        Configuration configuration4 = context.getResources().getConfiguration();
        configuration3.uiMode = configuration4.uiMode;
        if (!configuration3.equals(configuration4)) {
            configuration = new Configuration();
            configuration.fontScale = 0.0f;
            if (configuration3.diff(configuration4) != 0) {
                float f = configuration3.fontScale;
                float f2 = configuration4.fontScale;
                if (f != f2) {
                    configuration.fontScale = f2;
                }
                int i2 = configuration3.mcc;
                int i3 = configuration4.mcc;
                if (i2 != i3) {
                    configuration.mcc = i3;
                }
                int i4 = configuration3.mnc;
                int i5 = configuration4.mnc;
                if (i4 != i5) {
                    configuration.mnc = i5;
                }
                int i6 = Build.VERSION.SDK_INT;
                if (i6 >= 24) {
                    Api24Impl.a(configuration3, configuration4, configuration);
                } else if (!Objects.equals(configuration3.locale, configuration4.locale)) {
                    configuration.locale = configuration4.locale;
                }
                int i7 = configuration3.touchscreen;
                int i8 = configuration4.touchscreen;
                if (i7 != i8) {
                    configuration.touchscreen = i8;
                }
                int i9 = configuration3.keyboard;
                int i10 = configuration4.keyboard;
                if (i9 != i10) {
                    configuration.keyboard = i10;
                }
                int i11 = configuration3.keyboardHidden;
                int i12 = configuration4.keyboardHidden;
                if (i11 != i12) {
                    configuration.keyboardHidden = i12;
                }
                int i13 = configuration3.navigation;
                int i14 = configuration4.navigation;
                if (i13 != i14) {
                    configuration.navigation = i14;
                }
                int i15 = configuration3.navigationHidden;
                int i16 = configuration4.navigationHidden;
                if (i15 != i16) {
                    configuration.navigationHidden = i16;
                }
                int i17 = configuration3.orientation;
                int i18 = configuration4.orientation;
                if (i17 != i18) {
                    configuration.orientation = i18;
                }
                int i19 = configuration3.screenLayout & 15;
                int i20 = configuration4.screenLayout & 15;
                if (i19 != i20) {
                    configuration.screenLayout |= i20;
                }
                int i21 = configuration3.screenLayout & 192;
                int i22 = configuration4.screenLayout & 192;
                if (i21 != i22) {
                    configuration.screenLayout |= i22;
                }
                int i23 = configuration3.screenLayout & 48;
                int i24 = configuration4.screenLayout & 48;
                if (i23 != i24) {
                    configuration.screenLayout |= i24;
                }
                int i25 = configuration3.screenLayout & 768;
                int i26 = configuration4.screenLayout & 768;
                if (i25 != i26) {
                    configuration.screenLayout |= i26;
                }
                if (i6 >= 26) {
                    Api26Impl.a(configuration3, configuration4, configuration);
                }
                int i27 = configuration3.uiMode & 15;
                int i28 = configuration4.uiMode & 15;
                if (i27 != i28) {
                    configuration.uiMode |= i28;
                }
                int i29 = configuration3.uiMode & 48;
                int i30 = configuration4.uiMode & 48;
                if (i29 != i30) {
                    configuration.uiMode |= i30;
                }
                int i31 = configuration3.screenWidthDp;
                int i32 = configuration4.screenWidthDp;
                if (i31 != i32) {
                    configuration.screenWidthDp = i32;
                }
                int i33 = configuration3.screenHeightDp;
                int i34 = configuration4.screenHeightDp;
                if (i33 != i34) {
                    configuration.screenHeightDp = i34;
                }
                int i35 = configuration3.smallestScreenWidthDp;
                int i36 = configuration4.smallestScreenWidthDp;
                if (i35 != i36) {
                    configuration.smallestScreenWidthDp = i36;
                }
                int i37 = configuration3.densityDpi;
                int i38 = configuration4.densityDpi;
                if (i37 != i38) {
                    configuration.densityDpi = i38;
                }
            }
        }
        Configuration N = N(context, X, J, configuration, true);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, androidx.appcompat.R.style.Theme_AppCompat_Empty);
        contextThemeWrapper.a(N);
        try {
            if (context.getTheme() != null) {
                ResourcesCompat.ThemeCompat.a(contextThemeWrapper.getTheme());
            }
        } catch (NullPointerException unused3) {
        }
        return contextThemeWrapper;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final View g(int i) {
        Q();
        return this.p.findViewById(i);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final Context i() {
        return this.o;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final int j() {
        return this.X;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final MenuInflater l() {
        Context context;
        if (this.t == null) {
            V();
            ActionBar actionBar = this.s;
            if (actionBar != null) {
                context = actionBar.i();
            } else {
                context = this.o;
            }
            this.t = new SupportMenuInflater(context);
        }
        return this.t;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final ActionBar m() {
        V();
        return this.s;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void n() {
        LayoutInflater from = LayoutInflater.from(this.o);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else if (!(from.getFactory2() instanceof AppCompatDelegateImpl)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void o() {
        if (this.s != null) {
            V();
            if (!this.s.j()) {
                W(0);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        char c2;
        View appCompatRatingBar;
        View view2 = null;
        if (this.j0 == null) {
            int[] iArr = androidx.appcompat.R.styleable.AppCompatTheme;
            Context context2 = this.o;
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(iArr);
            String string = obtainStyledAttributes.getString(androidx.appcompat.R.styleable.AppCompatTheme_viewInflaterClass);
            obtainStyledAttributes.recycle();
            if (string == null) {
                this.j0 = new AppCompatViewInflater();
            } else {
                try {
                    this.j0 = (AppCompatViewInflater) context2.getClassLoader().loadClass(string).getDeclaredConstructor(null).newInstance(null);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.j0 = new AppCompatViewInflater();
                }
            }
        }
        AppCompatViewInflater appCompatViewInflater = this.j0;
        int i = VectorEnabledTintResources.f349a;
        appCompatViewInflater.getClass();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.View, 0, 0);
        int resourceId = obtainStyledAttributes2.getResourceId(androidx.appcompat.R.styleable.View_theme, 0);
        if (resourceId != 0) {
            Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        obtainStyledAttributes2.recycle();
        Context contextThemeWrapper = (resourceId == 0 || ((context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).f144a == resourceId)) ? context : new ContextThemeWrapper(context, resourceId);
        str.getClass();
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals("RatingBar")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -658531749:
                if (str.equals("SeekBar")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 799298502:
                if (str.equals("ToggleButton")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1125864064:
                if (str.equals("ImageView")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                appCompatRatingBar = new AppCompatRatingBar(contextThemeWrapper, attributeSet);
                break;
            case 1:
                appCompatRatingBar = new AppCompatCheckedTextView(contextThemeWrapper, attributeSet);
                break;
            case 2:
                appCompatRatingBar = new AppCompatMultiAutoCompleteTextView(contextThemeWrapper, attributeSet);
                break;
            case 3:
                appCompatRatingBar = appCompatViewInflater.e(contextThemeWrapper, attributeSet);
                break;
            case 4:
                appCompatRatingBar = new AppCompatImageButton(contextThemeWrapper, attributeSet, androidx.appcompat.R.attr.imageButtonStyle);
                break;
            case 5:
                appCompatRatingBar = new AppCompatSeekBar(contextThemeWrapper, attributeSet, androidx.appcompat.R.attr.seekBarStyle);
                break;
            case 6:
                appCompatRatingBar = new AppCompatSpinner(contextThemeWrapper, attributeSet, androidx.appcompat.R.attr.spinnerStyle);
                break;
            case 7:
                appCompatRatingBar = appCompatViewInflater.d(contextThemeWrapper, attributeSet);
                break;
            case '\b':
                appCompatRatingBar = new AppCompatToggleButton(contextThemeWrapper, attributeSet);
                break;
            case '\t':
                appCompatRatingBar = new AppCompatImageView(contextThemeWrapper, attributeSet, 0);
                break;
            case '\n':
                appCompatRatingBar = appCompatViewInflater.a(contextThemeWrapper, attributeSet);
                break;
            case 11:
                appCompatRatingBar = appCompatViewInflater.c(contextThemeWrapper, attributeSet);
                break;
            case '\f':
                appCompatRatingBar = new AppCompatEditText(contextThemeWrapper, attributeSet);
                break;
            case '\r':
                appCompatRatingBar = appCompatViewInflater.b(contextThemeWrapper, attributeSet);
                break;
            default:
                appCompatRatingBar = null;
                break;
        }
        if (appCompatRatingBar == null && context != contextThemeWrapper) {
            Object[] objArr = appCompatViewInflater.f104a;
            if (str.equals("view")) {
                str = attributeSet.getAttributeValue(null, "class");
            }
            try {
                objArr[0] = contextThemeWrapper;
                objArr[1] = attributeSet;
                if (-1 == str.indexOf(46)) {
                    int i2 = 0;
                    while (true) {
                        String[] strArr = AppCompatViewInflater.g;
                        if (i2 < 3) {
                            View f = appCompatViewInflater.f(contextThemeWrapper, str, strArr[i2]);
                            if (f != null) {
                                objArr[0] = null;
                                objArr[1] = null;
                                view2 = f;
                            } else {
                                i2++;
                            }
                        }
                    }
                } else {
                    View f2 = appCompatViewInflater.f(contextThemeWrapper, str, null);
                    objArr[0] = null;
                    objArr[1] = null;
                    view2 = f2;
                }
            } catch (Exception unused) {
            } finally {
                objArr[0] = null;
                objArr[1] = null;
            }
            appCompatRatingBar = view2;
        }
        if (appCompatRatingBar != null) {
            Context context3 = appCompatRatingBar.getContext();
            if ((context3 instanceof ContextWrapper) && appCompatRatingBar.hasOnClickListeners()) {
                TypedArray obtainStyledAttributes3 = context3.obtainStyledAttributes(attributeSet, AppCompatViewInflater.f103c);
                String string2 = obtainStyledAttributes3.getString(0);
                if (string2 != null) {
                    appCompatRatingBar.setOnClickListener(new AppCompatViewInflater.DeclaredOnClickListener(appCompatRatingBar, string2));
                }
                obtainStyledAttributes3.recycle();
            }
            if (Build.VERSION.SDK_INT <= 28) {
                TypedArray obtainStyledAttributes4 = contextThemeWrapper.obtainStyledAttributes(attributeSet, AppCompatViewInflater.d);
                if (obtainStyledAttributes4.hasValue(0)) {
                    ViewCompat.A(appCompatRatingBar, obtainStyledAttributes4.getBoolean(0, false));
                }
                obtainStyledAttributes4.recycle();
                TypedArray obtainStyledAttributes5 = contextThemeWrapper.obtainStyledAttributes(attributeSet, AppCompatViewInflater.e);
                if (obtainStyledAttributes5.hasValue(0)) {
                    ViewCompat.B(appCompatRatingBar, obtainStyledAttributes5.getString(0));
                }
                obtainStyledAttributes5.recycle();
                TypedArray obtainStyledAttributes6 = contextThemeWrapper.obtainStyledAttributes(attributeSet, AppCompatViewInflater.f);
                if (obtainStyledAttributes6.hasValue(0)) {
                    ViewCompat.I(appCompatRatingBar, obtainStyledAttributes6.getBoolean(0, false));
                }
                obtainStyledAttributes6.recycle();
            }
        }
        return appCompatRatingBar;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void q(Configuration configuration) {
        if (this.K && this.E) {
            V();
            ActionBar actionBar = this.s;
            if (actionBar != null) {
                actionBar.k();
            }
        }
        AppCompatDrawableManager a2 = AppCompatDrawableManager.a();
        Context context = this.o;
        synchronized (a2) {
            a2.f236a.k(context);
        }
        this.W = new Configuration(this.o.getResources().getConfiguration());
        H(false, false);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void r() {
        String str;
        this.T = true;
        H(false, true);
        R();
        Object obj = this.n;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    str = NavUtils.c(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                ActionBar actionBar = this.s;
                if (actionBar == null) {
                    this.g0 = true;
                } else {
                    actionBar.p(true);
                }
            }
            synchronized (AppCompatDelegate.l) {
                AppCompatDelegate.x(this);
                AppCompatDelegate.k.add(new WeakReference(this));
            }
        }
        this.W = new Configuration(this.o.getResources().getConfiguration());
        this.U = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    @Override // androidx.appcompat.app.AppCompatDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.n
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = androidx.appcompat.app.AppCompatDelegate.l
            monitor-enter(r0)
            androidx.appcompat.app.AppCompatDelegate.x(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r1
        L11:
            boolean r0 = r3.d0
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.p
            android.view.View r0 = r0.getDecorView()
            java.lang.Runnable r1 = r3.f0
            r0.removeCallbacks(r1)
        L20:
            r0 = 1
            r3.V = r0
            int r0 = r3.X
            r1 = -100
            if (r0 == r1) goto L4d
            java.lang.Object r0 = r3.n
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L4d
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L4d
            androidx.collection.SimpleArrayMap r0 = androidx.appcompat.app.AppCompatDelegateImpl.m0
            java.lang.Object r1 = r3.n
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.X
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5c
        L4d:
            androidx.collection.SimpleArrayMap r0 = androidx.appcompat.app.AppCompatDelegateImpl.m0
            java.lang.Object r1 = r3.n
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5c:
            androidx.appcompat.app.ActionBar r0 = r3.s
            if (r0 == 0) goto L63
            r0.l()
        L63:
            androidx.appcompat.app.AppCompatDelegateImpl$AutoTimeNightModeManager r0 = r3.b0
            if (r0 == 0) goto L6a
            r0.a()
        L6a:
            androidx.appcompat.app.AppCompatDelegateImpl$AutoBatteryNightModeManager r0 = r3.c0
            if (r0 == 0) goto L71
            r0.a()
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AppCompatDelegateImpl.s():void");
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void t() {
        Q();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void u() {
        V();
        ActionBar actionBar = this.s;
        if (actionBar != null) {
            actionBar.s(true);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void v() {
        H(true, false);
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void w() {
        V();
        ActionBar actionBar = this.s;
        if (actionBar != null) {
            actionBar.s(false);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final boolean y(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i = 108;
        } else if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i = 109;
        }
        if (this.O && i == 108) {
            return false;
        }
        if (this.K && i == 1) {
            this.K = false;
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 5) {
                    if (i != 10) {
                        if (i != 108) {
                            if (i != 109) {
                                return this.p.requestFeature(i);
                            }
                            c0();
                            this.L = true;
                            return true;
                        }
                        c0();
                        this.K = true;
                        return true;
                    }
                    c0();
                    this.M = true;
                    return true;
                }
                c0();
                this.J = true;
                return true;
            }
            c0();
            this.I = true;
            return true;
        }
        c0();
        this.O = true;
        return true;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
