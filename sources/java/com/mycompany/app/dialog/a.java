package com.mycompany.app.dialog;

import android.animation.ValueAnimator;
import android.content.ContentProviderClient;
import android.content.ContentValues;
import android.content.Context;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.provider.b;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.view.MyButtonCheck;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;

/* loaded from: classes3.dex */
public abstract /* synthetic */ class a {
    public static int a(float f, float f2, float f3, float f4) {
        return Math.round((f3 / (f + f2)) * f4);
    }

    public static int b(CharSequence charSequence, String str, Function1 function1, String str2) {
        Intrinsics.checkNotNullParameter(charSequence, str);
        Intrinsics.checkNotNullParameter(function1, str2);
        return charSequence.length();
    }

    public static int c(UInt uInt, int i) {
        return UInt.m125constructorimpl(uInt.getData() + i);
    }

    public static int d(IntRange intRange, int i) {
        return intRange.getEndInclusive().intValue() + i;
    }

    public static ContentValues e(String str, String str2, String str3, String str4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(str, str2);
        contentValues.put(str3, str4);
        return contentValues;
    }

    public static MyButtonCheck f(LinearLayout linearLayout, View view, LinearLayout.LayoutParams layoutParams, Context context) {
        linearLayout.addView(view, layoutParams);
        return new MyButtonCheck(context);
    }

    public static Object g(CharSequence charSequence, int i, Function1 function1) {
        return function1.invoke(Character.valueOf(charSequence.charAt(i)));
    }

    public static Object h(byte[] bArr, int i, Function1 function1) {
        return function1.invoke(UByte.m42boximpl(UByteArray.m106getw2LRezQ(bArr, i)));
    }

    public static Object i(int[] iArr, int i, Function1 function1) {
        return function1.invoke(UInt.m119boximpl(UIntArray.m185getpVg5ArA(iArr, i)));
    }

    public static Object j(long[] jArr, int i, Function1 function1) {
        return function1.invoke(ULong.m198boximpl(ULongArray.m264getsVKNKU(jArr, i)));
    }

    public static Object k(short[] sArr, int i, Function1 function1) {
        return function1.invoke(UShort.m305boximpl(UShortArray.m369getMh2AYeg(sArr, i)));
    }

    public static String l(String str, int i, char c2) {
        return str + i + c2;
    }

    public static String m(StringBuilder sb, String str, int i, String str2, int i2) {
        sb.append(str);
        sb.append(i);
        sb.append(str2);
        sb.append(i2);
        return sb.toString();
    }

    public static ArrayList n(LinkedHashMap linkedHashMap, Object obj) {
        ArrayList arrayList = new ArrayList();
        linkedHashMap.put(obj, arrayList);
        return arrayList;
    }

    public static ArrayList o(Map map, Object obj) {
        ArrayList arrayList = new ArrayList();
        map.put(obj, arrayList);
        return arrayList;
    }

    public static Iterator p(Iterable iterable, String str, Function1 function1, String str2) {
        Intrinsics.checkNotNullParameter(iterable, str);
        Intrinsics.checkNotNullParameter(function1, str2);
        return iterable.iterator();
    }

    public static Iterator q(Sequence sequence, String str, Function1 function1, String str2) {
        Intrinsics.checkNotNullParameter(sequence, str);
        Intrinsics.checkNotNullParameter(function1, str2);
        return sequence.iterator();
    }

    public static void r(ValueAnimator valueAnimator) {
        valueAnimator.setInterpolator(new AccelerateInterpolator());
    }

    public static /* synthetic */ void s(AutoCloseable autoCloseable) {
        if (autoCloseable instanceof AutoCloseable) {
            autoCloseable.close();
            return;
        }
        if (autoCloseable instanceof ExecutorService) {
            b.f((ExecutorService) autoCloseable);
            return;
        }
        if (autoCloseable instanceof TypedArray) {
            ((TypedArray) autoCloseable).recycle();
            return;
        }
        if (autoCloseable instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable).release();
            return;
        }
        if (autoCloseable instanceof MediaDrm) {
            ((MediaDrm) autoCloseable).release();
        } else if (autoCloseable instanceof DrmManagerClient) {
            ((DrmManagerClient) autoCloseable).release();
        } else {
            if (!(autoCloseable instanceof ContentProviderClient)) {
                throw new IllegalArgumentException();
            }
            ((ContentProviderClient) autoCloseable).release();
        }
    }

    public static void t(StringBuilder sb, int i, String str, AppCompatTextView appCompatTextView) {
        sb.append(i);
        sb.append(str);
        appCompatTextView.setText(sb.toString());
    }

    public static void u(ArrayList arrayList, SettingListAdapter.SettingItem settingItem, int i, boolean z) {
        arrayList.add(settingItem);
        arrayList.add(new SettingListAdapter.SettingItem(i, z));
    }

    public static void v(ValueAnimator valueAnimator) {
        valueAnimator.setInterpolator(new DecelerateInterpolator());
    }
}
