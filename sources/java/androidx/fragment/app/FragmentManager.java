package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.Cancellable;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistry$register$3;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.OnMultiWindowModeChangedProvider;
import androidx.core.app.OnPictureInPictureModeChangedProvider;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.content.OnConfigurationChangedProvider;
import androidx.core.content.OnTrimMemoryProvider;
import androidx.core.util.Consumer;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuProvider;
import androidx.fragment.R;
import androidx.fragment.app.FragmentTransaction;
import androidx.fragment.app.SpecialEffectsController;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public abstract class FragmentManager implements FragmentResultOwner {
    public ActivityResultRegistry$register$3 A;
    public ActivityResultRegistry$register$3 B;
    public ActivityResultRegistry$register$3 C;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public ArrayList J;
    public ArrayList K;
    public ArrayList L;
    public FragmentManagerViewModel M;
    public boolean b;
    public ArrayList d;
    public ArrayList e;
    public OnBackPressedDispatcher g;
    public final i o;
    public final i p;
    public final i q;
    public final i r;
    public FragmentHostCallback u;
    public FragmentContainer v;
    public Fragment w;
    public Fragment x;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1105a = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final FragmentStore f1106c = new FragmentStore();
    public final FragmentLayoutInflaterFactory f = new FragmentLayoutInflaterFactory(this);
    public final OnBackPressedCallback h = new OnBackPressedCallback() { // from class: androidx.fragment.app.FragmentManager.1
        @Override // androidx.activity.OnBackPressedCallback
        public final void a() {
            FragmentManager fragmentManager = FragmentManager.this;
            fragmentManager.y(true);
            if (fragmentManager.h.f28a) {
                fragmentManager.Q();
            } else {
                fragmentManager.g.c();
            }
        }
    };
    public final AtomicInteger i = new AtomicInteger();
    public final Map j = DesugarCollections.synchronizedMap(new HashMap());
    public final Map k = DesugarCollections.synchronizedMap(new HashMap());
    public final Map l = DesugarCollections.synchronizedMap(new HashMap());
    public final FragmentLifecycleCallbacksDispatcher m = new FragmentLifecycleCallbacksDispatcher(this);
    public final CopyOnWriteArrayList n = new CopyOnWriteArrayList();
    public final MenuProvider s = new MenuProvider() { // from class: androidx.fragment.app.FragmentManager.2
        @Override // androidx.core.view.MenuProvider
        public final boolean a(MenuItem menuItem) {
            return FragmentManager.this.p(menuItem);
        }

        @Override // androidx.core.view.MenuProvider
        public final void b(Menu menu) {
            FragmentManager.this.q(menu);
        }

        @Override // androidx.core.view.MenuProvider
        public final void c(Menu menu, MenuInflater menuInflater) {
            FragmentManager.this.k(menu, menuInflater);
        }

        @Override // androidx.core.view.MenuProvider
        public final void d(Menu menu) {
            FragmentManager.this.t(menu);
        }
    };
    public int t = -1;
    public final FragmentFactory y = new FragmentFactory() { // from class: androidx.fragment.app.FragmentManager.3
        @Override // androidx.fragment.app.FragmentFactory
        public final Fragment a(ClassLoader classLoader, String str) {
            return Fragment.instantiate(FragmentManager.this.u.f, str, null);
        }
    };
    public final AnonymousClass4 z = new Object();
    public ArrayDeque D = new ArrayDeque();
    public final Runnable N = new Runnable() { // from class: androidx.fragment.app.FragmentManager.5
        @Override // java.lang.Runnable
        public final void run() {
            FragmentManager.this.y(true);
        }
    };

    /* renamed from: androidx.fragment.app.FragmentManager$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements SpecialEffectsControllerFactory {
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.fragment.app.SpecialEffectsController, androidx.fragment.app.DefaultSpecialEffectsController] */
        @Override // androidx.fragment.app.SpecialEffectsControllerFactory
        public final DefaultSpecialEffectsController a(ViewGroup container) {
            Intrinsics.checkNotNullParameter(container, "container");
            return new SpecialEffectsController(container);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$6, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass6 implements LifecycleEventObserver {
        @Override // androidx.lifecycle.LifecycleEventObserver
        public final void b(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            if (event != Lifecycle.Event.ON_START) {
                if (event != Lifecycle.Event.ON_DESTROY) {
                    return;
                } else {
                    throw null;
                }
            }
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public interface BackStackEntry {
    }

    /* loaded from: classes.dex */
    public class ClearBackStackState implements OpGenerator {
        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class FragmentIntentSenderContract extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Intent a(Context context, Object obj) {
            Bundle bundleExtra;
            IntentSenderRequest intentSenderRequest = (IntentSenderRequest) obj;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent intent2 = intentSenderRequest.f;
            if (intent2 != null && (bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    IntentSenderRequest.Builder builder = new IntentSenderRequest.Builder(intentSenderRequest.f63c);
                    builder.b = null;
                    int i = intentSenderRequest.h;
                    int i2 = intentSenderRequest.g;
                    builder.d = i;
                    builder.f65c = i2;
                    intentSenderRequest = builder.a();
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest);
            if (FragmentManager.J(2)) {
                Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
            }
            return intent;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Object c(Intent intent, int i) {
            return new ActivityResult(intent, i);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class FragmentLifecycleCallbacks {
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public String f1113c;
        public int f;

        /* renamed from: androidx.fragment.app.FragmentManager$LaunchedFragmentInfo$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.Creator<LaunchedFragmentInfo> {
            /* JADX WARN: Type inference failed for: r0v0, types: [androidx.fragment.app.FragmentManager$LaunchedFragmentInfo, java.lang.Object] */
            @Override // android.os.Parcelable.Creator
            public final LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                ?? obj = new Object();
                obj.f1113c = parcel.readString();
                obj.f = parcel.readInt();
                return obj;
            }

            @Override // android.os.Parcelable.Creator
            public final LaunchedFragmentInfo[] newArray(int i) {
                return new LaunchedFragmentInfo[i];
            }
        }

        public LaunchedFragmentInfo(String str, int i) {
            this.f1113c = str;
            this.f = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f1113c);
            parcel.writeInt(this.f);
        }
    }

    /* loaded from: classes.dex */
    public static class LifecycleAwareResultListener implements FragmentResultListener {
    }

    /* loaded from: classes.dex */
    public interface OnBackStackChangedListener {
    }

    /* loaded from: classes.dex */
    public interface OpGenerator {
        boolean a(ArrayList arrayList, ArrayList arrayList2);
    }

    /* loaded from: classes.dex */
    public class PopBackStackState implements OpGenerator {

        /* renamed from: a, reason: collision with root package name */
        public final int f1114a;

        public PopBackStackState(int i) {
            this.f1114a = i;
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
            FragmentManager fragmentManager = FragmentManager.this;
            Fragment fragment = fragmentManager.x;
            int i = this.f1114a;
            if (fragment != null && i < 0 && fragment.getChildFragmentManager().R(-1, 0)) {
                return false;
            }
            return fragmentManager.S(arrayList, arrayList2, i, 1);
        }
    }

    /* loaded from: classes.dex */
    public class RestoreBackStackState implements OpGenerator {
        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public class SaveBackStackState implements OpGenerator {
        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.fragment.app.i] */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.fragment.app.i] */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.fragment.app.i] */
    /* JADX WARN: Type inference failed for: r0v16, types: [androidx.fragment.app.i] */
    /* JADX WARN: Type inference failed for: r0v20, types: [androidx.fragment.app.FragmentManager$4, java.lang.Object] */
    public FragmentManager() {
        final int i = 0;
        this.o = new Consumer(this) { // from class: androidx.fragment.app.i
            public final /* synthetic */ FragmentManager f;

            {
                this.f = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                switch (i) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        FragmentManager fragmentManager = this.f;
                        if (fragmentManager.L()) {
                            fragmentManager.i(false, configuration);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        FragmentManager fragmentManager2 = this.f;
                        if (fragmentManager2.L() && num.intValue() == 80) {
                            fragmentManager2.m(false);
                            return;
                        }
                        return;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        FragmentManager fragmentManager3 = this.f;
                        if (fragmentManager3.L()) {
                            fragmentManager3.n(multiWindowModeChangedInfo.f629a, false);
                            return;
                        }
                        return;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        FragmentManager fragmentManager4 = this.f;
                        if (fragmentManager4.L()) {
                            fragmentManager4.s(pictureInPictureModeChangedInfo.f643a, false);
                            return;
                        }
                        return;
                }
            }
        };
        final int i2 = 1;
        this.p = new Consumer(this) { // from class: androidx.fragment.app.i
            public final /* synthetic */ FragmentManager f;

            {
                this.f = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        FragmentManager fragmentManager = this.f;
                        if (fragmentManager.L()) {
                            fragmentManager.i(false, configuration);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        FragmentManager fragmentManager2 = this.f;
                        if (fragmentManager2.L() && num.intValue() == 80) {
                            fragmentManager2.m(false);
                            return;
                        }
                        return;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        FragmentManager fragmentManager3 = this.f;
                        if (fragmentManager3.L()) {
                            fragmentManager3.n(multiWindowModeChangedInfo.f629a, false);
                            return;
                        }
                        return;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        FragmentManager fragmentManager4 = this.f;
                        if (fragmentManager4.L()) {
                            fragmentManager4.s(pictureInPictureModeChangedInfo.f643a, false);
                            return;
                        }
                        return;
                }
            }
        };
        final int i3 = 2;
        this.q = new Consumer(this) { // from class: androidx.fragment.app.i
            public final /* synthetic */ FragmentManager f;

            {
                this.f = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                switch (i3) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        FragmentManager fragmentManager = this.f;
                        if (fragmentManager.L()) {
                            fragmentManager.i(false, configuration);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        FragmentManager fragmentManager2 = this.f;
                        if (fragmentManager2.L() && num.intValue() == 80) {
                            fragmentManager2.m(false);
                            return;
                        }
                        return;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        FragmentManager fragmentManager3 = this.f;
                        if (fragmentManager3.L()) {
                            fragmentManager3.n(multiWindowModeChangedInfo.f629a, false);
                            return;
                        }
                        return;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        FragmentManager fragmentManager4 = this.f;
                        if (fragmentManager4.L()) {
                            fragmentManager4.s(pictureInPictureModeChangedInfo.f643a, false);
                            return;
                        }
                        return;
                }
            }
        };
        final int i4 = 3;
        this.r = new Consumer(this) { // from class: androidx.fragment.app.i
            public final /* synthetic */ FragmentManager f;

            {
                this.f = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                switch (i4) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        FragmentManager fragmentManager = this.f;
                        if (fragmentManager.L()) {
                            fragmentManager.i(false, configuration);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        FragmentManager fragmentManager2 = this.f;
                        if (fragmentManager2.L() && num.intValue() == 80) {
                            fragmentManager2.m(false);
                            return;
                        }
                        return;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        FragmentManager fragmentManager3 = this.f;
                        if (fragmentManager3.L()) {
                            fragmentManager3.n(multiWindowModeChangedInfo.f629a, false);
                            return;
                        }
                        return;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        FragmentManager fragmentManager4 = this.f;
                        if (fragmentManager4.L()) {
                            fragmentManager4.s(pictureInPictureModeChangedInfo.f643a, false);
                            return;
                        }
                        return;
                }
            }
        };
    }

    public static boolean J(int i) {
        if (Log.isLoggable("FragmentManager", i)) {
            return true;
        }
        return false;
    }

    public static boolean K(Fragment fragment) {
        if (!fragment.mHasMenu || !fragment.mMenuVisible) {
            ArrayList e = fragment.mChildFragmentManager.f1106c.e();
            int size = e.size();
            boolean z = false;
            int i = 0;
            while (i < size) {
                Object obj = e.get(i);
                i++;
                Fragment fragment2 = (Fragment) obj;
                if (fragment2 != null) {
                    z = K(fragment2);
                }
                if (z) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public static boolean M(Fragment fragment) {
        if (fragment != null) {
            FragmentManager fragmentManager = fragment.mFragmentManager;
            if (fragment.equals(fragmentManager.x) && M(fragmentManager.w)) {
                return true;
            }
            return false;
        }
        return true;
    }

    public static void c0(Fragment fragment) {
        if (J(2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:133:0x0236. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:160:0x02fc. Please report as an issue. */
    public final void A(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        ViewGroup viewGroup;
        boolean z;
        int i3;
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        boolean z4;
        boolean z5;
        int i6;
        boolean z6 = ((BackStackRecord) arrayList.get(i)).o;
        ArrayList arrayList3 = this.L;
        if (arrayList3 == null) {
            this.L = new ArrayList();
        } else {
            arrayList3.clear();
        }
        ArrayList arrayList4 = this.L;
        FragmentStore fragmentStore = this.f1106c;
        arrayList4.addAll(fragmentStore.f());
        Fragment fragment = this.x;
        int i7 = i;
        boolean z7 = false;
        while (true) {
            int i8 = 1;
            if (i7 < i2) {
                BackStackRecord backStackRecord = (BackStackRecord) arrayList.get(i7);
                if (!((Boolean) arrayList2.get(i7)).booleanValue()) {
                    ArrayList arrayList5 = this.L;
                    ArrayList arrayList6 = backStackRecord.f1127a;
                    int i9 = 0;
                    while (i9 < arrayList6.size()) {
                        FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList6.get(i9);
                        int i10 = op.f1129a;
                        if (i10 != i8) {
                            z3 = z6;
                            if (i10 != 2) {
                                if (i10 != 3 && i10 != 6) {
                                    if (i10 != 7) {
                                        if (i10 == 8) {
                                            arrayList6.add(i9, new FragmentTransaction.Op(fragment, 9, 0));
                                            op.f1130c = true;
                                            i9++;
                                            fragment = op.b;
                                        }
                                    } else {
                                        i4 = 1;
                                    }
                                } else {
                                    arrayList5.remove(op.b);
                                    Fragment fragment2 = op.b;
                                    if (fragment2 == fragment) {
                                        arrayList6.add(i9, new FragmentTransaction.Op(fragment2, 9));
                                        i9++;
                                        i5 = i7;
                                        z4 = z7;
                                        i4 = 1;
                                        fragment = null;
                                    }
                                }
                                i5 = i7;
                                z4 = z7;
                                i4 = 1;
                            } else {
                                Fragment fragment3 = op.b;
                                int i11 = fragment3.mContainerId;
                                int size = arrayList5.size() - 1;
                                boolean z8 = false;
                                while (size >= 0) {
                                    int i12 = size;
                                    Fragment fragment4 = (Fragment) arrayList5.get(size);
                                    int i13 = i7;
                                    if (fragment4.mContainerId == i11) {
                                        if (fragment4 == fragment3) {
                                            z5 = z7;
                                            z8 = true;
                                        } else {
                                            if (fragment4 == fragment) {
                                                z5 = z7;
                                                i6 = 0;
                                                arrayList6.add(i9, new FragmentTransaction.Op(fragment4, 9, 0));
                                                i9++;
                                                fragment = null;
                                            } else {
                                                z5 = z7;
                                                i6 = 0;
                                            }
                                            FragmentTransaction.Op op2 = new FragmentTransaction.Op(fragment4, 3, i6);
                                            op2.d = op.d;
                                            op2.f = op.f;
                                            op2.e = op.e;
                                            op2.g = op.g;
                                            arrayList6.add(i9, op2);
                                            arrayList5.remove(fragment4);
                                            i9++;
                                            fragment = fragment;
                                        }
                                    } else {
                                        z5 = z7;
                                    }
                                    size = i12 - 1;
                                    z7 = z5;
                                    i7 = i13;
                                }
                                i5 = i7;
                                z4 = z7;
                                i4 = 1;
                                if (z8) {
                                    arrayList6.remove(i9);
                                    i9--;
                                } else {
                                    op.f1129a = 1;
                                    op.f1130c = true;
                                    arrayList5.add(fragment3);
                                }
                            }
                            i9 += i4;
                            i8 = i4;
                            z6 = z3;
                            z7 = z4;
                            i7 = i5;
                        } else {
                            z3 = z6;
                            i4 = i8;
                        }
                        i5 = i7;
                        z4 = z7;
                        arrayList5.add(op.b);
                        i9 += i4;
                        i8 = i4;
                        z6 = z3;
                        z7 = z4;
                        i7 = i5;
                    }
                    z = z6;
                    i3 = i7;
                    z2 = z7;
                } else {
                    z = z6;
                    i3 = i7;
                    z2 = z7;
                    int i14 = 1;
                    ArrayList arrayList7 = this.L;
                    ArrayList arrayList8 = backStackRecord.f1127a;
                    int size2 = arrayList8.size() - 1;
                    while (size2 >= 0) {
                        FragmentTransaction.Op op3 = (FragmentTransaction.Op) arrayList8.get(size2);
                        int i15 = op3.f1129a;
                        if (i15 != i14) {
                            if (i15 != 3) {
                                switch (i15) {
                                    case 8:
                                        fragment = null;
                                        break;
                                    case 9:
                                        fragment = op3.b;
                                        break;
                                    case 10:
                                        op3.i = op3.h;
                                        break;
                                }
                                size2--;
                                i14 = 1;
                            }
                            arrayList7.add(op3.b);
                            size2--;
                            i14 = 1;
                        }
                        arrayList7.remove(op3.b);
                        size2--;
                        i14 = 1;
                    }
                }
                if (!z2 && !backStackRecord.g) {
                    z7 = false;
                } else {
                    z7 = true;
                }
                i7 = i3 + 1;
                z6 = z;
            } else {
                boolean z9 = z6;
                this.L.clear();
                if (!z9 && this.t >= 1) {
                    for (int i16 = i; i16 < i2; i16++) {
                        ArrayList arrayList9 = ((BackStackRecord) arrayList.get(i16)).f1127a;
                        int size3 = arrayList9.size();
                        int i17 = 0;
                        while (i17 < size3) {
                            Object obj = arrayList9.get(i17);
                            i17++;
                            Fragment fragment5 = ((FragmentTransaction.Op) obj).b;
                            if (fragment5 != null && fragment5.mFragmentManager != null) {
                                fragmentStore.g(g(fragment5));
                            }
                        }
                    }
                }
                for (int i18 = i; i18 < i2; i18++) {
                    BackStackRecord backStackRecord2 = (BackStackRecord) arrayList.get(i18);
                    if (((Boolean) arrayList2.get(i18)).booleanValue()) {
                        backStackRecord2.h(-1);
                        FragmentManager fragmentManager = backStackRecord2.p;
                        ArrayList arrayList10 = backStackRecord2.f1127a;
                        boolean z10 = true;
                        for (int size4 = arrayList10.size() - 1; size4 >= 0; size4--) {
                            FragmentTransaction.Op op4 = (FragmentTransaction.Op) arrayList10.get(size4);
                            Fragment fragment6 = op4.b;
                            if (fragment6 != null) {
                                fragment6.mBeingSaved = backStackRecord2.s;
                                fragment6.setPopDirection(z10);
                                int i19 = backStackRecord2.f;
                                int i20 = 8194;
                                int i21 = 4097;
                                if (i19 != 4097) {
                                    if (i19 != 8194) {
                                        i20 = 4100;
                                        i21 = 8197;
                                        if (i19 != 8197) {
                                            if (i19 != 4099) {
                                                if (i19 != 4100) {
                                                    i20 = 0;
                                                }
                                            } else {
                                                i20 = 4099;
                                            }
                                        }
                                    }
                                    i20 = i21;
                                }
                                fragment6.setNextTransition(i20);
                                fragment6.setSharedElementNames(backStackRecord2.n, backStackRecord2.m);
                            }
                            switch (op4.f1129a) {
                                case 1:
                                    fragment6.setAnimations(op4.d, op4.e, op4.f, op4.g);
                                    z10 = true;
                                    fragmentManager.Y(fragment6, true);
                                    fragmentManager.T(fragment6);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + op4.f1129a);
                                case 3:
                                    fragment6.setAnimations(op4.d, op4.e, op4.f, op4.g);
                                    fragmentManager.a(fragment6);
                                    z10 = true;
                                case 4:
                                    fragment6.setAnimations(op4.d, op4.e, op4.f, op4.g);
                                    fragmentManager.getClass();
                                    c0(fragment6);
                                    z10 = true;
                                case 5:
                                    fragment6.setAnimations(op4.d, op4.e, op4.f, op4.g);
                                    fragmentManager.Y(fragment6, true);
                                    fragmentManager.I(fragment6);
                                    z10 = true;
                                case 6:
                                    fragment6.setAnimations(op4.d, op4.e, op4.f, op4.g);
                                    fragmentManager.c(fragment6);
                                    z10 = true;
                                case 7:
                                    fragment6.setAnimations(op4.d, op4.e, op4.f, op4.g);
                                    fragmentManager.Y(fragment6, true);
                                    fragmentManager.h(fragment6);
                                    z10 = true;
                                case 8:
                                    fragmentManager.a0(null);
                                    z10 = true;
                                case 9:
                                    fragmentManager.a0(fragment6);
                                    z10 = true;
                                case 10:
                                    fragmentManager.Z(fragment6, op4.h);
                                    z10 = true;
                            }
                        }
                    } else {
                        backStackRecord2.h(1);
                        FragmentManager fragmentManager2 = backStackRecord2.p;
                        ArrayList arrayList11 = backStackRecord2.f1127a;
                        int size5 = arrayList11.size();
                        for (int i22 = 0; i22 < size5; i22++) {
                            FragmentTransaction.Op op5 = (FragmentTransaction.Op) arrayList11.get(i22);
                            Fragment fragment7 = op5.b;
                            if (fragment7 != null) {
                                fragment7.mBeingSaved = backStackRecord2.s;
                                fragment7.setPopDirection(false);
                                fragment7.setNextTransition(backStackRecord2.f);
                                fragment7.setSharedElementNames(backStackRecord2.m, backStackRecord2.n);
                            }
                            switch (op5.f1129a) {
                                case 1:
                                    fragment7.setAnimations(op5.d, op5.e, op5.f, op5.g);
                                    fragmentManager2.Y(fragment7, false);
                                    fragmentManager2.a(fragment7);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + op5.f1129a);
                                case 3:
                                    fragment7.setAnimations(op5.d, op5.e, op5.f, op5.g);
                                    fragmentManager2.T(fragment7);
                                case 4:
                                    fragment7.setAnimations(op5.d, op5.e, op5.f, op5.g);
                                    fragmentManager2.I(fragment7);
                                case 5:
                                    fragment7.setAnimations(op5.d, op5.e, op5.f, op5.g);
                                    fragmentManager2.Y(fragment7, false);
                                    c0(fragment7);
                                case 6:
                                    fragment7.setAnimations(op5.d, op5.e, op5.f, op5.g);
                                    fragmentManager2.h(fragment7);
                                case 7:
                                    fragment7.setAnimations(op5.d, op5.e, op5.f, op5.g);
                                    fragmentManager2.Y(fragment7, false);
                                    fragmentManager2.c(fragment7);
                                case 8:
                                    fragmentManager2.a0(fragment7);
                                case 9:
                                    fragmentManager2.a0(null);
                                case 10:
                                    fragmentManager2.Z(fragment7, op5.i);
                            }
                        }
                    }
                }
                boolean booleanValue = ((Boolean) arrayList2.get(i2 - 1)).booleanValue();
                for (int i23 = i; i23 < i2; i23++) {
                    BackStackRecord backStackRecord3 = (BackStackRecord) arrayList.get(i23);
                    if (booleanValue) {
                        for (int size6 = backStackRecord3.f1127a.size() - 1; size6 >= 0; size6--) {
                            Fragment fragment8 = ((FragmentTransaction.Op) backStackRecord3.f1127a.get(size6)).b;
                            if (fragment8 != null) {
                                g(fragment8).k();
                            }
                        }
                    } else {
                        ArrayList arrayList12 = backStackRecord3.f1127a;
                        int size7 = arrayList12.size();
                        int i24 = 0;
                        while (i24 < size7) {
                            Object obj2 = arrayList12.get(i24);
                            i24++;
                            Fragment fragment9 = ((FragmentTransaction.Op) obj2).b;
                            if (fragment9 != null) {
                                g(fragment9).k();
                            }
                        }
                    }
                }
                O(this.t, true);
                HashSet hashSet = new HashSet();
                for (int i25 = i; i25 < i2; i25++) {
                    ArrayList arrayList13 = ((BackStackRecord) arrayList.get(i25)).f1127a;
                    int size8 = arrayList13.size();
                    int i26 = 0;
                    while (i26 < size8) {
                        Object obj3 = arrayList13.get(i26);
                        i26++;
                        Fragment fragment10 = ((FragmentTransaction.Op) obj3).b;
                        if (fragment10 != null && (viewGroup = fragment10.mContainer) != null) {
                            hashSet.add(SpecialEffectsController.g(viewGroup, this));
                        }
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    SpecialEffectsController specialEffectsController = (SpecialEffectsController) it.next();
                    specialEffectsController.d = booleanValue;
                    specialEffectsController.h();
                    specialEffectsController.d();
                }
                for (int i27 = i; i27 < i2; i27++) {
                    BackStackRecord backStackRecord4 = (BackStackRecord) arrayList.get(i27);
                    if (((Boolean) arrayList2.get(i27)).booleanValue() && backStackRecord4.r >= 0) {
                        backStackRecord4.r = -1;
                    }
                    backStackRecord4.getClass();
                }
                return;
            }
        }
    }

    public final Fragment B(int i) {
        FragmentStore fragmentStore = this.f1106c;
        ArrayList arrayList = fragmentStore.f1123a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) arrayList.get(size);
            if (fragment != null && fragment.mFragmentId == i) {
                return fragment;
            }
        }
        for (FragmentStateManager fragmentStateManager : fragmentStore.b.values()) {
            if (fragmentStateManager != null) {
                Fragment fragment2 = fragmentStateManager.f1119c;
                if (fragment2.mFragmentId == i) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final Fragment C(String str) {
        FragmentStore fragmentStore = this.f1106c;
        ArrayList arrayList = fragmentStore.f1123a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) arrayList.get(size);
            if (fragment != null && str.equals(fragment.mTag)) {
                return fragment;
            }
        }
        for (FragmentStateManager fragmentStateManager : fragmentStore.b.values()) {
            if (fragmentStateManager != null) {
                Fragment fragment2 = fragmentStateManager.f1119c;
                if (str.equals(fragment2.mTag)) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final void D() {
        Iterator it = f().iterator();
        while (it.hasNext()) {
            SpecialEffectsController specialEffectsController = (SpecialEffectsController) it.next();
            if (specialEffectsController.e) {
                if (J(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
                }
                specialEffectsController.e = false;
                specialEffectsController.d();
            }
        }
    }

    public final ViewGroup E(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.v.c()) {
            View b = this.v.b(fragment.mContainerId);
            if (b instanceof ViewGroup) {
                return (ViewGroup) b;
            }
            return null;
        }
        return null;
    }

    public final FragmentFactory F() {
        Fragment fragment = this.w;
        if (fragment != null) {
            return fragment.mFragmentManager.F();
        }
        return this.y;
    }

    public final List G() {
        return this.f1106c.f();
    }

    public final SpecialEffectsControllerFactory H() {
        Fragment fragment = this.w;
        if (fragment != null) {
            return fragment.mFragmentManager.H();
        }
        return this.z;
    }

    public final void I(Fragment fragment) {
        if (J(2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
            b0(fragment);
        }
    }

    public final boolean L() {
        Fragment fragment = this.w;
        if (fragment == null) {
            return true;
        }
        if (fragment.isAdded() && this.w.getParentFragmentManager().L()) {
            return true;
        }
        return false;
    }

    public final boolean N() {
        if (!this.F && !this.G) {
            return false;
        }
        return true;
    }

    public final void O(int i, boolean z) {
        FragmentHostCallback fragmentHostCallback;
        if (this.u == null && i != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i != this.t) {
            this.t = i;
            FragmentStore fragmentStore = this.f1106c;
            HashMap hashMap = fragmentStore.b;
            ArrayList arrayList = fragmentStore.f1123a;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                FragmentStateManager fragmentStateManager = (FragmentStateManager) hashMap.get(((Fragment) obj).mWho);
                if (fragmentStateManager != null) {
                    fragmentStateManager.k();
                }
            }
            for (FragmentStateManager fragmentStateManager2 : hashMap.values()) {
                if (fragmentStateManager2 != null) {
                    fragmentStateManager2.k();
                    Fragment fragment = fragmentStateManager2.f1119c;
                    if (fragment.mRemoving && !fragment.isInBackStack()) {
                        if (fragment.mBeingSaved && !fragmentStore.f1124c.containsKey(fragment.mWho)) {
                            fragmentStore.i(fragment.mWho, fragmentStateManager2.n());
                        }
                        fragmentStore.h(fragmentStateManager2);
                    }
                }
            }
            ArrayList d = fragmentStore.d();
            int size2 = d.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj2 = d.get(i3);
                i3++;
                FragmentStateManager fragmentStateManager3 = (FragmentStateManager) obj2;
                Fragment fragment2 = fragmentStateManager3.f1119c;
                if (fragment2.mDeferStart) {
                    if (this.b) {
                        this.I = true;
                    } else {
                        fragment2.mDeferStart = false;
                        fragmentStateManager3.k();
                    }
                }
            }
            if (this.E && (fragmentHostCallback = this.u) != null && this.t == 7) {
                fragmentHostCallback.h();
                this.E = false;
            }
        }
    }

    public final void P() {
        if (this.u != null) {
            this.F = false;
            this.G = false;
            this.M.i = false;
            for (Fragment fragment : this.f1106c.f()) {
                if (fragment != null) {
                    fragment.noteStateNotSaved();
                }
            }
        }
    }

    public final boolean Q() {
        return R(-1, 0);
    }

    public final boolean R(int i, int i2) {
        y(false);
        x(true);
        Fragment fragment = this.x;
        if (fragment != null && i < 0 && fragment.getChildFragmentManager().Q()) {
            return true;
        }
        boolean S = S(this.J, this.K, i, i2);
        if (S) {
            this.b = true;
            try {
                U(this.J, this.K);
            } finally {
                e();
            }
        }
        e0();
        boolean z = this.I;
        FragmentStore fragmentStore = this.f1106c;
        if (z) {
            this.I = false;
            ArrayList d = fragmentStore.d();
            int size = d.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = d.get(i3);
                i3++;
                FragmentStateManager fragmentStateManager = (FragmentStateManager) obj;
                Fragment fragment2 = fragmentStateManager.f1119c;
                if (fragment2.mDeferStart) {
                    if (this.b) {
                        this.I = true;
                    } else {
                        fragment2.mDeferStart = false;
                        fragmentStateManager.k();
                    }
                }
            }
        }
        fragmentStore.b.values().removeAll(Collections.singleton(null));
        return S;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0067 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean S(java.util.ArrayList r5, java.util.ArrayList r6, int r7, int r8) {
        /*
            r4 = this;
            r0 = 1
            r8 = r8 & r0
            r1 = 0
            if (r8 == 0) goto L7
            r8 = r0
            goto L8
        L7:
            r8 = r1
        L8:
            java.util.ArrayList r2 = r4.d
            if (r2 == 0) goto L64
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L13
            goto L64
        L13:
            if (r7 >= 0) goto L21
            if (r8 == 0) goto L19
            r7 = r1
            goto L65
        L19:
            java.util.ArrayList r7 = r4.d
            int r7 = r7.size()
            int r7 = r7 - r0
            goto L65
        L21:
            java.util.ArrayList r2 = r4.d
            int r2 = r2.size()
            int r2 = r2 - r0
        L28:
            if (r2 < 0) goto L3c
            java.util.ArrayList r3 = r4.d
            java.lang.Object r3 = r3.get(r2)
            androidx.fragment.app.BackStackRecord r3 = (androidx.fragment.app.BackStackRecord) r3
            if (r7 < 0) goto L39
            int r3 = r3.r
            if (r7 != r3) goto L39
            goto L3c
        L39:
            int r2 = r2 + (-1)
            goto L28
        L3c:
            if (r2 >= 0) goto L40
        L3e:
            r7 = r2
            goto L65
        L40:
            if (r8 == 0) goto L57
        L42:
            if (r2 <= 0) goto L3e
            java.util.ArrayList r8 = r4.d
            int r3 = r2 + (-1)
            java.lang.Object r8 = r8.get(r3)
            androidx.fragment.app.BackStackRecord r8 = (androidx.fragment.app.BackStackRecord) r8
            if (r7 < 0) goto L3e
            int r8 = r8.r
            if (r7 != r8) goto L3e
            int r2 = r2 + (-1)
            goto L42
        L57:
            java.util.ArrayList r7 = r4.d
            int r7 = r7.size()
            int r7 = r7 - r0
            if (r2 != r7) goto L61
            goto L64
        L61:
            int r7 = r2 + 1
            goto L65
        L64:
            r7 = -1
        L65:
            if (r7 >= 0) goto L68
            return r1
        L68:
            java.util.ArrayList r8 = r4.d
            int r8 = r8.size()
            int r8 = r8 - r0
        L6f:
            if (r8 < r7) goto L84
            java.util.ArrayList r1 = r4.d
            java.lang.Object r1 = r1.remove(r8)
            androidx.fragment.app.BackStackRecord r1 = (androidx.fragment.app.BackStackRecord) r1
            r5.add(r1)
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            r6.add(r1)
            int r8 = r8 + (-1)
            goto L6f
        L84:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.S(java.util.ArrayList, java.util.ArrayList, int, int):boolean");
    }

    public final void T(Fragment fragment) {
        if (J(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.mBackStackNesting);
        }
        boolean isInBackStack = fragment.isInBackStack();
        if (fragment.mDetached && isInBackStack) {
            return;
        }
        FragmentStore fragmentStore = this.f1106c;
        synchronized (fragmentStore.f1123a) {
            fragmentStore.f1123a.remove(fragment);
        }
        fragment.mAdded = false;
        if (K(fragment)) {
            this.E = true;
        }
        fragment.mRemoving = true;
        b0(fragment);
    }

    public final void U(ArrayList arrayList, ArrayList arrayList2) {
        if (!arrayList.isEmpty()) {
            if (arrayList.size() == arrayList2.size()) {
                int size = arrayList.size();
                int i = 0;
                int i2 = 0;
                while (i < size) {
                    if (!((BackStackRecord) arrayList.get(i)).o) {
                        if (i2 != i) {
                            A(arrayList, arrayList2, i2, i);
                        }
                        i2 = i + 1;
                        if (((Boolean) arrayList2.get(i)).booleanValue()) {
                            while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((BackStackRecord) arrayList.get(i2)).o) {
                                i2++;
                            }
                        }
                        A(arrayList, arrayList2, i, i2);
                        i = i2 - 1;
                    }
                    i++;
                }
                if (i2 != size) {
                    A(arrayList, arrayList2, i2, size);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Internal error with the back stack records");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1, types: [androidx.fragment.app.FragmentTransaction$Op, java.lang.Object] */
    public final void V(Bundle bundle) {
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher;
        int i;
        boolean z;
        int i2;
        Bundle bundle2;
        FragmentStateManager fragmentStateManager;
        Bundle bundle3;
        Bundle bundle4;
        for (String str : bundle.keySet()) {
            if (str.startsWith("result_") && (bundle4 = bundle.getBundle(str)) != null) {
                bundle4.setClassLoader(this.u.f.getClassLoader());
                this.k.put(str.substring(7), bundle4);
            }
        }
        HashMap hashMap = new HashMap();
        for (String str2 : bundle.keySet()) {
            if (str2.startsWith("fragment_") && (bundle3 = bundle.getBundle(str2)) != null) {
                bundle3.setClassLoader(this.u.f.getClassLoader());
                hashMap.put(str2.substring(9), bundle3);
            }
        }
        FragmentStore fragmentStore = this.f1106c;
        HashMap hashMap2 = fragmentStore.f1124c;
        HashMap hashMap3 = fragmentStore.b;
        hashMap2.clear();
        hashMap2.putAll(hashMap);
        FragmentManagerState fragmentManagerState = (FragmentManagerState) bundle.getParcelable("state");
        if (fragmentManagerState == null) {
            return;
        }
        hashMap3.clear();
        ArrayList arrayList = fragmentManagerState.f1115c;
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            fragmentLifecycleCallbacksDispatcher = this.m;
            if (i3 >= size) {
                break;
            }
            Object obj = arrayList.get(i3);
            i3++;
            Bundle i4 = fragmentStore.i((String) obj, null);
            if (i4 != null) {
                Fragment fragment = (Fragment) this.M.d.get(((FragmentState) i4.getParcelable("state")).f);
                if (fragment != null) {
                    if (J(2)) {
                        i2 = 2;
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + fragment);
                    } else {
                        i2 = 2;
                    }
                    fragmentStateManager = new FragmentStateManager(fragmentLifecycleCallbacksDispatcher, fragmentStore, fragment, i4);
                    bundle2 = i4;
                } else {
                    i2 = 2;
                    bundle2 = i4;
                    fragmentStateManager = new FragmentStateManager(this.m, this.f1106c, this.u.f.getClassLoader(), F(), i4);
                }
                Fragment fragment2 = fragmentStateManager.f1119c;
                fragment2.mSavedFragmentState = bundle2;
                fragment2.mFragmentManager = this;
                if (J(i2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + fragment2.mWho + "): " + fragment2);
                }
                fragmentStateManager.l(this.u.f.getClassLoader());
                fragmentStore.g(fragmentStateManager);
                fragmentStateManager.e = this.t;
            }
        }
        FragmentManagerViewModel fragmentManagerViewModel = this.M;
        fragmentManagerViewModel.getClass();
        ArrayList arrayList2 = new ArrayList(fragmentManagerViewModel.d.values());
        int size2 = arrayList2.size();
        int i5 = 0;
        while (i5 < size2) {
            Object obj2 = arrayList2.get(i5);
            i5++;
            Fragment fragment3 = (Fragment) obj2;
            if (hashMap3.get(fragment3.mWho) == null) {
                if (J(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment3 + " that was not found in the set of active Fragments " + fragmentManagerState.f1115c);
                }
                this.M.f(fragment3);
                fragment3.mFragmentManager = this;
                FragmentStateManager fragmentStateManager2 = new FragmentStateManager(fragmentLifecycleCallbacksDispatcher, fragmentStore, fragment3);
                fragmentStateManager2.e = 1;
                fragmentStateManager2.k();
                fragment3.mRemoving = true;
                fragmentStateManager2.k();
            }
        }
        ArrayList arrayList3 = fragmentManagerState.f;
        fragmentStore.f1123a.clear();
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            int i6 = 0;
            while (i6 < size3) {
                Object obj3 = arrayList3.get(i6);
                i6++;
                String str3 = (String) obj3;
                Fragment b = fragmentStore.b(str3);
                if (b != null) {
                    if (J(2)) {
                        Log.v("FragmentManager", "restoreSaveState: added (" + str3 + "): " + b);
                    }
                    fragmentStore.a(b);
                } else {
                    throw new IllegalStateException(android.support.v4.media.a.l("No instantiated fragment for (", str3, ")"));
                }
            }
        }
        if (fragmentManagerState.g != null) {
            this.d = new ArrayList(fragmentManagerState.g.length);
            int i7 = 0;
            while (true) {
                BackStackRecordState[] backStackRecordStateArr = fragmentManagerState.g;
                if (i7 >= backStackRecordStateArr.length) {
                    break;
                }
                BackStackRecordState backStackRecordState = backStackRecordStateArr[i7];
                ArrayList arrayList4 = backStackRecordState.f;
                BackStackRecord backStackRecord = new BackStackRecord(this);
                int[] iArr = backStackRecordState.f1067c;
                int i8 = 0;
                int i9 = 0;
                while (i8 < iArr.length) {
                    ?? obj4 = new Object();
                    int i10 = i8 + 1;
                    obj4.f1129a = iArr[i8];
                    if (J(2)) {
                        Log.v("FragmentManager", "Instantiate " + backStackRecord + " op #" + i9 + " base fragment #" + iArr[i10]);
                    }
                    obj4.h = Lifecycle.State.values()[backStackRecordState.g[i9]];
                    obj4.i = Lifecycle.State.values()[backStackRecordState.h[i9]];
                    int i11 = i8 + 2;
                    if (iArr[i10] != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    obj4.f1130c = z;
                    int i12 = iArr[i11];
                    obj4.d = i12;
                    int i13 = iArr[i8 + 3];
                    obj4.e = i13;
                    int i14 = i8 + 5;
                    int i15 = iArr[i8 + 4];
                    obj4.f = i15;
                    i8 += 6;
                    int[] iArr2 = iArr;
                    int i16 = iArr2[i14];
                    obj4.g = i16;
                    backStackRecord.b = i12;
                    backStackRecord.f1128c = i13;
                    backStackRecord.d = i15;
                    backStackRecord.e = i16;
                    backStackRecord.b(obj4);
                    i9++;
                    iArr = iArr2;
                }
                backStackRecord.f = backStackRecordState.i;
                backStackRecord.h = backStackRecordState.j;
                backStackRecord.g = true;
                backStackRecord.i = backStackRecordState.l;
                backStackRecord.j = backStackRecordState.m;
                backStackRecord.k = backStackRecordState.n;
                backStackRecord.l = backStackRecordState.o;
                backStackRecord.m = backStackRecordState.p;
                backStackRecord.n = backStackRecordState.q;
                backStackRecord.o = backStackRecordState.r;
                backStackRecord.r = backStackRecordState.k;
                for (int i17 = 0; i17 < arrayList4.size(); i17++) {
                    String str4 = (String) arrayList4.get(i17);
                    if (str4 != null) {
                        ((FragmentTransaction.Op) backStackRecord.f1127a.get(i17)).b = fragmentStore.b(str4);
                    }
                }
                backStackRecord.h(1);
                if (J(2)) {
                    StringBuilder s = android.support.v4.media.a.s(i7, "restoreAllState: back stack #", " (index ");
                    s.append(backStackRecord.r);
                    s.append("): ");
                    s.append(backStackRecord);
                    Log.v("FragmentManager", s.toString());
                    PrintWriter printWriter = new PrintWriter(new LogWriter());
                    backStackRecord.j("  ", printWriter, false);
                    printWriter.close();
                }
                this.d.add(backStackRecord);
                i7++;
            }
            i = 0;
        } else {
            i = 0;
            this.d = null;
        }
        this.i.set(fragmentManagerState.h);
        String str5 = fragmentManagerState.i;
        if (str5 != null) {
            Fragment b2 = fragmentStore.b(str5);
            this.x = b2;
            r(b2);
        }
        ArrayList arrayList5 = fragmentManagerState.j;
        if (arrayList5 != null) {
            for (int i18 = i; i18 < arrayList5.size(); i18++) {
                this.j.put((String) arrayList5.get(i18), (BackStackState) fragmentManagerState.k.get(i18));
            }
        }
        this.D = new ArrayDeque(fragmentManagerState.l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.os.Parcelable, androidx.fragment.app.FragmentManagerState, java.lang.Object] */
    public final Bundle W() {
        int i;
        ArrayList arrayList;
        BackStackRecordState[] backStackRecordStateArr;
        int size;
        Bundle bundle = new Bundle();
        D();
        Iterator it = f().iterator();
        while (it.hasNext()) {
            ((SpecialEffectsController) it.next()).f();
        }
        y(true);
        this.F = true;
        this.M.i = true;
        FragmentStore fragmentStore = this.f1106c;
        fragmentStore.getClass();
        HashMap hashMap = fragmentStore.b;
        ArrayList arrayList2 = new ArrayList(hashMap.size());
        for (FragmentStateManager fragmentStateManager : hashMap.values()) {
            if (fragmentStateManager != null) {
                Fragment fragment = fragmentStateManager.f1119c;
                fragmentStore.i(fragment.mWho, fragmentStateManager.n());
                arrayList2.add(fragment.mWho);
                if (J(2)) {
                    Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragment.mSavedFragmentState);
                }
            }
        }
        HashMap hashMap2 = this.f1106c.f1124c;
        if (hashMap2.isEmpty()) {
            if (J(2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
                return bundle;
            }
        } else {
            FragmentStore fragmentStore2 = this.f1106c;
            synchronized (fragmentStore2.f1123a) {
                try {
                    if (fragmentStore2.f1123a.isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(fragmentStore2.f1123a.size());
                        ArrayList arrayList3 = fragmentStore2.f1123a;
                        int size2 = arrayList3.size();
                        int i2 = 0;
                        while (i2 < size2) {
                            Object obj = arrayList3.get(i2);
                            i2++;
                            Fragment fragment2 = (Fragment) obj;
                            arrayList.add(fragment2.mWho);
                            if (J(2)) {
                                Log.v("FragmentManager", "saveAllState: adding fragment (" + fragment2.mWho + "): " + fragment2);
                            }
                        }
                    }
                } finally {
                }
            }
            ArrayList arrayList4 = this.d;
            if (arrayList4 != null && (size = arrayList4.size()) > 0) {
                backStackRecordStateArr = new BackStackRecordState[size];
                for (i = 0; i < size; i++) {
                    backStackRecordStateArr[i] = new BackStackRecordState((BackStackRecord) this.d.get(i));
                    if (J(2)) {
                        StringBuilder s = android.support.v4.media.a.s(i, "saveAllState: adding back stack #", ": ");
                        s.append(this.d.get(i));
                        Log.v("FragmentManager", s.toString());
                    }
                }
            } else {
                backStackRecordStateArr = null;
            }
            ?? obj2 = new Object();
            obj2.i = null;
            ArrayList arrayList5 = new ArrayList();
            obj2.j = arrayList5;
            ArrayList arrayList6 = new ArrayList();
            obj2.k = arrayList6;
            obj2.f1115c = arrayList2;
            obj2.f = arrayList;
            obj2.g = backStackRecordStateArr;
            obj2.h = this.i.get();
            Fragment fragment3 = this.x;
            if (fragment3 != null) {
                obj2.i = fragment3.mWho;
            }
            arrayList5.addAll(this.j.keySet());
            arrayList6.addAll(this.j.values());
            obj2.l = new ArrayList(this.D);
            bundle.putParcelable("state", obj2);
            for (String str : this.k.keySet()) {
                bundle.putBundle(android.support.v4.media.a.C("result_", str), (Bundle) this.k.get(str));
            }
            for (String str2 : hashMap2.keySet()) {
                bundle.putBundle(android.support.v4.media.a.C("fragment_", str2), (Bundle) hashMap2.get(str2));
            }
        }
        return bundle;
    }

    public final void X() {
        synchronized (this.f1105a) {
            try {
                if (this.f1105a.size() == 1) {
                    this.u.g.removeCallbacks(this.N);
                    this.u.g.post(this.N);
                    e0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void Y(Fragment fragment, boolean z) {
        ViewGroup E = E(fragment);
        if (E != null && (E instanceof FragmentContainerView)) {
            ((FragmentContainerView) E).setDrawDisappearingViewsLast(!z);
        }
    }

    public final void Z(Fragment fragment, Lifecycle.State state) {
        if (fragment.equals(this.f1106c.b(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = state;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public final FragmentStateManager a(Fragment fragment) {
        String str = fragment.mPreviousWho;
        if (str != null) {
            FragmentStrictMode.d(fragment, str);
        }
        if (J(2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        FragmentStateManager g = g(fragment);
        fragment.mFragmentManager = this;
        FragmentStore fragmentStore = this.f1106c;
        fragmentStore.g(g);
        if (!fragment.mDetached) {
            fragmentStore.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (K(fragment)) {
                this.E = true;
            }
        }
        return g;
    }

    public final void a0(Fragment fragment) {
        if (fragment != null) {
            if (!fragment.equals(this.f1106c.b(fragment.mWho)) || (fragment.mHost != null && fragment.mFragmentManager != this)) {
                throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
            }
        }
        Fragment fragment2 = this.x;
        this.x = fragment;
        r(fragment2);
        r(this.x);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    public final void b(FragmentHostCallback fragmentHostCallback, FragmentContainer fragmentContainer, final Fragment fragment) {
        String str;
        if (this.u == null) {
            this.u = fragmentHostCallback;
            this.v = fragmentContainer;
            this.w = fragment;
            CopyOnWriteArrayList copyOnWriteArrayList = this.n;
            if (fragment != null) {
                copyOnWriteArrayList.add(new FragmentOnAttachListener() { // from class: androidx.fragment.app.FragmentManager.7
                    @Override // androidx.fragment.app.FragmentOnAttachListener
                    public final void a(Fragment fragment2) {
                        Fragment.this.onAttachFragment(fragment2);
                    }
                });
            } else if (fragmentHostCallback instanceof FragmentOnAttachListener) {
                copyOnWriteArrayList.add((FragmentOnAttachListener) fragmentHostCallback);
            }
            if (this.w != null) {
                e0();
            }
            if (fragmentHostCallback instanceof OnBackPressedDispatcherOwner) {
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) fragmentHostCallback;
                OnBackPressedDispatcher g = onBackPressedDispatcherOwner.getG();
                this.g = g;
                LifecycleOwner lifecycleOwner = onBackPressedDispatcherOwner;
                if (fragment != null) {
                    lifecycleOwner = fragment;
                }
                g.a(lifecycleOwner, this.h);
            }
            if (fragment != null) {
                FragmentManagerViewModel fragmentManagerViewModel = fragment.mFragmentManager.M;
                HashMap hashMap = fragmentManagerViewModel.e;
                FragmentManagerViewModel fragmentManagerViewModel2 = (FragmentManagerViewModel) hashMap.get(fragment.mWho);
                if (fragmentManagerViewModel2 == null) {
                    fragmentManagerViewModel2 = new FragmentManagerViewModel(fragmentManagerViewModel.g);
                    hashMap.put(fragment.mWho, fragmentManagerViewModel2);
                }
                this.M = fragmentManagerViewModel2;
            } else if (fragmentHostCallback instanceof ViewModelStoreOwner) {
                this.M = (FragmentManagerViewModel) new ViewModelProvider(((ViewModelStoreOwner) fragmentHostCallback).getViewModelStore(), FragmentManagerViewModel.j).a(FragmentManagerViewModel.class);
            } else {
                this.M = new FragmentManagerViewModel(false);
            }
            this.M.i = N();
            this.f1106c.d = this.M;
            Object obj = this.u;
            if ((obj instanceof SavedStateRegistryOwner) && fragment == null) {
                SavedStateRegistry savedStateRegistry = ((SavedStateRegistryOwner) obj).getSavedStateRegistry();
                savedStateRegistry.c("android:support:fragments", new f(1, this));
                Bundle a2 = savedStateRegistry.a("android:support:fragments");
                if (a2 != null) {
                    V(a2);
                }
            }
            Object obj2 = this.u;
            if (obj2 instanceof ActivityResultRegistryOwner) {
                ActivityResultRegistry v = ((ActivityResultRegistryOwner) obj2).v();
                if (fragment != null) {
                    str = android.support.v4.media.a.p(new StringBuilder(), fragment.mWho, ":");
                } else {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                String C = android.support.v4.media.a.C("FragmentManager:", str);
                this.A = v.e(android.support.v4.media.a.k(C, "StartActivityForResult"), new Object(), new ActivityResultCallback<ActivityResult>() { // from class: androidx.fragment.app.FragmentManager.8
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj3) {
                        ActivityResult activityResult = (ActivityResult) obj3;
                        FragmentManager fragmentManager = FragmentManager.this;
                        LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) fragmentManager.D.pollLast();
                        if (launchedFragmentInfo == null) {
                            Log.w("FragmentManager", "No Activities were started for result for " + this);
                            return;
                        }
                        String str2 = launchedFragmentInfo.f1113c;
                        int i = launchedFragmentInfo.f;
                        Fragment c2 = fragmentManager.f1106c.c(str2);
                        if (c2 == null) {
                            Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str2);
                            return;
                        }
                        c2.onActivityResult(i, activityResult.f53c, activityResult.f);
                    }
                });
                this.B = v.e(android.support.v4.media.a.k(C, "StartIntentSenderForResult"), new Object(), new ActivityResultCallback<ActivityResult>() { // from class: androidx.fragment.app.FragmentManager.9
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj3) {
                        ActivityResult activityResult = (ActivityResult) obj3;
                        FragmentManager fragmentManager = FragmentManager.this;
                        LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) fragmentManager.D.pollFirst();
                        if (launchedFragmentInfo == null) {
                            Log.w("FragmentManager", "No IntentSenders were started for " + this);
                            return;
                        }
                        String str2 = launchedFragmentInfo.f1113c;
                        int i = launchedFragmentInfo.f;
                        Fragment c2 = fragmentManager.f1106c.c(str2);
                        if (c2 == null) {
                            Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str2);
                            return;
                        }
                        c2.onActivityResult(i, activityResult.f53c, activityResult.f);
                    }
                });
                this.C = v.e(android.support.v4.media.a.k(C, "RequestPermissions"), new Object(), new ActivityResultCallback<Map<String, Boolean>>() { // from class: androidx.fragment.app.FragmentManager.10
                    @Override // androidx.activity.result.ActivityResultCallback
                    public final void a(Object obj3) {
                        int i;
                        Map map = (Map) obj3;
                        String[] strArr = (String[]) map.keySet().toArray(new String[0]);
                        ArrayList arrayList = new ArrayList(map.values());
                        int[] iArr = new int[arrayList.size()];
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            if (((Boolean) arrayList.get(i2)).booleanValue()) {
                                i = 0;
                            } else {
                                i = -1;
                            }
                            iArr[i2] = i;
                        }
                        FragmentManager fragmentManager = FragmentManager.this;
                        LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) fragmentManager.D.pollFirst();
                        if (launchedFragmentInfo == null) {
                            Log.w("FragmentManager", "No permissions were requested for " + this);
                            return;
                        }
                        String str2 = launchedFragmentInfo.f1113c;
                        int i3 = launchedFragmentInfo.f;
                        Fragment c2 = fragmentManager.f1106c.c(str2);
                        if (c2 == null) {
                            Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str2);
                            return;
                        }
                        c2.onRequestPermissionsResult(i3, strArr, iArr);
                    }
                });
            }
            Object obj3 = this.u;
            if (obj3 instanceof OnConfigurationChangedProvider) {
                ((OnConfigurationChangedProvider) obj3).p(this.o);
            }
            Object obj4 = this.u;
            if (obj4 instanceof OnTrimMemoryProvider) {
                ((OnTrimMemoryProvider) obj4).F(this.p);
            }
            Object obj5 = this.u;
            if (obj5 instanceof OnMultiWindowModeChangedProvider) {
                ((OnMultiWindowModeChangedProvider) obj5).w(this.q);
            }
            Object obj6 = this.u;
            if (obj6 instanceof OnPictureInPictureModeChangedProvider) {
                ((OnPictureInPictureModeChangedProvider) obj6).t(this.r);
            }
            Object obj7 = this.u;
            if ((obj7 instanceof MenuHost) && fragment == null) {
                ((MenuHost) obj7).I(this.s);
                return;
            }
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    public final void b0(Fragment fragment) {
        ViewGroup E = E(fragment);
        if (E != null) {
            if (fragment.getPopExitAnim() + fragment.getPopEnterAnim() + fragment.getExitAnim() + fragment.getEnterAnim() > 0) {
                if (E.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    E.setTag(R.id.visible_removing_fragment_view_tag, fragment);
                }
                ((Fragment) E.getTag(R.id.visible_removing_fragment_view_tag)).setPopDirection(fragment.getPopDirection());
            }
        }
    }

    public final void c(Fragment fragment) {
        if (J(2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                this.f1106c.a(fragment);
                if (J(2)) {
                    Log.v("FragmentManager", "add from attach: " + fragment);
                }
                if (K(fragment)) {
                    this.E = true;
                }
            }
        }
    }

    public final FragmentTransaction d() {
        return new BackStackRecord(this);
    }

    public final void d0(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new LogWriter());
        FragmentHostCallback fragmentHostCallback = this.u;
        if (fragmentHostCallback != null) {
            try {
                fragmentHostCallback.d(printWriter, new String[0]);
                throw runtimeException;
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
                throw runtimeException;
            }
        }
        try {
            v("  ", null, printWriter, new String[0]);
            throw runtimeException;
        } catch (Exception e2) {
            Log.e("FragmentManager", "Failed dumping state", e2);
            throw runtimeException;
        }
    }

    public final void e() {
        this.b = false;
        this.K.clear();
        this.J.clear();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [kotlin.jvm.internal.FunctionReferenceImpl, kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r1v10, types: [kotlin.jvm.internal.FunctionReferenceImpl, kotlin.jvm.functions.Function0] */
    public final void e0() {
        int i;
        synchronized (this.f1105a) {
            try {
                boolean z = true;
                if (!this.f1105a.isEmpty()) {
                    OnBackPressedCallback onBackPressedCallback = this.h;
                    onBackPressedCallback.f28a = true;
                    ?? r1 = onBackPressedCallback.f29c;
                    if (r1 != 0) {
                        r1.invoke();
                    }
                    return;
                }
                OnBackPressedCallback onBackPressedCallback2 = this.h;
                ArrayList arrayList = this.d;
                if (arrayList != null) {
                    i = arrayList.size();
                } else {
                    i = 0;
                }
                if (i <= 0 || !M(this.w)) {
                    z = false;
                }
                onBackPressedCallback2.f28a = z;
                ?? r0 = onBackPressedCallback2.f29c;
                if (r0 != 0) {
                    r0.invoke();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final HashSet f() {
        HashSet hashSet = new HashSet();
        ArrayList d = this.f1106c.d();
        int size = d.size();
        int i = 0;
        while (i < size) {
            Object obj = d.get(i);
            i++;
            ViewGroup viewGroup = ((FragmentStateManager) obj).f1119c.mContainer;
            if (viewGroup != null) {
                hashSet.add(SpecialEffectsController.Companion.a(viewGroup, H()));
            }
        }
        return hashSet;
    }

    public final FragmentStateManager g(Fragment fragment) {
        String str = fragment.mWho;
        FragmentStore fragmentStore = this.f1106c;
        FragmentStateManager fragmentStateManager = (FragmentStateManager) fragmentStore.b.get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager;
        }
        FragmentStateManager fragmentStateManager2 = new FragmentStateManager(this.m, fragmentStore, fragment);
        fragmentStateManager2.l(this.u.f.getClassLoader());
        fragmentStateManager2.e = this.t;
        return fragmentStateManager2;
    }

    public final void h(Fragment fragment) {
        if (J(2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (J(2)) {
                    Log.v("FragmentManager", "remove from detach: " + fragment);
                }
                FragmentStore fragmentStore = this.f1106c;
                synchronized (fragmentStore.f1123a) {
                    fragmentStore.f1123a.remove(fragment);
                }
                fragment.mAdded = false;
                if (K(fragment)) {
                    this.E = true;
                }
                b0(fragment);
            }
        }
    }

    public final void i(boolean z, Configuration configuration) {
        if (z && (this.u instanceof OnConfigurationChangedProvider)) {
            d0(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f1106c.f()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
                if (z) {
                    fragment.mChildFragmentManager.i(true, configuration);
                }
            }
        }
    }

    public final boolean j(MenuItem menuItem) {
        if (this.t < 1) {
            return false;
        }
        for (Fragment fragment : this.f1106c.f()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final boolean k(Menu menu, MenuInflater menuInflater) {
        if (this.t < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f1106c.f()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.e != null) {
            for (int i = 0; i < this.e.size(); i++) {
                Fragment fragment2 = (Fragment) this.e.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.e = arrayList;
        return z;
    }

    public final void l() {
        boolean z = true;
        this.H = true;
        y(true);
        Iterator it = f().iterator();
        while (it.hasNext()) {
            ((SpecialEffectsController) it.next()).f();
        }
        FragmentHostCallback fragmentHostCallback = this.u;
        boolean z2 = fragmentHostCallback instanceof ViewModelStoreOwner;
        FragmentStore fragmentStore = this.f1106c;
        if (z2) {
            z = fragmentStore.d.h;
        } else {
            FragmentActivity fragmentActivity = fragmentHostCallback.f;
            if (android.support.v4.media.a.A(fragmentActivity)) {
                z = true ^ fragmentActivity.isChangingConfigurations();
            }
        }
        if (z) {
            Iterator it2 = this.j.values().iterator();
            while (it2.hasNext()) {
                ArrayList arrayList = ((BackStackState) it2.next()).f1068c;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    String str = (String) obj;
                    FragmentManagerViewModel fragmentManagerViewModel = fragmentStore.d;
                    fragmentManagerViewModel.getClass();
                    if (J(3)) {
                        Log.d("FragmentManager", "Clearing non-config state for saved state of Fragment " + str);
                    }
                    fragmentManagerViewModel.e(str);
                }
            }
        }
        u(-1);
        Object obj2 = this.u;
        if (obj2 instanceof OnTrimMemoryProvider) {
            ((OnTrimMemoryProvider) obj2).s(this.p);
        }
        Object obj3 = this.u;
        if (obj3 instanceof OnConfigurationChangedProvider) {
            ((OnConfigurationChangedProvider) obj3).y(this.o);
        }
        Object obj4 = this.u;
        if (obj4 instanceof OnMultiWindowModeChangedProvider) {
            ((OnMultiWindowModeChangedProvider) obj4).M(this.q);
        }
        Object obj5 = this.u;
        if (obj5 instanceof OnPictureInPictureModeChangedProvider) {
            ((OnPictureInPictureModeChangedProvider) obj5).r(this.r);
        }
        Object obj6 = this.u;
        if ((obj6 instanceof MenuHost) && this.w == null) {
            ((MenuHost) obj6).o(this.s);
        }
        this.u = null;
        this.v = null;
        this.w = null;
        if (this.g != null) {
            Iterator it3 = this.h.b.iterator();
            while (it3.hasNext()) {
                ((Cancellable) it3.next()).cancel();
            }
            this.g = null;
        }
        ActivityResultRegistry$register$3 activityResultRegistry$register$3 = this.A;
        if (activityResultRegistry$register$3 != null) {
            activityResultRegistry$register$3.b();
            this.B.b();
            this.C.b();
        }
    }

    public final void m(boolean z) {
        if (z && (this.u instanceof OnTrimMemoryProvider)) {
            d0(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f1106c.f()) {
            if (fragment != null) {
                fragment.performLowMemory();
                if (z) {
                    fragment.mChildFragmentManager.m(true);
                }
            }
        }
    }

    public final void n(boolean z, boolean z2) {
        if (z2 && (this.u instanceof OnMultiWindowModeChangedProvider)) {
            d0(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f1106c.f()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
                if (z2) {
                    fragment.mChildFragmentManager.n(z, true);
                }
            }
        }
    }

    public final void o() {
        ArrayList e = this.f1106c.e();
        int size = e.size();
        int i = 0;
        while (i < size) {
            Object obj = e.get(i);
            i++;
            Fragment fragment = (Fragment) obj;
            if (fragment != null) {
                fragment.onHiddenChanged(fragment.isHidden());
                fragment.mChildFragmentManager.o();
            }
        }
    }

    public final boolean p(MenuItem menuItem) {
        if (this.t < 1) {
            return false;
        }
        for (Fragment fragment : this.f1106c.f()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void q(Menu menu) {
        if (this.t >= 1) {
            for (Fragment fragment : this.f1106c.f()) {
                if (fragment != null) {
                    fragment.performOptionsMenuClosed(menu);
                }
            }
        }
    }

    public final void r(Fragment fragment) {
        if (fragment != null) {
            if (fragment.equals(this.f1106c.b(fragment.mWho))) {
                fragment.performPrimaryNavigationFragmentChanged();
            }
        }
    }

    public final void s(boolean z, boolean z2) {
        if (z2 && (this.u instanceof OnPictureInPictureModeChangedProvider)) {
            d0(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f1106c.f()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
                if (z2) {
                    fragment.mChildFragmentManager.s(z, true);
                }
            }
        }
    }

    public final boolean t(Menu menu) {
        boolean z = false;
        if (this.t < 1) {
            return false;
        }
        for (Fragment fragment : this.f1106c.f()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(Uuid.SIZE_BITS);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.w;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.w)));
            sb.append("}");
        } else {
            FragmentHostCallback fragmentHostCallback = this.u;
            if (fragmentHostCallback != null) {
                sb.append(fragmentHostCallback.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.u)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(int i) {
        try {
            this.b = true;
            for (FragmentStateManager fragmentStateManager : this.f1106c.b.values()) {
                if (fragmentStateManager != null) {
                    fragmentStateManager.e = i;
                }
            }
            O(i, false);
            Iterator it = f().iterator();
            while (it.hasNext()) {
                ((SpecialEffectsController) it.next()).f();
            }
            this.b = false;
            y(true);
        } catch (Throwable th) {
            this.b = false;
            throw th;
        }
    }

    public final void v(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String k = android.support.v4.media.a.k(str, "    ");
        FragmentStore fragmentStore = this.f1106c;
        ArrayList arrayList = fragmentStore.f1123a;
        String k2 = android.support.v4.media.a.k(str, "    ");
        HashMap hashMap = fragmentStore.b;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (FragmentStateManager fragmentStateManager : hashMap.values()) {
                printWriter.print(str);
                if (fragmentStateManager != null) {
                    Fragment fragment = fragmentStateManager.f1119c;
                    printWriter.println(fragment);
                    fragment.dump(k2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size3; i++) {
                Fragment fragment2 = (Fragment) arrayList.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList arrayList2 = this.e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                Fragment fragment3 = (Fragment) this.e.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        ArrayList arrayList3 = this.d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                BackStackRecord backStackRecord = (BackStackRecord) this.d.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(backStackRecord.toString());
                backStackRecord.j(k, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.i.get());
        synchronized (this.f1105a) {
            try {
                int size4 = this.f1105a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i4 = 0; i4 < size4; i4++) {
                        Object obj = (OpGenerator) this.f1105a.get(i4);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i4);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.u);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.v);
        if (this.w != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.w);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.t);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.F);
        printWriter.print(" mStopped=");
        printWriter.print(this.G);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.H);
        if (this.E) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.E);
        }
    }

    public final void w(OpGenerator opGenerator, boolean z) {
        if (!z) {
            if (this.u == null) {
                if (this.H) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            if (N()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f1105a) {
            try {
                if (this.u == null) {
                    if (z) {
                    } else {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f1105a.add(opGenerator);
                    X();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void x(boolean z) {
        if (!this.b) {
            if (this.u == null) {
                if (this.H) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            if (Looper.myLooper() == this.u.g.getLooper()) {
                if (!z && N()) {
                    throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
                }
                if (this.J == null) {
                    this.J = new ArrayList();
                    this.K = new ArrayList();
                    return;
                }
                return;
            }
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    public final boolean y(boolean z) {
        boolean z2;
        x(z);
        boolean z3 = false;
        while (true) {
            ArrayList arrayList = this.J;
            ArrayList arrayList2 = this.K;
            synchronized (this.f1105a) {
                if (this.f1105a.isEmpty()) {
                    z2 = false;
                } else {
                    try {
                        int size = this.f1105a.size();
                        z2 = false;
                        for (int i = 0; i < size; i++) {
                            z2 |= ((OpGenerator) this.f1105a.get(i)).a(arrayList, arrayList2);
                        }
                    } finally {
                    }
                }
            }
            if (!z2) {
                break;
            }
            this.b = true;
            try {
                U(this.J, this.K);
                e();
                z3 = true;
            } catch (Throwable th) {
                e();
                throw th;
            }
        }
        e0();
        if (this.I) {
            this.I = false;
            ArrayList d = this.f1106c.d();
            int size2 = d.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj = d.get(i2);
                i2++;
                FragmentStateManager fragmentStateManager = (FragmentStateManager) obj;
                Fragment fragment = fragmentStateManager.f1119c;
                if (fragment.mDeferStart) {
                    if (this.b) {
                        this.I = true;
                    } else {
                        fragment.mDeferStart = false;
                        fragmentStateManager.k();
                    }
                }
            }
        }
        this.f1106c.b.values().removeAll(Collections.singleton(null));
        return z3;
    }

    public final void z(BackStackRecord backStackRecord, boolean z) {
        if (z && (this.u == null || this.H)) {
            return;
        }
        x(z);
        backStackRecord.a(this.J, this.K);
        this.b = true;
        try {
            U(this.J, this.K);
            e();
            e0();
            boolean z2 = this.I;
            FragmentStore fragmentStore = this.f1106c;
            if (z2) {
                this.I = false;
                ArrayList d = fragmentStore.d();
                int size = d.size();
                int i = 0;
                while (i < size) {
                    Object obj = d.get(i);
                    i++;
                    FragmentStateManager fragmentStateManager = (FragmentStateManager) obj;
                    Fragment fragment = fragmentStateManager.f1119c;
                    if (fragment.mDeferStart) {
                        if (this.b) {
                            this.I = true;
                        } else {
                            fragment.mDeferStart = false;
                            fragmentStateManager.k();
                        }
                    }
                }
            }
            fragmentStore.b.values().removeAll(Collections.singleton(null));
        } catch (Throwable th) {
            e();
            throw th;
        }
    }
}
