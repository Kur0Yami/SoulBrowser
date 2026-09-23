package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import com.google.api.client.http.HttpStatusCodes;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes.dex */
public class TypefaceCompatBaseImpl {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f690a = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.graphics.TypefaceCompatBaseImpl$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements StyleExtractor<FontsContractCompat.FontInfo> {
        @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public final int a(Object obj) {
            return ((FontsContractCompat.FontInfo) obj).f734c;
        }

        @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public final boolean b(Object obj) {
            return ((FontsContractCompat.FontInfo) obj).d;
        }
    }

    /* renamed from: androidx.core.graphics.TypefaceCompatBaseImpl$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements StyleExtractor<FontResourcesParserCompat.FontFileResourceEntry> {
        @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public final int a(Object obj) {
            return ((FontResourcesParserCompat.FontFileResourceEntry) obj).b;
        }

        @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public final boolean b(Object obj) {
            return ((FontResourcesParserCompat.FontFileResourceEntry) obj).f664c;
        }
    }

    /* renamed from: androidx.core.graphics.TypefaceCompatBaseImpl$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements StyleExtractor<FontResourcesParserCompat.FontFileResourceEntry> {
        @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public final int a(Object obj) {
            return ((FontResourcesParserCompat.FontFileResourceEntry) obj).b;
        }

        @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
        public final boolean b(Object obj) {
            return ((FontResourcesParserCompat.FontFileResourceEntry) obj).f664c;
        }
    }

    /* loaded from: classes.dex */
    public interface StyleExtractor<T> {
        int a(Object obj);

        boolean b(Object obj);
    }

    public static Object f(Object[] objArr, int i, StyleExtractor styleExtractor) {
        int i2;
        boolean z;
        int i3;
        if ((i & 1) == 0) {
            i2 = HttpStatusCodes.STATUS_CODE_BAD_REQUEST;
        } else {
            i2 = 700;
        }
        if ((i & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        Object obj = null;
        int i4 = Integer.MAX_VALUE;
        for (Object obj2 : objArr) {
            int abs = Math.abs(styleExtractor.a(obj2) - i2) * 2;
            if (styleExtractor.b(obj2) == z) {
                i3 = 0;
            } else {
                i3 = 1;
            }
            int i5 = abs + i3;
            if (obj == null || i4 > i5) {
                obj = obj2;
                i4 = i5;
            }
        }
        return obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.core.graphics.TypefaceCompatBaseImpl$StyleExtractor, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Typeface a(android.content.Context r7, androidx.core.content.res.FontResourcesParserCompat.FontFamilyFilesResourceEntry r8, android.content.res.Resources r9, int r10) {
        /*
            r6 = this;
            androidx.core.content.res.FontResourcesParserCompat$FontFileResourceEntry[] r0 = r8.f662a
            androidx.core.graphics.TypefaceCompatBaseImpl$2 r1 = new androidx.core.graphics.TypefaceCompatBaseImpl$2
            r1.<init>()
            java.lang.Object r0 = f(r0, r10, r1)
            androidx.core.content.res.FontResourcesParserCompat$FontFileResourceEntry r0 = (androidx.core.content.res.FontResourcesParserCompat.FontFileResourceEntry) r0
            if (r0 != 0) goto L11
            r7 = 0
            return r7
        L11:
            int r2 = r0.f
            java.lang.String r3 = r0.f663a
            r4 = 0
            r0 = r7
            r1 = r9
            r5 = r10
            android.graphics.Typeface r7 = androidx.core.graphics.TypefaceCompat.d(r0, r1, r2, r3, r4, r5)
            java.lang.String r9 = "Could not retrieve font from family."
            java.lang.String r10 = "TypefaceCompatBaseImpl"
            r1 = 0
            if (r7 != 0) goto L27
        L25:
            r9 = r1
            goto L4a
        L27:
            java.lang.Class<android.graphics.Typeface> r0 = android.graphics.Typeface.class
            java.lang.String r3 = "native_instance"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r3)     // Catch: java.lang.IllegalAccessException -> L3e java.lang.NoSuchFieldException -> L40
            r3 = 1
            r0.setAccessible(r3)     // Catch: java.lang.IllegalAccessException -> L3e java.lang.NoSuchFieldException -> L40
            java.lang.Object r0 = r0.get(r7)     // Catch: java.lang.IllegalAccessException -> L3e java.lang.NoSuchFieldException -> L40
            java.lang.Number r0 = (java.lang.Number) r0     // Catch: java.lang.IllegalAccessException -> L3e java.lang.NoSuchFieldException -> L40
            long r9 = r0.longValue()     // Catch: java.lang.IllegalAccessException -> L3e java.lang.NoSuchFieldException -> L40
            goto L4a
        L3e:
            r0 = move-exception
            goto L42
        L40:
            r0 = move-exception
            goto L46
        L42:
            android.util.Log.e(r10, r9, r0)
            goto L25
        L46:
            android.util.Log.e(r10, r9, r0)
            goto L25
        L4a:
            int r0 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r0 == 0) goto L57
            j$.util.concurrent.ConcurrentHashMap r0 = r6.f690a
            java.lang.Long r9 = java.lang.Long.valueOf(r9)
            r0.put(r9, r8)
        L57:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.TypefaceCompatBaseImpl.a(android.content.Context, androidx.core.content.res.FontResourcesParserCompat$FontFamilyFilesResourceEntry, android.content.res.Resources, int):android.graphics.Typeface");
    }

    public Typeface b(Context context, FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        if (fontInfoArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(g(fontInfoArr, i).f733a);
            try {
                Typeface d = d(context, inputStream);
                TypefaceCompatUtil.a(inputStream);
                return d;
            } catch (IOException unused) {
                TypefaceCompatUtil.a(inputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                inputStream2 = inputStream;
                TypefaceCompatUtil.a(inputStream2);
                throw th;
            }
        } catch (IOException unused2) {
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public Typeface c(Context context, List list, int i) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    public Typeface d(Context context, InputStream inputStream) {
        File d = TypefaceCompatUtil.d(context);
        if (d == null) {
            return null;
        }
        try {
            if (!TypefaceCompatUtil.c(d, inputStream)) {
                return null;
            }
            return Typeface.createFromFile(d.getPath());
        } catch (RuntimeException unused) {
            return null;
        } finally {
            d.delete();
        }
    }

    public Typeface e(Context context, Resources resources, int i, String str, int i2) {
        File d = TypefaceCompatUtil.d(context);
        if (d == null) {
            return null;
        }
        try {
            if (!TypefaceCompatUtil.b(d, resources, i)) {
                return null;
            }
            return Typeface.createFromFile(d.getPath());
        } catch (RuntimeException unused) {
            return null;
        } finally {
            d.delete();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.core.graphics.TypefaceCompatBaseImpl$StyleExtractor, java.lang.Object] */
    public FontsContractCompat.FontInfo g(FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        return (FontsContractCompat.FontInfo) f(fontInfoArr, i, new Object());
    }
}
