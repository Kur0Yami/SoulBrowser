package androidx.core.provider;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.provider.BaseColumns;
import androidx.annotation.RestrictTo;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.provider.FontRequestWorker;
import androidx.core.provider.RequestExecutor;
import androidx.core.util.Consumer;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class FontsContractCompat {

    /* loaded from: classes.dex */
    public static final class Columns implements BaseColumns {
    }

    /* loaded from: classes.dex */
    public static class FontInfo {

        /* renamed from: a, reason: collision with root package name */
        public final Uri f733a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f734c;
        public final boolean d;
        public final int e;

        public FontInfo(Uri uri, int i, int i2, boolean z, int i3) {
            uri.getClass();
            this.f733a = uri;
            this.b = i;
            this.f734c = i2;
            this.d = z;
            this.e = i3;
        }
    }

    /* loaded from: classes.dex */
    public static class FontRequestCallback {

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface FontRequestFailReason {
        }
    }

    public static FontFamilyResult a(Context context, FontRequest fontRequest) {
        Object[] objArr = {fontRequest};
        ArrayList arrayList = new ArrayList(1);
        Object obj = objArr[0];
        Objects.requireNonNull(obj);
        arrayList.add(obj);
        return FontProvider.a(context, DesugarCollections.unmodifiableList(arrayList));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v2, types: [androidx.core.provider.RequestExecutor$ReplyRunnable, java.lang.Object, java.lang.Runnable] */
    public static Typeface b(final Context context, List list, final int i, boolean z, int i2, Handler handler, TypefaceCompat.ResourcesCallbackAdapter resourcesCallbackAdapter) {
        Handler handler2;
        final CallbackWrapper callbackWrapper = new CallbackWrapper(resourcesCallbackAdapter, new RequestExecutor.HandlerExecutor(handler));
        if (z) {
            if (list.size() <= 1) {
                final FontRequest fontRequest = (FontRequest) list.get(0);
                LruCache lruCache = FontRequestWorker.f723a;
                ArrayList arrayList = new ArrayList(1);
                Object obj = new Object[]{fontRequest}[0];
                Objects.requireNonNull(obj);
                arrayList.add(obj);
                final String a2 = FontRequestWorker.a(i, DesugarCollections.unmodifiableList(arrayList));
                Typeface typeface = (Typeface) FontRequestWorker.f723a.c(a2);
                if (typeface != null) {
                    callbackWrapper.a(new FontRequestWorker.TypefaceResult(typeface));
                    return typeface;
                }
                if (i2 == -1) {
                    Object[] objArr = {fontRequest};
                    ArrayList arrayList2 = new ArrayList(1);
                    Object obj2 = objArr[0];
                    Objects.requireNonNull(obj2);
                    arrayList2.add(obj2);
                    FontRequestWorker.TypefaceResult b = FontRequestWorker.b(a2, context, DesugarCollections.unmodifiableList(arrayList2), i);
                    callbackWrapper.a(b);
                    return b.f731a;
                }
                try {
                    try {
                        FontRequestWorker.TypefaceResult typefaceResult = (FontRequestWorker.TypefaceResult) FontRequestWorker.b.submit(new Callable<FontRequestWorker.TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.1

                            /* renamed from: a */
                            public final /* synthetic */ String f725a;
                            public final /* synthetic */ Context b;

                            /* renamed from: c */
                            public final /* synthetic */ FontRequest f726c;
                            public final /* synthetic */ int d;

                            public AnonymousClass1(final String a22, final Context context2, final FontRequest fontRequest2, final int i3) {
                                r1 = a22;
                                r2 = context2;
                                r3 = fontRequest2;
                                r4 = i3;
                            }

                            @Override // java.util.concurrent.Callable
                            public final TypefaceResult call() {
                                Object[] objArr2 = {r3};
                                ArrayList arrayList3 = new ArrayList(1);
                                Object obj3 = objArr2[0];
                                Objects.requireNonNull(obj3);
                                arrayList3.add(obj3);
                                return FontRequestWorker.b(r1, r2, DesugarCollections.unmodifiableList(arrayList3), r4);
                            }
                        }).get(i2, TimeUnit.MILLISECONDS);
                        callbackWrapper.a(typefaceResult);
                        return typefaceResult.f731a;
                    } catch (InterruptedException e) {
                        throw e;
                    } catch (ExecutionException e2) {
                        throw new RuntimeException(e2);
                    } catch (TimeoutException unused) {
                        throw new InterruptedException("timeout");
                    }
                } catch (InterruptedException unused2) {
                    callbackWrapper.a(new FontRequestWorker.TypefaceResult(-3));
                    return null;
                }
            }
            throw new IllegalArgumentException("Fallbacks with blocking fetches are not supported for performance reasons");
        }
        final String a3 = FontRequestWorker.a(i3, list);
        Typeface typeface2 = (Typeface) FontRequestWorker.f723a.c(a3);
        if (typeface2 != null) {
            callbackWrapper.a(new FontRequestWorker.TypefaceResult(typeface2));
            return typeface2;
        }
        Consumer<FontRequestWorker.TypefaceResult> anonymousClass2 = new Consumer<FontRequestWorker.TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.2
            public AnonymousClass2() {
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj3) {
                TypefaceResult typefaceResult2 = (TypefaceResult) obj3;
                if (typefaceResult2 == null) {
                    typefaceResult2 = new TypefaceResult(-3);
                }
                CallbackWrapper.this.a(typefaceResult2);
            }
        };
        synchronized (FontRequestWorker.f724c) {
            try {
                SimpleArrayMap simpleArrayMap = FontRequestWorker.d;
                ArrayList arrayList3 = (ArrayList) simpleArrayMap.get(a3);
                if (arrayList3 != null) {
                    arrayList3.add(anonymousClass2);
                    return null;
                }
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(anonymousClass2);
                simpleArrayMap.put(a3, arrayList4);
                FontRequestWorker.AnonymousClass3 anonymousClass3 = new FontRequestWorker.AnonymousClass3(a3, context2, list, i3);
                ThreadPoolExecutor threadPoolExecutor = FontRequestWorker.b;
                Consumer<FontRequestWorker.TypefaceResult> anonymousClass4 = new Consumer<FontRequestWorker.TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.4

                    /* renamed from: c */
                    public final /* synthetic */ String f730c;

                    public AnonymousClass4(final String a32) {
                        r1 = a32;
                    }

                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj3) {
                        TypefaceResult typefaceResult2 = (TypefaceResult) obj3;
                        synchronized (FontRequestWorker.f724c) {
                            try {
                                SimpleArrayMap simpleArrayMap2 = FontRequestWorker.d;
                                ArrayList arrayList5 = (ArrayList) simpleArrayMap2.get(r1);
                                if (arrayList5 == null) {
                                    return;
                                }
                                simpleArrayMap2.remove(r1);
                                for (int i3 = 0; i3 < arrayList5.size(); i3++) {
                                    ((Consumer) arrayList5.get(i3)).accept(typefaceResult2);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                };
                if (Looper.myLooper() == null) {
                    handler2 = new Handler(Looper.getMainLooper());
                } else {
                    handler2 = new Handler();
                }
                ?? obj3 = new Object();
                obj3.f738c = anonymousClass3;
                obj3.f = anonymousClass4;
                obj3.g = handler2;
                threadPoolExecutor.execute(obj3);
                return null;
            } finally {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class FontFamilyResult {

        /* renamed from: a, reason: collision with root package name */
        public final int f732a;
        public final List b;

        public FontFamilyResult() {
            this.f732a = 1;
            this.b = Collections.singletonList(null);
        }

        public FontFamilyResult(ArrayList arrayList) {
            this.f732a = 0;
            this.b = arrayList;
        }
    }
}
