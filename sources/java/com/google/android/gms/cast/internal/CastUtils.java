package com.google.android.gms.cast.internal;

import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;
import java.util.regex.Pattern;
import org.json.JSONObject;

@KeepForSdk
/* loaded from: classes.dex */
public final class CastUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f3603a = Pattern.compile("urn:x-cast:[-A-Za-z0-9_]+(\\.[-A-Za-z0-9_]+)*");
    public static final Random b = new Random(SystemClock.elapsedRealtime());

    public static String a(JSONObject jSONObject, String str) {
        if (jSONObject != null && jSONObject.has(str)) {
            return jSONObject.optString(str);
        }
        return null;
    }

    public static void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.length() <= 128) {
                if (str.startsWith("urn:x-cast:")) {
                    if (str.length() != 11) {
                        return;
                    } else {
                        throw new IllegalArgumentException("Namespace must begin with the prefix \"urn:x-cast:\" and have non-empty suffix");
                    }
                }
                throw new IllegalArgumentException("Namespace must begin with the prefix \"urn:x-cast:\"");
            }
            throw new IllegalArgumentException("Invalid namespace length");
        }
        throw new IllegalArgumentException("Namespace cannot be null or empty");
    }

    public static boolean c(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj != null && obj2 != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }

    public static int[] d(AbstractCollection abstractCollection) {
        int[] iArr = new int[abstractCollection.size()];
        Iterator it = abstractCollection.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Integer) it.next()).intValue();
            i++;
        }
        return iArr;
    }

    public static ArrayList e(int[] iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }
}
