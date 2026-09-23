package androidx.transition;

import android.graphics.Canvas;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
class CanvasUtils {

    /* renamed from: a, reason: collision with root package name */
    public static Method f1667a;
    public static Method b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f1668c;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        @DoNotInline
        public static void a(Canvas canvas) {
            canvas.disableZ();
        }

        @DoNotInline
        public static void b(Canvas canvas) {
            canvas.enableZ();
        }
    }
}
