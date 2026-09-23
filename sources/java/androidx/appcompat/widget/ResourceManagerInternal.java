package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.appcompat.resources.Compatibility;
import androidx.appcompat.resources.R;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.collection.LongSparseArray;
import androidx.collection.LongSparseArrayKt;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.collection.SparseArrayCompat;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo
/* loaded from: classes.dex */
public final class ResourceManagerInternal {
    public static ResourceManagerInternal i;

    /* renamed from: a, reason: collision with root package name */
    public WeakHashMap f314a;
    public SimpleArrayMap b;

    /* renamed from: c, reason: collision with root package name */
    public SparseArrayCompat f315c;
    public final WeakHashMap d = new WeakHashMap(0);
    public TypedValue e;
    public boolean f;
    public ResourceManagerHooks g;
    public static final PorterDuff.Mode h = PorterDuff.Mode.SRC_IN;
    public static final ColorFilterLruCache j = new LruCache(6);

    /* loaded from: classes.dex */
    public static class AsldcInflateDelegate implements InflateDelegate {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public final Drawable a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return AnimatedStateListDrawableCompat.g(context, context.getResources(), xmlResourceParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class AvdcInflateDelegate implements InflateDelegate {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public final Drawable a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                Resources resources = context.getResources();
                AnimatedVectorDrawableCompat animatedVectorDrawableCompat = new AnimatedVectorDrawableCompat(context, 0);
                animatedVectorDrawableCompat.inflate(resources, xmlResourceParser, attributeSet, theme);
                return animatedVectorDrawableCompat;
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
    }

    /* loaded from: classes.dex */
    public static class DrawableDelegate implements InflateDelegate {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public final Drawable a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) DrawableDelegate.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(null).newInstance(null);
                    Compatibility.Api21Impl.c(drawable, context.getResources(), xmlResourceParser, attributeSet, theme);
                    return drawable;
                } catch (Exception e) {
                    Log.e("DrawableDelegate", "Exception while inflating <drawable>", e);
                }
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    public interface InflateDelegate {
        Drawable a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public interface ResourceManagerHooks {
    }

    /* loaded from: classes.dex */
    public static class VdcInflateDelegate implements InflateDelegate {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public final Drawable a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                Resources resources = context.getResources();
                VectorDrawableCompat vectorDrawableCompat = new VectorDrawableCompat();
                vectorDrawableCompat.inflate(resources, xmlResourceParser, attributeSet, theme);
                return vectorDrawableCompat;
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    public static synchronized ResourceManagerInternal c() {
        ResourceManagerInternal resourceManagerInternal;
        synchronized (ResourceManagerInternal.class) {
            try {
                if (i == null) {
                    ResourceManagerInternal resourceManagerInternal2 = new ResourceManagerInternal();
                    i = resourceManagerInternal2;
                    i(resourceManagerInternal2);
                }
                resourceManagerInternal = i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return resourceManagerInternal;
    }

    public static synchronized PorterDuffColorFilter g(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (ResourceManagerInternal.class) {
            ColorFilterLruCache colorFilterLruCache = j;
            colorFilterLruCache.getClass();
            int i3 = (31 + i2) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) colorFilterLruCache.c(Integer.valueOf(mode.hashCode() + i3));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i2, mode);
            }
        }
        return porterDuffColorFilter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.ResourceManagerInternal$InflateDelegate, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.appcompat.widget.ResourceManagerInternal$InflateDelegate, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.appcompat.widget.ResourceManagerInternal$InflateDelegate, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.appcompat.widget.ResourceManagerInternal$InflateDelegate, java.lang.Object] */
    public static void i(ResourceManagerInternal resourceManagerInternal) {
        if (Build.VERSION.SDK_INT < 24) {
            resourceManagerInternal.a("vector", new Object());
            resourceManagerInternal.a("animated-vector", new Object());
            resourceManagerInternal.a("animated-selector", new Object());
            resourceManagerInternal.a("drawable", new Object());
        }
    }

    public final void a(String str, InflateDelegate inflateDelegate) {
        if (this.b == null) {
            this.b = new SimpleArrayMap(0);
        }
        this.b.put(str, inflateDelegate);
    }

    public final synchronized void b(Context context, long j2, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                LongSparseArray longSparseArray = (LongSparseArray) this.d.get(context);
                if (longSparseArray == null) {
                    longSparseArray = new LongSparseArray();
                    this.d.put(context, longSparseArray);
                }
                longSparseArray.g(j2, new WeakReference(constantState));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized Drawable d(Context context, long j2) {
        LongSparseArray longSparseArray = (LongSparseArray) this.d.get(context);
        if (longSparseArray == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) longSparseArray.d(j2);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int b = ContainerHelpersKt.b(longSparseArray.f, longSparseArray.h, j2);
            if (b >= 0) {
                Object[] objArr = longSparseArray.g;
                Object obj = objArr[b];
                Object obj2 = LongSparseArrayKt.f446a;
                if (obj != obj2) {
                    objArr[b] = obj2;
                    longSparseArray.f445c = true;
                }
            }
        }
        return null;
    }

    public final synchronized Drawable e(Context context, int i2) {
        return f(context, i2, false);
    }

    public final synchronized Drawable f(Context context, int i2, boolean z) {
        Drawable j2;
        try {
            if (!this.f) {
                this.f = true;
                Drawable e = e(context, R.drawable.abc_vector_test);
                if (e == null || (!(e instanceof VectorDrawableCompat) && !"android.graphics.drawable.VectorDrawable".equals(e.getClass().getName()))) {
                    this.f = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            j2 = j(context, i2);
            if (j2 == null) {
                if (this.e == null) {
                    this.e = new TypedValue();
                }
                TypedValue typedValue = this.e;
                context.getResources().getValue(i2, typedValue, true);
                long j3 = (typedValue.assetCookie << 32) | typedValue.data;
                Drawable d = d(context, j3);
                if (d == null) {
                    ResourceManagerHooks resourceManagerHooks = this.g;
                    if (resourceManagerHooks == null) {
                        d = null;
                    } else {
                        d = ((AppCompatDrawableManager.AnonymousClass1) resourceManagerHooks).c(this, context, i2);
                    }
                    if (d != null) {
                        d.setChangingConfigurations(typedValue.changingConfigurations);
                        b(context, j3, d);
                    }
                }
                j2 = d;
            }
            if (j2 == null) {
                j2 = context.getDrawable(i2);
            }
            if (j2 != null) {
                j2 = m(context, i2, z, j2);
            }
            if (j2 != null) {
                DrawableUtils.a(j2);
            }
        } finally {
        }
        return j2;
    }

    public final synchronized ColorStateList h(Context context, int i2) {
        ColorStateList colorStateList;
        SparseArrayCompat sparseArrayCompat;
        WeakHashMap weakHashMap = this.f314a;
        ColorStateList colorStateList2 = null;
        if (weakHashMap != null && (sparseArrayCompat = (SparseArrayCompat) weakHashMap.get(context)) != null) {
            colorStateList = (ColorStateList) sparseArrayCompat.c(i2);
        } else {
            colorStateList = null;
        }
        if (colorStateList == null) {
            ResourceManagerHooks resourceManagerHooks = this.g;
            if (resourceManagerHooks != null) {
                colorStateList2 = ((AppCompatDrawableManager.AnonymousClass1) resourceManagerHooks).e(context, i2);
            }
            if (colorStateList2 != null) {
                if (this.f314a == null) {
                    this.f314a = new WeakHashMap();
                }
                SparseArrayCompat sparseArrayCompat2 = (SparseArrayCompat) this.f314a.get(context);
                if (sparseArrayCompat2 == null) {
                    sparseArrayCompat2 = new SparseArrayCompat();
                    this.f314a.put(context, sparseArrayCompat2);
                }
                sparseArrayCompat2.a(i2, colorStateList2);
            }
            colorStateList = colorStateList2;
        }
        return colorStateList;
    }

    public final Drawable j(Context context, int i2) {
        int next;
        SimpleArrayMap simpleArrayMap = this.b;
        if (simpleArrayMap != null && !simpleArrayMap.isEmpty()) {
            SparseArrayCompat sparseArrayCompat = this.f315c;
            if (sparseArrayCompat != null) {
                String str = (String) sparseArrayCompat.c(i2);
                if (!"appcompat_skip_skip".equals(str)) {
                    if (str != null && this.b.get(str) == null) {
                        return null;
                    }
                } else {
                    return null;
                }
            } else {
                this.f315c = new SparseArrayCompat();
            }
            if (this.e == null) {
                this.e = new TypedValue();
            }
            TypedValue typedValue = this.e;
            Resources resources = context.getResources();
            resources.getValue(i2, typedValue, true);
            long j2 = (typedValue.assetCookie << 32) | typedValue.data;
            Drawable d = d(context, j2);
            if (d != null) {
                return d;
            }
            CharSequence charSequence = typedValue.string;
            if (charSequence != null && charSequence.toString().endsWith(".xml")) {
                try {
                    XmlResourceParser xml = resources.getXml(i2);
                    AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                    do {
                        next = xml.next();
                        if (next == 2) {
                            break;
                        }
                    } while (next != 1);
                    if (next == 2) {
                        String name = xml.getName();
                        this.f315c.a(i2, name);
                        InflateDelegate inflateDelegate = (InflateDelegate) this.b.get(name);
                        if (inflateDelegate != null) {
                            d = inflateDelegate.a(context, xml, asAttributeSet, context.getTheme());
                        }
                        if (d != null) {
                            d.setChangingConfigurations(typedValue.changingConfigurations);
                            b(context, j2, d);
                        }
                    } else {
                        throw new XmlPullParserException("No start tag found");
                    }
                } catch (Exception e) {
                    Log.e("ResourceManagerInternal", "Exception while inflating drawable", e);
                }
            }
            if (d == null) {
                this.f315c.a(i2, "appcompat_skip_skip");
            }
            return d;
        }
        return null;
    }

    public final synchronized void k(Context context) {
        LongSparseArray longSparseArray = (LongSparseArray) this.d.get(context);
        if (longSparseArray != null) {
            longSparseArray.b();
        }
    }

    public final synchronized void l(ResourceManagerHooks resourceManagerHooks) {
        this.g = resourceManagerHooks;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable m(android.content.Context r8, int r9, boolean r10, android.graphics.drawable.Drawable r11) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ResourceManagerInternal.m(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }
}
