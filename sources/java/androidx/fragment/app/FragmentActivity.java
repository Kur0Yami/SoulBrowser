package androidx.fragment.app;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.core.app.ActivityCompat;
import androidx.core.app.OnMultiWindowModeChangedProvider;
import androidx.core.app.OnPictureInPictureModeChangedProvider;
import androidx.core.content.OnConfigurationChangedProvider;
import androidx.core.content.OnTrimMemoryProvider;
import androidx.core.util.Consumer;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuProvider;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public class FragmentActivity extends ComponentActivity implements ActivityCompat.OnRequestPermissionsResultCallback, ActivityCompat.RequestPermissionsRequestCodeValidator {
    public static final /* synthetic */ int D = 0;
    public boolean A;
    public boolean B;
    public final FragmentController y = new FragmentController(new HostCallbacks());
    public final LifecycleRegistry z = new LifecycleRegistry(this);
    public boolean C = true;

    public FragmentActivity() {
        this.h.b.c("android:support:lifecycle", new f(0, this));
        final int i = 0;
        p(new Consumer(this) { // from class: androidx.fragment.app.g
            public final /* synthetic */ FragmentActivity f;

            {
                this.f = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                switch (i) {
                    case 0:
                        this.f.y.a();
                        return;
                    default:
                        this.f.y.a();
                        return;
                }
            }
        });
        final int i2 = 1;
        Consumer listener = new Consumer(this) { // from class: androidx.fragment.app.g
            public final /* synthetic */ FragmentActivity f;

            {
                this.f = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        this.f.y.a();
                        return;
                    default:
                        this.f.y.a();
                        return;
                }
            }
        };
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.p.add(listener);
        Q(new OnContextAvailableListener() { // from class: androidx.fragment.app.h
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public final void a(ComponentActivity componentActivity) {
                FragmentHostCallback fragmentHostCallback = FragmentActivity.this.y.f1099a;
                fragmentHostCallback.h.b(fragmentHostCallback, fragmentHostCallback, null);
            }
        });
    }

    public static boolean U(FragmentManager fragmentManager) {
        boolean z = false;
        for (Fragment fragment : fragmentManager.f1106c.f()) {
            if (fragment != null) {
                if (fragment.getHost() != null) {
                    z |= U(fragment.getChildFragmentManager());
                }
                FragmentViewLifecycleOwner fragmentViewLifecycleOwner = fragment.mViewLifecycleOwner;
                Lifecycle.State state = Lifecycle.State.h;
                if (fragmentViewLifecycleOwner != null) {
                    fragmentViewLifecycleOwner.b();
                    if (fragmentViewLifecycleOwner.i.f1201c.a(state)) {
                        fragment.mViewLifecycleOwner.i.h();
                        z = true;
                    }
                }
                if (fragment.mLifecycleRegistry.f1201c.a(state)) {
                    fragment.mLifecycleRegistry.h();
                    z = true;
                }
            }
        }
        return z;
    }

    public final FragmentManager T() {
        return this.y.f1099a.h;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
    
        if (r0.equals("--list-dumpables") == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 33) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0043, code lost:
    
        if (r0.equals("--dump-dumpable") == false) goto L37;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0010. Please report as an issue. */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void dump(java.lang.String r3, java.io.FileDescriptor r4, java.io.PrintWriter r5, java.lang.String[] r6) {
        /*
            r2 = this;
            super.dump(r3, r4, r5, r6)
            if (r6 == 0) goto L5d
            int r0 = r6.length
            if (r0 != 0) goto L9
            goto L5d
        L9:
            r0 = 0
            r0 = r6[r0]
            int r1 = r0.hashCode()
            switch(r1) {
                case -645125871: goto L4d;
                case 100470631: goto L3d;
                case 472614934: goto L34;
                case 1159329357: goto L24;
                case 1455016274: goto L14;
                default: goto L13;
            }
        L13:
            goto L5d
        L14:
            java.lang.String r1 = "--autofill"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1d
            goto L5d
        L1d:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L5d
            goto L5c
        L24:
            java.lang.String r1 = "--contentcapture"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L2d
            goto L5d
        L2d:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            if (r0 < r1) goto L5d
            goto L5c
        L34:
            java.lang.String r1 = "--list-dumpables"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L46
            goto L5d
        L3d:
            java.lang.String r1 = "--dump-dumpable"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L46
            goto L5d
        L46:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 33
            if (r0 < r1) goto L5d
            goto L5c
        L4d:
            java.lang.String r1 = "--translation"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L56
            goto L5d
        L56:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 31
            if (r0 < r1) goto L5d
        L5c:
            return
        L5d:
            r5.print(r3)
            java.lang.String r0 = "Local FragmentActivity "
            r5.print(r0)
            int r0 = java.lang.System.identityHashCode(r2)
            java.lang.String r0 = java.lang.Integer.toHexString(r0)
            r5.print(r0)
            java.lang.String r0 = " State:"
            r5.println(r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r3)
            java.lang.String r1 = "  "
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5.print(r0)
            java.lang.String r1 = "mCreated="
            r5.print(r1)
            boolean r1 = r2.A
            r5.print(r1)
            java.lang.String r1 = " mResumed="
            r5.print(r1)
            boolean r1 = r2.B
            r5.print(r1)
            java.lang.String r1 = " mStopped="
            r5.print(r1)
            boolean r1 = r2.C
            r5.print(r1)
            android.app.Application r1 = r2.getApplication()
            if (r1 == 0) goto Lb4
            androidx.loader.app.LoaderManager r1 = androidx.loader.app.LoaderManager.b(r2)
            r1.a(r0, r4, r5, r6)
        Lb4:
            androidx.fragment.app.FragmentController r0 = r2.y
            androidx.fragment.app.FragmentHostCallback r0 = r0.f1099a
            androidx.fragment.app.FragmentManager r0 = r0.h
            r0.v(r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentActivity.dump(java.lang.String, java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[]):void");
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.y.a();
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.z.f(Lifecycle.Event.ON_CREATE);
        FragmentManager fragmentManager = this.y.f1099a.h;
        fragmentManager.F = false;
        fragmentManager.G = false;
        fragmentManager.M.i = false;
        fragmentManager.u(1);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View onCreateView = this.y.f1099a.h.f.onCreateView(view, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(view, str, context, attributeSet) : onCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.y.f1099a.h.l();
        this.z.f(Lifecycle.Event.ON_DESTROY);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 6) {
            return this.y.f1099a.h.j(menuItem);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.B = false;
        this.y.f1099a.h.u(5);
        this.z.f(Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.z.f(Lifecycle.Event.ON_RESUME);
        FragmentManager fragmentManager = this.y.f1099a.h;
        fragmentManager.F = false;
        fragmentManager.G = false;
        fragmentManager.M.i = false;
        fragmentManager.u(7);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.y.a();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        FragmentController fragmentController = this.y;
        fragmentController.a();
        super.onResume();
        this.B = true;
        fragmentController.f1099a.h.y(true);
    }

    @Override // android.app.Activity
    public void onStart() {
        FragmentController fragmentController = this.y;
        fragmentController.a();
        FragmentHostCallback fragmentHostCallback = fragmentController.f1099a;
        super.onStart();
        this.C = false;
        if (!this.A) {
            this.A = true;
            FragmentManager fragmentManager = fragmentHostCallback.h;
            fragmentManager.F = false;
            fragmentManager.G = false;
            fragmentManager.M.i = false;
            fragmentManager.u(4);
        }
        fragmentHostCallback.h.y(true);
        this.z.f(Lifecycle.Event.ON_START);
        FragmentManager fragmentManager2 = fragmentHostCallback.h;
        fragmentManager2.F = false;
        fragmentManager2.G = false;
        fragmentManager2.M.i = false;
        fragmentManager2.u(5);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.y.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.C = true;
        do {
        } while (U(T()));
        FragmentManager fragmentManager = this.y.f1099a.h;
        fragmentManager.G = true;
        fragmentManager.M.i = true;
        fragmentManager.u(4);
        this.z.f(Lifecycle.Event.ON_STOP);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View onCreateView = this.y.f1099a.h.f.onCreateView(null, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(str, context, attributeSet) : onCreateView;
    }

    /* loaded from: classes.dex */
    public class HostCallbacks extends FragmentHostCallback<FragmentActivity> implements OnConfigurationChangedProvider, OnTrimMemoryProvider, OnMultiWindowModeChangedProvider, OnPictureInPictureModeChangedProvider, ViewModelStoreOwner, OnBackPressedDispatcherOwner, ActivityResultRegistryOwner, SavedStateRegistryOwner, FragmentOnAttachListener, MenuHost {
        public HostCallbacks() {
            super(FragmentActivity.this);
        }

        @Override // androidx.core.content.OnTrimMemoryProvider
        public final void F(Consumer consumer) {
            FragmentActivity.this.F(consumer);
        }

        @Override // androidx.core.view.MenuHost
        public final void I(MenuProvider menuProvider) {
            FragmentActivity.this.I(menuProvider);
        }

        @Override // androidx.core.app.OnMultiWindowModeChangedProvider
        public final void M(Consumer consumer) {
            FragmentActivity.this.M(consumer);
        }

        @Override // androidx.fragment.app.FragmentHostCallback, androidx.fragment.app.FragmentContainer
        public final View b(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        @Override // androidx.fragment.app.FragmentHostCallback, androidx.fragment.app.FragmentContainer
        public final boolean c() {
            Window window = FragmentActivity.this.getWindow();
            if (window != null && window.peekDecorView() != null) {
                return true;
            }
            return false;
        }

        @Override // androidx.fragment.app.FragmentHostCallback
        public final void d(PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump("  ", null, printWriter, strArr);
        }

        @Override // androidx.fragment.app.FragmentHostCallback
        public final FragmentActivity e() {
            return FragmentActivity.this;
        }

        @Override // androidx.fragment.app.FragmentHostCallback
        public final LayoutInflater f() {
            FragmentActivity fragmentActivity = FragmentActivity.this;
            return fragmentActivity.getLayoutInflater().cloneInContext(fragmentActivity);
        }

        @Override // androidx.fragment.app.FragmentHostCallback
        public final boolean g(String str) {
            int i = Build.VERSION.SDK_INT;
            if (i < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
                return false;
            }
            FragmentActivity fragmentActivity = FragmentActivity.this;
            if (i >= 32) {
                return fragmentActivity.shouldShowRequestPermissionRationale(str);
            }
            if (i == 31) {
                try {
                    return ((Boolean) PackageManager.class.getMethod("shouldShowRequestPermissionRationale", String.class).invoke(fragmentActivity.getApplication().getPackageManager(), str)).booleanValue();
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                    return fragmentActivity.shouldShowRequestPermissionRationale(str);
                }
            }
            return fragmentActivity.shouldShowRequestPermissionRationale(str);
        }

        @Override // androidx.lifecycle.LifecycleOwner
        public final Lifecycle getLifecycle() {
            return FragmentActivity.this.z;
        }

        @Override // androidx.savedstate.SavedStateRegistryOwner
        public final SavedStateRegistry getSavedStateRegistry() {
            return FragmentActivity.this.h.b;
        }

        @Override // androidx.lifecycle.ViewModelStoreOwner
        public final ViewModelStore getViewModelStore() {
            return FragmentActivity.this.getViewModelStore();
        }

        @Override // androidx.fragment.app.FragmentHostCallback
        public final void h() {
            FragmentActivity.this.invalidateOptionsMenu();
        }

        @Override // androidx.activity.OnBackPressedDispatcherOwner
        /* renamed from: n */
        public final OnBackPressedDispatcher getG() {
            return FragmentActivity.this.getG();
        }

        @Override // androidx.core.view.MenuHost
        public final void o(MenuProvider menuProvider) {
            FragmentActivity.this.o(menuProvider);
        }

        @Override // androidx.core.content.OnConfigurationChangedProvider
        public final void p(Consumer consumer) {
            FragmentActivity.this.p(consumer);
        }

        @Override // androidx.core.app.OnPictureInPictureModeChangedProvider
        public final void r(Consumer consumer) {
            FragmentActivity.this.r(consumer);
        }

        @Override // androidx.core.content.OnTrimMemoryProvider
        public final void s(Consumer consumer) {
            FragmentActivity.this.s(consumer);
        }

        @Override // androidx.core.app.OnPictureInPictureModeChangedProvider
        public final void t(Consumer consumer) {
            FragmentActivity.this.t(consumer);
        }

        @Override // androidx.activity.result.ActivityResultRegistryOwner
        public final ActivityResultRegistry v() {
            return FragmentActivity.this.m;
        }

        @Override // androidx.core.app.OnMultiWindowModeChangedProvider
        public final void w(Consumer consumer) {
            FragmentActivity.this.w(consumer);
        }

        @Override // androidx.core.content.OnConfigurationChangedProvider
        public final void y(Consumer consumer) {
            FragmentActivity.this.y(consumer);
        }

        @Override // androidx.fragment.app.FragmentOnAttachListener
        public final void a(Fragment fragment) {
        }
    }
}
