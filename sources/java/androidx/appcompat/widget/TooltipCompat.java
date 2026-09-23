package androidx.appcompat.widget;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public class TooltipCompat {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
        @DoNotInline
        public static void a(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    public static void a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            Api26Impl.a(view, charSequence);
            return;
        }
        TooltipCompatHandler tooltipCompatHandler = TooltipCompatHandler.o;
        if (tooltipCompatHandler != null && tooltipCompatHandler.f346c == view) {
            TooltipCompatHandler.b(null);
        }
        if (TextUtils.isEmpty(charSequence)) {
            TooltipCompatHandler tooltipCompatHandler2 = TooltipCompatHandler.p;
            if (tooltipCompatHandler2 != null && tooltipCompatHandler2.f346c == view) {
                tooltipCompatHandler2.a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        }
        new TooltipCompatHandler(view, charSequence);
    }
}
