package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import j$.util.Objects;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class ResourcesCompat {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f668a = new ThreadLocal();
    public static final WeakHashMap b = new WeakHashMap(0);

    /* renamed from: c, reason: collision with root package name */
    public static final Object f669c = new Object();

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
    }

    /* loaded from: classes.dex */
    public static class ColorStateListCacheEntry {

        /* renamed from: a, reason: collision with root package name */
        public final ColorStateList f670a;
        public final Configuration b;

        /* renamed from: c, reason: collision with root package name */
        public final int f671c;

        public ColorStateListCacheEntry(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
            int hashCode;
            this.f670a = colorStateList;
            this.b = configuration;
            if (theme == null) {
                hashCode = 0;
            } else {
                hashCode = theme.hashCode();
            }
            this.f671c = hashCode;
        }
    }

    /* loaded from: classes.dex */
    public static final class ColorStateListCacheKey {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f672a;
        public final Resources.Theme b;

        public ColorStateListCacheKey(Resources resources, Resources.Theme theme) {
            this.f672a = resources;
            this.b = theme;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && ColorStateListCacheKey.class == obj.getClass()) {
                ColorStateListCacheKey colorStateListCacheKey = (ColorStateListCacheKey) obj;
                if (this.f672a.equals(colorStateListCacheKey.f672a) && Objects.equals(this.b, colorStateListCacheKey.b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.f672a, this.b);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class FontCallback {
        public final void a(int i) {
            new Handler(Looper.getMainLooper()).post(new a(i, 0, this));
        }

        public abstract void b(int i);

        public abstract void c(Typeface typeface);
    }

    /* loaded from: classes.dex */
    public static final class ThemeCompat {

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api23Impl {

            /* renamed from: a, reason: collision with root package name */
            public static final Object f673a = new Object();
            public static Method b;

            /* renamed from: c, reason: collision with root package name */
            public static boolean f674c;
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public static class Api29Impl {
            public static void a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        public static void a(Resources.Theme theme) {
            if (Build.VERSION.SDK_INT >= 29) {
                Api29Impl.a(theme);
                return;
            }
            synchronized (Api23Impl.f673a) {
                if (!Api23Impl.f674c) {
                    try {
                        Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", null);
                        Api23Impl.b = declaredMethod;
                        declaredMethod.setAccessible(true);
                    } catch (NoSuchMethodException e) {
                        Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e);
                    }
                    Api23Impl.f674c = true;
                }
                Method method = Api23Impl.b;
                if (method != null) {
                    try {
                        method.invoke(theme, null);
                    } catch (IllegalAccessException | InvocationTargetException e2) {
                        Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e2);
                        Api23Impl.b = null;
                    }
                }
            }
        }
    }

    public static void a(ColorStateListCacheKey colorStateListCacheKey, int i, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (f669c) {
            try {
                WeakHashMap weakHashMap = b;
                SparseArray sparseArray = (SparseArray) weakHashMap.get(colorStateListCacheKey);
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    weakHashMap.put(colorStateListCacheKey, sparseArray);
                }
                sparseArray.append(i, new ColorStateListCacheEntry(colorStateList, colorStateListCacheKey.f672a.getConfiguration(), theme));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x003e, code lost:
    
        if (r4.f671c == r8.hashCode()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList b(int r7, android.content.res.Resources.Theme r8, android.content.res.Resources r9) {
        /*
            androidx.core.content.res.ResourcesCompat$ColorStateListCacheKey r0 = new androidx.core.content.res.ResourcesCompat$ColorStateListCacheKey
            r0.<init>(r9, r8)
            java.lang.Object r1 = androidx.core.content.res.ResourcesCompat.f669c
            monitor-enter(r1)
            java.util.WeakHashMap r2 = androidx.core.content.res.ResourcesCompat.b     // Catch: java.lang.Throwable -> L34
            java.lang.Object r2 = r2.get(r0)     // Catch: java.lang.Throwable -> L34
            android.util.SparseArray r2 = (android.util.SparseArray) r2     // Catch: java.lang.Throwable -> L34
            r3 = 0
            if (r2 == 0) goto L47
            int r4 = r2.size()     // Catch: java.lang.Throwable -> L34
            if (r4 <= 0) goto L47
            java.lang.Object r4 = r2.get(r7)     // Catch: java.lang.Throwable -> L34
            androidx.core.content.res.ResourcesCompat$ColorStateListCacheEntry r4 = (androidx.core.content.res.ResourcesCompat.ColorStateListCacheEntry) r4     // Catch: java.lang.Throwable -> L34
            if (r4 == 0) goto L47
            android.content.res.Configuration r5 = r4.b     // Catch: java.lang.Throwable -> L34
            android.content.res.Configuration r6 = r9.getConfiguration()     // Catch: java.lang.Throwable -> L34
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Throwable -> L34
            if (r5 == 0) goto L44
            if (r8 != 0) goto L36
            int r5 = r4.f671c     // Catch: java.lang.Throwable -> L34
            if (r5 == 0) goto L40
            goto L36
        L34:
            r7 = move-exception
            goto L89
        L36:
            if (r8 == 0) goto L44
            int r5 = r4.f671c     // Catch: java.lang.Throwable -> L34
            int r6 = r8.hashCode()     // Catch: java.lang.Throwable -> L34
            if (r5 != r6) goto L44
        L40:
            android.content.res.ColorStateList r2 = r4.f670a     // Catch: java.lang.Throwable -> L34
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L34
            goto L49
        L44:
            r2.remove(r7)     // Catch: java.lang.Throwable -> L34
        L47:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L34
            r2 = r3
        L49:
            if (r2 == 0) goto L4c
            return r2
        L4c:
            java.lang.ThreadLocal r1 = androidx.core.content.res.ResourcesCompat.f668a
            java.lang.Object r2 = r1.get()
            android.util.TypedValue r2 = (android.util.TypedValue) r2
            if (r2 != 0) goto L5e
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            r1.set(r2)
        L5e:
            r1 = 1
            r9.getValue(r7, r2, r1)
            int r1 = r2.type
            r2 = 28
            if (r1 < r2) goto L6d
            r2 = 31
            if (r1 > r2) goto L6d
            goto L7e
        L6d:
            android.content.res.XmlResourceParser r1 = r9.getXml(r7)
            android.content.res.ColorStateList r3 = androidx.core.content.res.ColorStateListInflaterCompat.a(r9, r1, r8)     // Catch: java.lang.Exception -> L76
            goto L7e
        L76:
            r1 = move-exception
            java.lang.String r2 = "ResourcesCompat"
            java.lang.String r4 = "Failed to inflate ColorStateList, leaving it to the framework"
            android.util.Log.w(r2, r4, r1)
        L7e:
            if (r3 == 0) goto L84
            a(r0, r7, r3, r8)
            return r3
        L84:
            android.content.res.ColorStateList r7 = r9.getColorStateList(r7, r8)
            return r7
        L89:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L34
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ResourcesCompat.b(int, android.content.res.Resources$Theme, android.content.res.Resources):android.content.res.ColorStateList");
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00cc A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface c(android.content.Context r12, int r13, android.util.TypedValue r14, int r15, androidx.core.content.res.ResourcesCompat.FontCallback r16, boolean r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ResourcesCompat.c(android.content.Context, int, android.util.TypedValue, int, androidx.core.content.res.ResourcesCompat$FontCallback, boolean, boolean):android.graphics.Typeface");
    }
}
