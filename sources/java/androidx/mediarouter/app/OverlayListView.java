package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.media.a;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import android.widget.ListView;
import androidx.mediarouter.app.MediaRouteControllerDialog;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class OverlayListView extends ListView {

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1337c;

    /* loaded from: classes.dex */
    public static class OverlayObject {

        /* renamed from: a, reason: collision with root package name */
        public final BitmapDrawable f1338a;

        /* renamed from: c, reason: collision with root package name */
        public final Rect f1339c;
        public Interpolator d;
        public long e;
        public final Rect f;
        public int g;
        public long i;
        public boolean j;
        public boolean k;
        public OnAnimationEndListener l;
        public float b = 1.0f;
        public float h = 1.0f;

        /* loaded from: classes.dex */
        public interface OnAnimationEndListener {
        }

        public OverlayObject(BitmapDrawable bitmapDrawable, Rect rect) {
            this.f1338a = bitmapDrawable;
            this.f = rect;
            Rect rect2 = new Rect(rect);
            this.f1339c = rect2;
            if (bitmapDrawable != null) {
                bitmapDrawable.setAlpha((int) (this.b * 255.0f));
                bitmapDrawable.setBounds(rect2);
            }
        }
    }

    public OverlayListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1337c = new ArrayList();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float interpolation;
        boolean z;
        super.onDraw(canvas);
        ArrayList arrayList = this.f1337c;
        if (arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                OverlayObject overlayObject = (OverlayObject) it.next();
                BitmapDrawable bitmapDrawable = overlayObject.f1338a;
                if (bitmapDrawable != null) {
                    bitmapDrawable.draw(canvas);
                }
                long drawingTime = getDrawingTime();
                BitmapDrawable bitmapDrawable2 = overlayObject.f1338a;
                Rect rect = overlayObject.f1339c;
                if (overlayObject.k) {
                    z = false;
                } else {
                    float f = 0.0f;
                    float max = Math.max(0.0f, Math.min(1.0f, ((float) (drawingTime - overlayObject.i)) / ((float) overlayObject.e)));
                    if (overlayObject.j) {
                        f = max;
                    }
                    Interpolator interpolator = overlayObject.d;
                    if (interpolator == null) {
                        interpolation = f;
                    } else {
                        interpolation = interpolator.getInterpolation(f);
                    }
                    int i = (int) (overlayObject.g * interpolation);
                    Rect rect2 = overlayObject.f;
                    rect.top = rect2.top + i;
                    rect.bottom = rect2.bottom + i;
                    float a2 = a.a(overlayObject.h, 1.0f, interpolation, 1.0f);
                    overlayObject.b = a2;
                    if (bitmapDrawable2 != null) {
                        bitmapDrawable2.setAlpha((int) (a2 * 255.0f));
                        bitmapDrawable2.setBounds(rect);
                    }
                    if (overlayObject.j && f >= 1.0f) {
                        overlayObject.k = true;
                        OverlayObject.OnAnimationEndListener onAnimationEndListener = overlayObject.l;
                        if (onAnimationEndListener != null) {
                            ((MediaRouteControllerDialog.AnonymousClass10) onAnimationEndListener).a();
                        }
                    }
                    z = !overlayObject.k;
                }
                if (!z) {
                    it.remove();
                }
            }
        }
    }
}
