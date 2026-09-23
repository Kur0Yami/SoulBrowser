package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;

@RequiresApi
@RestrictTo
/* loaded from: classes.dex */
class TypefaceCompatApi24Impl extends TypefaceCompatBaseImpl {
    public static final Class b;

    /* renamed from: c, reason: collision with root package name */
    public static final Constructor f689c;
    public static final Method d;
    public static final Method e;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi24Impl", e2.getClass().getName(), e2);
            cls = null;
            method = null;
            method2 = null;
        }
        f689c = constructor;
        b = cls;
        d = method2;
        e = method;
    }

    public static boolean h(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface i(Object obj) {
        try {
            Object newInstance = Array.newInstance((Class<?>) b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public final Typeface a(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        Object obj;
        MappedByteBuffer mappedByteBuffer;
        FileInputStream fileInputStream;
        try {
            obj = f689c.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.f662a) {
                int i2 = fontFileResourceEntry.f;
                File d2 = TypefaceCompatUtil.d(context);
                if (d2 != null) {
                    try {
                        if (TypefaceCompatUtil.b(d2, resources, i2)) {
                            try {
                                fileInputStream = new FileInputStream(d2);
                            } catch (IOException unused2) {
                                mappedByteBuffer = null;
                            }
                            try {
                                FileChannel channel = fileInputStream.getChannel();
                                mappedByteBuffer = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                fileInputStream.close();
                                if (mappedByteBuffer != null && h(obj, mappedByteBuffer, fontFileResourceEntry.e, fontFileResourceEntry.b, fontFileResourceEntry.f664c)) {
                                }
                            } finally {
                                break;
                            }
                        }
                    } finally {
                        d2.delete();
                    }
                }
                mappedByteBuffer = null;
                if (mappedByteBuffer != null) {
                }
            }
            return i(obj);
        }
        return null;
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public final Typeface b(Context context, FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        Object obj;
        try {
            obj = f689c.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            int i2 = 0;
            SimpleArrayMap simpleArrayMap = new SimpleArrayMap(0);
            int length = fontInfoArr.length;
            while (true) {
                if (i2 < length) {
                    FontsContractCompat.FontInfo fontInfo = fontInfoArr[i2];
                    Uri uri = fontInfo.f733a;
                    ByteBuffer byteBuffer = (ByteBuffer) simpleArrayMap.get(uri);
                    if (byteBuffer == null) {
                        byteBuffer = TypefaceCompatUtil.e(context, uri);
                        simpleArrayMap.put(uri, byteBuffer);
                    }
                    if (byteBuffer == null || !h(obj, byteBuffer, fontInfo.b, fontInfo.f734c, fontInfo.d)) {
                        break;
                    }
                    i2++;
                } else {
                    Typeface i3 = i(obj);
                    if (i3 != null) {
                        return Typeface.create(i3, i);
                    }
                }
            }
        }
        return null;
    }
}
