package androidx.core.provider;

import android.content.Context;
import android.graphics.Typeface;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FontRequestWorker {

    /* renamed from: a, reason: collision with root package name */
    public static final LruCache f723a = new LruCache(16);
    public static final ThreadPoolExecutor b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f724c;
    public static final SimpleArrayMap d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.provider.FontRequestWorker$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Callable<TypefaceResult> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f728a;
        public final /* synthetic */ Context b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ List f729c;
        public final /* synthetic */ int d;

        public AnonymousClass3(String str, Context context, List list, int i) {
            this.f728a = str;
            this.b = context;
            this.f729c = list;
            this.d = i;
        }

        @Override // java.util.concurrent.Callable
        public final TypefaceResult call() {
            try {
                return FontRequestWorker.b(this.f728a, this.b, this.f729c, this.d);
            } catch (Throwable unused) {
                return new TypefaceResult(-3);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, androidx.core.provider.RequestExecutor$DefaultThreadFactory, java.util.concurrent.ThreadFactory] */
    static {
        ?? obj = new Object();
        obj.f735a = "fonts-androidx";
        obj.b = 10;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), (ThreadFactory) obj);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        b = threadPoolExecutor;
        f724c = new Object();
        d = new SimpleArrayMap(0);
    }

    public static String a(int i, List list) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            sb.append(((FontRequest) list.get(i2)).e);
            sb.append("-");
            sb.append(i);
            if (i2 < list.size() - 1) {
                sb.append(";");
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004e A[Catch: all -> 0x0093, TRY_LEAVE, TryCatch #1 {all -> 0x0093, NameNotFoundException -> 0x0089, blocks: (B:3:0x0007, B:5:0x000f, B:10:0x0018, B:11:0x001c, B:16:0x004e, B:19:0x0057, B:21:0x005d, B:23:0x0063, B:25:0x0074, B:28:0x0080, B:31:0x0068, B:33:0x002b, B:35:0x0033, B:38:0x0037, B:40:0x003b, B:42:0x0046, B:51:0x0089), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0057 A[Catch: all -> 0x0093, TRY_ENTER, TryCatch #1 {all -> 0x0093, NameNotFoundException -> 0x0089, blocks: (B:3:0x0007, B:5:0x000f, B:10:0x0018, B:11:0x001c, B:16:0x004e, B:19:0x0057, B:21:0x005d, B:23:0x0063, B:25:0x0074, B:28:0x0080, B:31:0x0068, B:33:0x002b, B:35:0x0033, B:38:0x0037, B:40:0x003b, B:42:0x0046, B:51:0x0089), top: B:2:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.provider.FontRequestWorker.TypefaceResult b(java.lang.String r8, android.content.Context r9, java.util.List r10, int r11) {
        /*
            androidx.collection.LruCache r0 = androidx.core.provider.FontRequestWorker.f723a
            java.lang.String r1 = "getFontSync"
            androidx.tracing.Trace.a(r1)
            java.lang.Object r1 = r0.c(r8)     // Catch: java.lang.Throwable -> L93
            android.graphics.Typeface r1 = (android.graphics.Typeface) r1     // Catch: java.lang.Throwable -> L93
            if (r1 == 0) goto L18
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> L93
            r8.<init>(r1)     // Catch: java.lang.Throwable -> L93
            android.os.Trace.endSection()
            return r8
        L18:
            androidx.core.provider.FontsContractCompat$FontFamilyResult r10 = androidx.core.provider.FontProvider.a(r9, r10)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L89 java.lang.Throwable -> L93
            java.util.List r1 = r10.b     // Catch: java.lang.Throwable -> L93
            int r10 = r10.f732a     // Catch: java.lang.Throwable -> L93
            r2 = 1
            r3 = -3
            r4 = 0
            if (r10 == 0) goto L2b
            if (r10 == r2) goto L29
        L27:
            r10 = r3
            goto L4c
        L29:
            r10 = -2
            goto L4c
        L2b:
            java.lang.Object r10 = r1.get(r4)     // Catch: java.lang.Throwable -> L93
            androidx.core.provider.FontsContractCompat$FontInfo[] r10 = (androidx.core.provider.FontsContractCompat.FontInfo[]) r10     // Catch: java.lang.Throwable -> L93
            if (r10 == 0) goto L4b
            int r5 = r10.length     // Catch: java.lang.Throwable -> L93
            if (r5 != 0) goto L37
            goto L4b
        L37:
            int r5 = r10.length     // Catch: java.lang.Throwable -> L93
            r6 = r4
        L39:
            if (r6 >= r5) goto L49
            r7 = r10[r6]     // Catch: java.lang.Throwable -> L93
            int r7 = r7.e     // Catch: java.lang.Throwable -> L93
            if (r7 == 0) goto L46
            if (r7 >= 0) goto L44
            goto L27
        L44:
            r10 = r7
            goto L4c
        L46:
            int r6 = r6 + 1
            goto L39
        L49:
            r10 = r4
            goto L4c
        L4b:
            r10 = r2
        L4c:
            if (r10 == 0) goto L57
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> L93
            r8.<init>(r10)     // Catch: java.lang.Throwable -> L93
            android.os.Trace.endSection()
            return r8
        L57:
            int r10 = r1.size()     // Catch: java.lang.Throwable -> L93
            if (r10 <= r2) goto L68
            int r10 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L93
            r2 = 29
            if (r10 < r2) goto L68
            android.graphics.Typeface r9 = androidx.core.graphics.TypefaceCompat.b(r9, r1, r11)     // Catch: java.lang.Throwable -> L93
            goto L72
        L68:
            java.lang.Object r10 = r1.get(r4)     // Catch: java.lang.Throwable -> L93
            androidx.core.provider.FontsContractCompat$FontInfo[] r10 = (androidx.core.provider.FontsContractCompat.FontInfo[]) r10     // Catch: java.lang.Throwable -> L93
            android.graphics.Typeface r9 = androidx.core.graphics.TypefaceCompat.a(r9, r10, r11)     // Catch: java.lang.Throwable -> L93
        L72:
            if (r9 == 0) goto L80
            r0.d(r8, r9)     // Catch: java.lang.Throwable -> L93
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> L93
            r8.<init>(r9)     // Catch: java.lang.Throwable -> L93
            android.os.Trace.endSection()
            return r8
        L80:
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> L93
            r8.<init>(r3)     // Catch: java.lang.Throwable -> L93
            android.os.Trace.endSection()
            return r8
        L89:
            androidx.core.provider.FontRequestWorker$TypefaceResult r8 = new androidx.core.provider.FontRequestWorker$TypefaceResult     // Catch: java.lang.Throwable -> L93
            r9 = -1
            r8.<init>(r9)     // Catch: java.lang.Throwable -> L93
            android.os.Trace.endSection()
            return r8
        L93:
            r8 = move-exception
            android.os.Trace.endSection()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.provider.FontRequestWorker.b(java.lang.String, android.content.Context, java.util.List, int):androidx.core.provider.FontRequestWorker$TypefaceResult");
    }

    /* loaded from: classes.dex */
    public static final class TypefaceResult {

        /* renamed from: a, reason: collision with root package name */
        public final Typeface f731a;
        public final int b;

        public TypefaceResult(int i) {
            this.f731a = null;
            this.b = i;
        }

        public TypefaceResult(Typeface typeface) {
            this.f731a = typeface;
            this.b = 0;
        }
    }
}
