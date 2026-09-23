package androidx.core.graphics;

import a.a;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.collection.LruCache;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import androidx.tracing.Trace;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class TypefaceCompat {

    /* renamed from: a, reason: collision with root package name */
    public static final TypefaceCompatBaseImpl f686a;
    public static final LruCache b;

    @RestrictTo
    /* loaded from: classes.dex */
    public static class ResourcesCallbackAdapter extends FontsContractCompat.FontRequestCallback {

        /* renamed from: a, reason: collision with root package name */
        public ResourcesCompat.FontCallback f687a;
    }

    static {
        Trace.a("TypefaceCompat static init");
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f686a = new TypefaceCompatBaseImpl();
        } else if (i >= 28) {
            f686a = new TypefaceCompatApi26Impl();
        } else if (i >= 26) {
            f686a = new TypefaceCompatApi26Impl();
        } else {
            if (i >= 24) {
                Method method = TypefaceCompatApi24Impl.d;
                if (method == null) {
                    Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
                }
                if (method != null) {
                    f686a = new TypefaceCompatBaseImpl();
                }
            }
            f686a = new TypefaceCompatBaseImpl();
        }
        b = new LruCache(16);
        android.os.Trace.endSection();
    }

    public static Typeface a(Context context, FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        Trace.a("TypefaceCompat.createFromFontInfo");
        try {
            return f686a.b(context, fontInfoArr, i);
        } finally {
            android.os.Trace.endSection();
        }
    }

    public static Typeface b(Context context, List list, int i) {
        Trace.a("TypefaceCompat.createFromFontInfoWithFallback");
        try {
            return f686a.c(context, list, i);
        } finally {
            android.os.Trace.endSection();
        }
    }

    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.Object, androidx.core.graphics.TypefaceCompat$ResourcesCallbackAdapter] */
    public static Typeface c(Context context, FontResourcesParserCompat.FamilyResourceEntry familyResourceEntry, Resources resources, int i, String str, int i2, int i3, ResourcesCompat.FontCallback fontCallback, boolean z) {
        Typeface a2;
        boolean z2;
        int i4;
        List unmodifiableList;
        int i5 = 1;
        if (familyResourceEntry instanceof FontResourcesParserCompat.ProviderResourceEntry) {
            FontResourcesParserCompat.ProviderResourceEntry providerResourceEntry = (FontResourcesParserCompat.ProviderResourceEntry) familyResourceEntry;
            FontRequest fontRequest = providerResourceEntry.f665a;
            String str2 = providerResourceEntry.e;
            Typeface typeface = null;
            if (str2 != null && !str2.isEmpty()) {
                Typeface create = Typeface.create(str2, 0);
                Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
                if (create != null && !create.equals(create2)) {
                    typeface = create;
                }
            }
            if (typeface != null) {
                if (fontCallback != null) {
                    new Handler(Looper.getMainLooper()).post(new a(i5, fontCallback, typeface));
                }
                return typeface;
            }
            if (!z ? fontCallback == null : providerResourceEntry.d == 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z) {
                i4 = providerResourceEntry.f666c;
            } else {
                i4 = -1;
            }
            int i6 = i4;
            Handler handler = new Handler(Looper.getMainLooper());
            ?? obj = new Object();
            obj.f687a = fontCallback;
            FontRequest fontRequest2 = providerResourceEntry.b;
            if (fontRequest2 != null) {
                Object[] objArr = {fontRequest, fontRequest2};
                ArrayList arrayList = new ArrayList(2);
                for (int i7 = 0; i7 < 2; i7++) {
                    Object obj2 = objArr[i7];
                    Objects.requireNonNull(obj2);
                    arrayList.add(obj2);
                }
                unmodifiableList = DesugarCollections.unmodifiableList(arrayList);
            } else {
                ArrayList arrayList2 = new ArrayList(1);
                Object obj3 = new Object[]{fontRequest}[0];
                Objects.requireNonNull(obj3);
                arrayList2.add(obj3);
                unmodifiableList = DesugarCollections.unmodifiableList(arrayList2);
            }
            a2 = FontsContractCompat.b(context, unmodifiableList, i3, z2, i6, handler, obj);
        } else {
            a2 = f686a.a(context, (FontResourcesParserCompat.FontFamilyFilesResourceEntry) familyResourceEntry, resources, i3);
            if (fontCallback != null) {
                if (a2 != null) {
                    new Handler(Looper.getMainLooper()).post(new a(i5, fontCallback, a2));
                } else {
                    fontCallback.a(-3);
                }
            }
        }
        if (a2 != null) {
            b.d(e(resources, i, str, i2, i3), a2);
        }
        return a2;
    }

    public static Typeface d(Context context, Resources resources, int i, String str, int i2, int i3) {
        Typeface e = f686a.e(context, resources, i, str, i3);
        if (e != null) {
            b.d(e(resources, i, str, i2, i3), e);
        }
        return e;
    }

    public static String e(Resources resources, int i, String str, int i2, int i3) {
        return resources.getResourcePackageName(i) + '-' + str + '-' + i2 + '-' + i + '-' + i3;
    }
}
