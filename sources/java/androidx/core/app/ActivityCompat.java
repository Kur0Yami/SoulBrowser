package androidx.core.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ActivityCompat extends ContextCompat {

    /* renamed from: androidx.core.app.ActivityCompat$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api22Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api31Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api32Impl {
    }

    /* loaded from: classes.dex */
    public interface OnRequestPermissionsResultCallback {
    }

    /* loaded from: classes.dex */
    public interface PermissionCompatDelegate {
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public interface RequestPermissionsRequestCodeValidator {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class SharedElementCallback21Impl extends android.app.SharedElementCallback {
        @Override // android.app.SharedElementCallback
        public final Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            throw null;
        }

        @Override // android.app.SharedElementCallback
        public final View onCreateSnapshotView(Context context, Parcelable parcelable) {
            throw null;
        }

        @Override // android.app.SharedElementCallback
        public final void onMapSharedElements(List list, Map map) {
            throw null;
        }

        @Override // android.app.SharedElementCallback
        public final void onRejectSharedElements(List list) {
            throw null;
        }

        @Override // android.app.SharedElementCallback
        public final void onSharedElementEnd(List list, List list2, List list3) {
            throw null;
        }

        @Override // android.app.SharedElementCallback
        public final void onSharedElementStart(List list, List list2, List list3) {
            throw null;
        }

        @Override // android.app.SharedElementCallback
        public final void onSharedElementsArrived(List list, List list2, SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void h(Activity activity, String[] strArr, int i) {
        String[] strArr2;
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (!TextUtils.isEmpty(strArr[i2])) {
                if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(strArr[i2], "android.permission.POST_NOTIFICATIONS")) {
                    hashSet.add(Integer.valueOf(i2));
                }
            } else {
                throw new IllegalArgumentException(android.support.v4.media.a.p(new StringBuilder("Permission request for permissions "), Arrays.toString(strArr), " must not contain null or empty values"));
            }
        }
        int size = hashSet.size();
        if (size > 0) {
            strArr2 = new String[strArr.length - size];
        } else {
            strArr2 = strArr;
        }
        if (size > 0) {
            if (size == strArr.length) {
                return;
            }
            int i3 = 0;
            for (int i4 = 0; i4 < strArr.length; i4++) {
                if (!hashSet.contains(Integer.valueOf(i4))) {
                    strArr2[i3] = strArr[i4];
                    i3++;
                }
            }
        }
        if (activity instanceof RequestPermissionsRequestCodeValidator) {
            ((RequestPermissionsRequestCodeValidator) activity).getClass();
        }
        activity.requestPermissions(strArr, i);
    }
}
