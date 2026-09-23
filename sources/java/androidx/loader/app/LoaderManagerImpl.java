package androidx.loader.app;

import android.os.Looper;
import androidx.collection.SparseArrayCompat;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import com.google.android.gms.auth.api.signin.internal.zbc;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.Uuid;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class LoaderManagerImpl extends LoaderManager {

    /* renamed from: a, reason: collision with root package name */
    public final Object f1244a;
    public final LoaderViewModel b;

    /* loaded from: classes.dex */
    public static class LoaderInfo<D> extends MutableLiveData<D> implements Loader.OnLoadCompleteListener<D> {
        public final Loader l;
        public Object m;
        public LoaderObserver n;

        public LoaderInfo(Loader loader) {
            this.l = loader;
            if (loader.f1246a == null) {
                loader.f1246a = this;
                return;
            }
            throw new IllegalStateException("There is already a listener registered");
        }

        @Override // androidx.lifecycle.LiveData
        public final void f() {
            Loader loader = this.l;
            loader.f1247c = true;
            loader.e = false;
            loader.d = false;
            loader.e();
        }

        @Override // androidx.lifecycle.LiveData
        public final void g() {
            Loader loader = this.l;
            loader.f1247c = false;
            loader.f();
        }

        @Override // androidx.lifecycle.LiveData
        public final void h(Observer observer) {
            super.h(observer);
            this.m = null;
            this.n = null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.lifecycle.LifecycleOwner, java.lang.Object] */
        public final void k() {
            ?? r0 = this.m;
            LoaderObserver loaderObserver = this.n;
            if (r0 != 0 && loaderObserver != null) {
                super.h(loaderObserver);
                d(r0, loaderObserver);
            }
        }

        public final void l(Object obj) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                super.i(obj);
            } else {
                j(obj);
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #0 : ");
            Class<?> cls = this.l.getClass();
            sb.append(cls.getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(cls)));
            sb.append("}}");
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public static class LoaderObserver<D> implements Observer<D> {

        /* renamed from: a, reason: collision with root package name */
        public final LoaderManager.LoaderCallbacks f1245a;
        public boolean b = false;

        public LoaderObserver(Loader loader, LoaderManager.LoaderCallbacks loaderCallbacks) {
            this.f1245a = loaderCallbacks;
        }

        @Override // androidx.lifecycle.Observer
        public final void a(Object obj) {
            this.b = true;
            this.f1245a.a(obj);
        }

        public final String toString() {
            return this.f1245a.toString();
        }
    }

    /* loaded from: classes.dex */
    public static class LoaderViewModel extends ViewModel {
        public static final ViewModelProvider.Factory f = new Object();
        public final SparseArrayCompat d = new SparseArrayCompat();
        public boolean e = false;

        /* renamed from: androidx.loader.app.LoaderManagerImpl$LoaderViewModel$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public static class AnonymousClass1 implements ViewModelProvider.Factory {
            @Override // androidx.lifecycle.ViewModelProvider.Factory
            public final ViewModel a(Class cls) {
                return new LoaderViewModel();
            }

            @Override // androidx.lifecycle.ViewModelProvider.Factory
            public final ViewModel b(Class modelClass, MutableCreationExtras extras) {
                Intrinsics.checkNotNullParameter(modelClass, "modelClass");
                Intrinsics.checkNotNullParameter(extras, "extras");
                return a(modelClass);
            }
        }

        @Override // androidx.lifecycle.ViewModel
        public final void b() {
            SparseArrayCompat sparseArrayCompat = this.d;
            int i = sparseArrayCompat.g;
            for (int i2 = 0; i2 < i; i2++) {
                LoaderInfo loaderInfo = (LoaderInfo) sparseArrayCompat.f[i2];
                Loader loader = loaderInfo.l;
                loader.c();
                loader.d = true;
                LoaderObserver loaderObserver = loaderInfo.n;
                if (loaderObserver != null) {
                    loaderInfo.h(loaderObserver);
                }
                LoaderInfo loaderInfo2 = loader.f1246a;
                if (loaderInfo2 != null) {
                    if (loaderInfo2 == loaderInfo) {
                        loader.f1246a = null;
                        if (loaderObserver != null) {
                            boolean z = loaderObserver.b;
                        }
                        loader.d();
                        loader.e = true;
                        loader.f1247c = false;
                        loader.d = false;
                        loader.f = false;
                        loader.g = false;
                    } else {
                        throw new IllegalArgumentException("Attempting to unregister the wrong listener");
                    }
                } else {
                    throw new IllegalStateException("No listener register");
                }
            }
            int i3 = sparseArrayCompat.g;
            Object[] objArr = sparseArrayCompat.f;
            for (int i4 = 0; i4 < i3; i4++) {
                objArr[i4] = null;
            }
            sparseArrayCompat.g = 0;
        }
    }

    public LoaderManagerImpl(LifecycleOwner lifecycleOwner, ViewModelStore viewModelStore) {
        this.f1244a = lifecycleOwner;
        this.b = (LoaderViewModel) new ViewModelProvider(viewModelStore, LoaderViewModel.f).a(LoaderViewModel.class);
    }

    @Override // androidx.loader.app.LoaderManager
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        boolean z;
        SparseArrayCompat sparseArrayCompat = this.b.d;
        if (sparseArrayCompat.g > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < sparseArrayCompat.g; i++) {
                LoaderInfo loaderInfo = (LoaderInfo) sparseArrayCompat.f[i];
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(sparseArrayCompat.f474c[i]);
                printWriter.print(": ");
                printWriter.println(loaderInfo.toString());
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(0);
                printWriter.print(" mArgs=");
                Object obj = null;
                printWriter.println((Object) null);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                Loader loader = loaderInfo.l;
                printWriter.println(loader);
                loader.b(str2 + "  ", fileDescriptor, printWriter, strArr);
                if (loaderInfo.n != null) {
                    printWriter.print(str2);
                    printWriter.print("mCallbacks=");
                    printWriter.println(loaderInfo.n);
                    LoaderObserver loaderObserver = loaderInfo.n;
                    loaderObserver.getClass();
                    printWriter.print(str2 + "  ");
                    printWriter.print("mDeliveredData=");
                    printWriter.println(loaderObserver.b);
                }
                printWriter.print(str2);
                printWriter.print("mData=");
                Object obj2 = loaderInfo.e;
                if (obj2 != LiveData.k) {
                    obj = obj2;
                }
                StringBuilder sb = new StringBuilder(64);
                if (obj == null) {
                    sb.append("null");
                } else {
                    Class<?> cls = obj.getClass();
                    sb.append(cls.getSimpleName());
                    sb.append("{");
                    sb.append(Integer.toHexString(System.identityHashCode(cls)));
                    sb.append("}");
                }
                printWriter.println(sb.toString());
                printWriter.print(str2);
                printWriter.print("mStarted=");
                if (loaderInfo.f1206c > 0) {
                    z = true;
                } else {
                    z = false;
                }
                printWriter.println(z);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.lifecycle.LifecycleOwner, java.lang.Object] */
    @Override // androidx.loader.app.LoaderManager
    public final Loader c(LoaderManager.LoaderCallbacks loaderCallbacks) {
        LoaderViewModel loaderViewModel = this.b;
        boolean z = loaderViewModel.e;
        SparseArrayCompat sparseArrayCompat = loaderViewModel.d;
        if (!z) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                LoaderInfo loaderInfo = (LoaderInfo) sparseArrayCompat.c(0);
                ?? r5 = this.f1244a;
                if (loaderInfo == 0) {
                    try {
                        loaderViewModel.e = true;
                        zbc b = loaderCallbacks.b();
                        if (zbc.class.isMemberClass() && !Modifier.isStatic(zbc.class.getModifiers())) {
                            throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + b);
                        }
                        LoaderInfo loaderInfo2 = new LoaderInfo(b);
                        sparseArrayCompat.d(0, loaderInfo2);
                        loaderViewModel.e = false;
                        Loader loader = loaderInfo2.l;
                        LoaderObserver loaderObserver = new LoaderObserver(loader, loaderCallbacks);
                        loaderInfo2.d(r5, loaderObserver);
                        LoaderObserver loaderObserver2 = loaderInfo2.n;
                        if (loaderObserver2 != null) {
                            loaderInfo2.h(loaderObserver2);
                        }
                        loaderInfo2.m = r5;
                        loaderInfo2.n = loaderObserver;
                        return loader;
                    } catch (Throwable th) {
                        loaderViewModel.e = false;
                        throw th;
                    }
                }
                Loader loader2 = loaderInfo.l;
                LoaderObserver loaderObserver3 = new LoaderObserver(loader2, loaderCallbacks);
                loaderInfo.d(r5, loaderObserver3);
                LoaderObserver loaderObserver4 = loaderInfo.n;
                if (loaderObserver4 != null) {
                    loaderInfo.h(loaderObserver4);
                }
                loaderInfo.m = r5;
                loaderInfo.n = loaderObserver3;
                return loader2;
            }
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // androidx.loader.app.LoaderManager
    public final void d() {
        SparseArrayCompat sparseArrayCompat = this.b.d;
        int i = sparseArrayCompat.g;
        for (int i2 = 0; i2 < i; i2++) {
            ((LoaderInfo) sparseArrayCompat.f[i2]).k();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(Uuid.SIZE_BITS);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Class<?> cls = this.f1244a.getClass();
        sb.append(cls.getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(cls)));
        sb.append("}}");
        return sb.toString();
    }
}
