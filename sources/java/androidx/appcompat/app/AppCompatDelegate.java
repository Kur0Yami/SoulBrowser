package androidx.appcompat.app;

import android.app.LocaleManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.util.Log;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.app.AppLocalesMetadataHolderService;
import androidx.appcompat.widget.Toolbar;
import androidx.collection.ArraySet;
import androidx.collection.IndexBasedArrayIterator;
import androidx.core.app.AppLocalesStorageHelper;
import androidx.core.os.LocaleListCompat;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public abstract class AppCompatDelegate {

    /* renamed from: c, reason: collision with root package name */
    public static final SerialExecutor f84c = new SerialExecutor(new Object());
    public static int f = -100;
    public static LocaleListCompat g = null;
    public static LocaleListCompat h = null;
    public static Boolean i = null;
    public static boolean j = false;
    public static final ArraySet k = new ArraySet(0);
    public static final Object l = new Object();
    public static final Object m = new Object();

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
        @DoNotInline
        public static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api33Impl {
        @DoNotInline
        public static LocaleList a(Object obj) {
            return ((LocaleManager) obj).getApplicationLocales();
        }

        @DoNotInline
        public static void b(Object obj, LocaleList localeList) {
            ((LocaleManager) obj).setApplicationLocales(localeList);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface NightMode {
    }

    /* loaded from: classes.dex */
    public static class SerialExecutor implements Executor {

        /* renamed from: c, reason: collision with root package name */
        public final Object f85c = new Object();
        public final ArrayDeque f = new ArrayDeque();
        public final Executor g;
        public Runnable h;

        public SerialExecutor(Executor executor) {
            this.g = executor;
        }

        public final void a() {
            synchronized (this.f85c) {
                try {
                    Runnable runnable = (Runnable) this.f.poll();
                    this.h = runnable;
                    if (runnable != null) {
                        ((ThreadPerTaskExecutor) this.g).execute(runnable);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.concurrent.Executor
        public final void execute(final Runnable runnable) {
            synchronized (this.f85c) {
                try {
                    this.f.add(new Runnable() { // from class: androidx.appcompat.app.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            Runnable runnable2 = runnable;
                            AppCompatDelegate.SerialExecutor serialExecutor = AppCompatDelegate.SerialExecutor.this;
                            serialExecutor.getClass();
                            try {
                                runnable2.run();
                            } finally {
                                serialExecutor.a();
                            }
                        }
                    });
                    if (this.h == null) {
                        a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ThreadPerTaskExecutor implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            new Thread(runnable).start();
        }
    }

    public static void G(Context context) {
        if (p(context)) {
            if (Build.VERSION.SDK_INT >= 33) {
                if (!j) {
                    f84c.execute(new a(context, 0));
                    return;
                }
                return;
            }
            synchronized (m) {
                try {
                    LocaleListCompat localeListCompat = g;
                    if (localeListCompat == null) {
                        if (h == null) {
                            h = LocaleListCompat.b(AppLocalesStorageHelper.b(context));
                        }
                        if (h.d()) {
                        } else {
                            g = h;
                        }
                    } else if (!localeListCompat.equals(h)) {
                        LocaleListCompat localeListCompat2 = g;
                        h = localeListCompat2;
                        AppLocalesStorageHelper.a(context, localeListCompat2.f());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static LocaleListCompat h() {
        if (Build.VERSION.SDK_INT >= 33) {
            Object k2 = k();
            if (k2 != null) {
                return LocaleListCompat.g(Api33Impl.a(k2));
            }
        } else {
            LocaleListCompat localeListCompat = g;
            if (localeListCompat != null) {
                return localeListCompat;
            }
        }
        return LocaleListCompat.b;
    }

    public static Object k() {
        Context i2;
        Iterator it = k.iterator();
        while (true) {
            IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it;
            if (indexBasedArrayIterator.hasNext()) {
                AppCompatDelegate appCompatDelegate = (AppCompatDelegate) ((WeakReference) indexBasedArrayIterator.next()).get();
                if (appCompatDelegate != null && (i2 = appCompatDelegate.i()) != null) {
                    return i2.getSystemService("locale");
                }
            } else {
                return null;
            }
        }
    }

    public static boolean p(Context context) {
        int i2;
        if (i == null) {
            try {
                int i3 = AppLocalesMetadataHolderService.f106c;
                if (Build.VERSION.SDK_INT >= 24) {
                    i2 = AppLocalesMetadataHolderService.Api24Impl.a() | Uuid.SIZE_BITS;
                } else {
                    i2 = 640;
                }
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) AppLocalesMetadataHolderService.class), i2).metaData;
                if (bundle != null) {
                    i = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                i = Boolean.FALSE;
            }
        }
        return i.booleanValue();
    }

    public static void x(AppCompatDelegate appCompatDelegate) {
        synchronized (l) {
            try {
                Iterator it = k.iterator();
                while (true) {
                    IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it;
                    if (indexBasedArrayIterator.hasNext()) {
                        AppCompatDelegate appCompatDelegate2 = (AppCompatDelegate) ((WeakReference) indexBasedArrayIterator.next()).get();
                        if (appCompatDelegate2 == appCompatDelegate || appCompatDelegate2 == null) {
                            indexBasedArrayIterator.remove();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void z(LocaleListCompat localeListCompat) {
        Objects.requireNonNull(localeListCompat);
        if (Build.VERSION.SDK_INT >= 33) {
            Object k2 = k();
            if (k2 != null) {
                Api33Impl.b(k2, Api24Impl.a(localeListCompat.f()));
                return;
            }
            return;
        }
        if (!localeListCompat.equals(g)) {
            synchronized (l) {
                g = localeListCompat;
                Iterator it = k.iterator();
                while (true) {
                    IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it;
                    if (indexBasedArrayIterator.hasNext()) {
                        AppCompatDelegate appCompatDelegate = (AppCompatDelegate) ((WeakReference) indexBasedArrayIterator.next()).get();
                        if (appCompatDelegate != null) {
                            appCompatDelegate.d();
                        }
                    }
                }
            }
        }
    }

    public abstract void A(int i2);

    public abstract void B(View view);

    public abstract void C(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void D(Toolbar toolbar);

    public void E(int i2) {
    }

    public abstract void F(CharSequence charSequence);

    public abstract void c(View view, ViewGroup.LayoutParams layoutParams);

    public abstract boolean e();

    public Context f(Context context) {
        return context;
    }

    public abstract View g(int i2);

    public Context i() {
        return null;
    }

    public int j() {
        return -100;
    }

    public abstract MenuInflater l();

    public abstract ActionBar m();

    public abstract void n();

    public abstract void o();

    public abstract void q(Configuration configuration);

    public abstract void r();

    public abstract void s();

    public abstract void t();

    public abstract void u();

    public abstract void v();

    public abstract void w();

    public abstract boolean y(int i2);

    public void d() {
    }
}
