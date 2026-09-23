package androidx.core.view;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f844a;
    public final /* synthetic */ Object b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f845c;

    public /* synthetic */ f(int i, Object obj, Object obj2) {
        this.f844a = i;
        this.b = obj;
        this.f845c = obj2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i = this.f844a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ((ViewPropertyAnimatorUpdateListener) obj).a();
                return;
            default:
                AppBarLayout appBarLayout = (AppBarLayout) obj;
                MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) this.f845c;
                int i2 = AppBarLayout.F;
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                materialShapeDrawable.n(floatValue);
                Drawable drawable = appBarLayout.B;
                if (drawable instanceof MaterialShapeDrawable) {
                    ((MaterialShapeDrawable) drawable).n(floatValue);
                }
                ArrayList arrayList = appBarLayout.v;
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj2 = arrayList.get(i3);
                    i3++;
                    ((AppBarLayout.LiftOnScrollListener) obj2).c();
                }
                Iterator it = appBarLayout.w.iterator();
                if (!it.hasNext()) {
                    return;
                }
                ((AppBarLayout.LiftOnScrollProgressListener) it.next()).a();
                throw null;
        }
    }
}
