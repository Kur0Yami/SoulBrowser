package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowId;
import android.widget.ListView;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.collection.LongSparseArrayKt;
import androidx.collection.SimpleArrayMap;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.core.view.ViewCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.transition.Transition;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public abstract class Transition implements Cloneable {
    public static final Animator[] C = new Animator[0];
    public static final int[] D = {2, 1, 3, 4};
    public static final PathMotion E = new Object();
    public static final ThreadLocal F = new ThreadLocal();
    public EpicenterCallback A;
    public ArrayList p;
    public ArrayList q;
    public TransitionListener[] r;

    /* renamed from: c, reason: collision with root package name */
    public final String f1696c = getClass().getName();
    public long f = -1;
    public long g = -1;
    public TimeInterpolator h = null;
    public final ArrayList i = new ArrayList();
    public final ArrayList j = new ArrayList();
    public ArrayList k = null;
    public TransitionValuesMaps l = new TransitionValuesMaps();
    public TransitionValuesMaps m = new TransitionValuesMaps();
    public TransitionSet n = null;
    public final int[] o = D;
    public final ArrayList s = new ArrayList();
    public Animator[] t = C;
    public int u = 0;
    public boolean v = false;
    public boolean w = false;
    public Transition x = null;
    public ArrayList y = null;
    public ArrayList z = new ArrayList();
    public PathMotion B = E;

    /* renamed from: androidx.transition.Transition$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends PathMotion {
        @Override // androidx.transition.PathMotion
        public final Path a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    }

    /* loaded from: classes.dex */
    public static class AnimationInfo {

        /* renamed from: a, reason: collision with root package name */
        public View f1699a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public TransitionValues f1700c;
        public WindowId d;
        public Transition e;
        public Animator f;
    }

    /* loaded from: classes.dex */
    public static class ArrayListManager {
    }

    /* loaded from: classes.dex */
    public static abstract class EpicenterCallback {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Impl26 {
        @DoNotInline
        public static long a(Animator animator) {
            return animator.getTotalDuration();
        }

        @DoNotInline
        public static void b(Animator animator, long j) {
            ((AnimatorSet) animator).setCurrentPlayTime(j);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface MatchOrder {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public class SeekController extends TransitionListenerAdapter implements TransitionSeekController, DynamicAnimation.OnAnimationUpdateListener {
        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
        public final void a() {
            throw null;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
        }
    }

    /* loaded from: classes.dex */
    public interface TransitionListener {
        void b();

        void c(Transition transition);

        void d(Transition transition);

        void e(Transition transition);

        void f(Transition transition);

        void g(Transition transition);

        void h();
    }

    /* loaded from: classes.dex */
    public interface TransitionNotification {

        /* renamed from: a, reason: collision with root package name */
        public static final b f1701a;
        public static final b b;

        /* renamed from: c, reason: collision with root package name */
        public static final b f1702c;
        public static final b d;
        public static final b e;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.transition.b] */
        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.transition.b] */
        /* JADX WARN: Type inference failed for: r0v2, types: [androidx.transition.b] */
        /* JADX WARN: Type inference failed for: r0v3, types: [androidx.transition.b] */
        /* JADX WARN: Type inference failed for: r0v4, types: [androidx.transition.b] */
        static {
            final int i = 0;
            f1701a = new TransitionNotification() { // from class: androidx.transition.b
                @Override // androidx.transition.Transition.TransitionNotification
                public final void a(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                    switch (i) {
                        case 0:
                            transitionListener.d(transition);
                            return;
                        case 1:
                            transitionListener.f(transition);
                            return;
                        case 2:
                            transitionListener.g(transition);
                            return;
                        case 3:
                            transitionListener.b();
                            return;
                        default:
                            transitionListener.h();
                            return;
                    }
                }
            };
            final int i2 = 1;
            b = new TransitionNotification() { // from class: androidx.transition.b
                @Override // androidx.transition.Transition.TransitionNotification
                public final void a(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                    switch (i2) {
                        case 0:
                            transitionListener.d(transition);
                            return;
                        case 1:
                            transitionListener.f(transition);
                            return;
                        case 2:
                            transitionListener.g(transition);
                            return;
                        case 3:
                            transitionListener.b();
                            return;
                        default:
                            transitionListener.h();
                            return;
                    }
                }
            };
            final int i3 = 2;
            f1702c = new TransitionNotification() { // from class: androidx.transition.b
                @Override // androidx.transition.Transition.TransitionNotification
                public final void a(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                    switch (i3) {
                        case 0:
                            transitionListener.d(transition);
                            return;
                        case 1:
                            transitionListener.f(transition);
                            return;
                        case 2:
                            transitionListener.g(transition);
                            return;
                        case 3:
                            transitionListener.b();
                            return;
                        default:
                            transitionListener.h();
                            return;
                    }
                }
            };
            final int i4 = 3;
            d = new TransitionNotification() { // from class: androidx.transition.b
                @Override // androidx.transition.Transition.TransitionNotification
                public final void a(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                    switch (i4) {
                        case 0:
                            transitionListener.d(transition);
                            return;
                        case 1:
                            transitionListener.f(transition);
                            return;
                        case 2:
                            transitionListener.g(transition);
                            return;
                        case 3:
                            transitionListener.b();
                            return;
                        default:
                            transitionListener.h();
                            return;
                    }
                }
            };
            final int i5 = 4;
            e = new TransitionNotification() { // from class: androidx.transition.b
                @Override // androidx.transition.Transition.TransitionNotification
                public final void a(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
                    switch (i5) {
                        case 0:
                            transitionListener.d(transition);
                            return;
                        case 1:
                            transitionListener.f(transition);
                            return;
                        case 2:
                            transitionListener.g(transition);
                            return;
                        case 3:
                            transitionListener.b();
                            return;
                        default:
                            transitionListener.h();
                            return;
                    }
                }
            };
        }

        void a(TransitionListener transitionListener, Transition transition, boolean z);
    }

    public static void c(TransitionValuesMaps transitionValuesMaps, View view, TransitionValues transitionValues) {
        ArrayMap arrayMap = transitionValuesMaps.f1714a;
        ArrayMap arrayMap2 = transitionValuesMaps.d;
        SparseArray sparseArray = transitionValuesMaps.b;
        LongSparseArray longSparseArray = transitionValuesMaps.f1715c;
        arrayMap.put(view, transitionValues);
        int id = view.getId();
        if (id >= 0) {
            if (sparseArray.indexOfKey(id) >= 0) {
                sparseArray.put(id, null);
            } else {
                sparseArray.put(id, view);
            }
        }
        String o = ViewCompat.o(view);
        if (o != null) {
            if (arrayMap2.containsKey(o)) {
                arrayMap2.put(o, null);
            } else {
                arrayMap2.put(o, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (longSparseArray.f445c) {
                    int i = longSparseArray.h;
                    long[] jArr = longSparseArray.f;
                    Object[] objArr = longSparseArray.g;
                    int i2 = 0;
                    for (int i3 = 0; i3 < i; i3++) {
                        Object obj = objArr[i3];
                        if (obj != LongSparseArrayKt.f446a) {
                            if (i3 != i2) {
                                jArr[i2] = jArr[i3];
                                objArr[i2] = obj;
                                objArr[i3] = null;
                            }
                            i2++;
                        }
                    }
                    longSparseArray.f445c = false;
                    longSparseArray.h = i2;
                }
                if (ContainerHelpersKt.b(longSparseArray.f, longSparseArray.h, itemIdAtPosition) >= 0) {
                    View view2 = (View) longSparseArray.d(itemIdAtPosition);
                    if (view2 != null) {
                        view2.setHasTransientState(false);
                        longSparseArray.g(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                view.setHasTransientState(true);
                longSparseArray.g(itemIdAtPosition, view);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    public static ArrayMap r() {
        ThreadLocal threadLocal = F;
        ArrayMap arrayMap = (ArrayMap) threadLocal.get();
        if (arrayMap == null) {
            ?? simpleArrayMap = new SimpleArrayMap(0);
            threadLocal.set(simpleArrayMap);
            return simpleArrayMap;
        }
        return arrayMap;
    }

    public static boolean x(TransitionValues transitionValues, TransitionValues transitionValues2, String str) {
        Object obj = transitionValues.f1712a.get(str);
        Object obj2 = transitionValues2.f1712a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    public Transition A(TransitionListener transitionListener) {
        Transition transition;
        ArrayList arrayList = this.y;
        if (arrayList != null) {
            if (!arrayList.remove(transitionListener) && (transition = this.x) != null) {
                transition.A(transitionListener);
            }
            if (this.y.size() == 0) {
                this.y = null;
            }
        }
        return this;
    }

    public void C(View view) {
        this.j.remove(view);
    }

    public void D(View view) {
        if (this.v) {
            if (!this.w) {
                ArrayList arrayList = this.s;
                int size = arrayList.size();
                Animator[] animatorArr = (Animator[]) arrayList.toArray(this.t);
                this.t = C;
                for (int i = size - 1; i >= 0; i--) {
                    Animator animator = animatorArr[i];
                    animatorArr[i] = null;
                    animator.resume();
                }
                this.t = animatorArr;
                y(this, TransitionNotification.e, false);
            }
            this.v = false;
        }
    }

    public void E() {
        M();
        final ArrayMap r = r();
        ArrayList arrayList = this.z;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Animator animator = (Animator) obj;
            if (r.containsKey(animator)) {
                M();
                if (animator != null) {
                    animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator2) {
                            r.remove(animator2);
                            Transition.this.s.remove(animator2);
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator2) {
                            Transition.this.s.add(animator2);
                        }
                    });
                    long j = this.g;
                    if (j >= 0) {
                        animator.setDuration(j);
                    }
                    long j2 = this.f;
                    if (j2 >= 0) {
                        animator.setStartDelay(animator.getStartDelay() + j2);
                    }
                    TimeInterpolator timeInterpolator = this.h;
                    if (timeInterpolator != null) {
                        animator.setInterpolator(timeInterpolator);
                    }
                    animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.3
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator2) {
                            Transition.this.n();
                            animator2.removeListener(this);
                        }
                    });
                    animator.start();
                }
            }
        }
        this.z.clear();
        n();
    }

    public void F(long j) {
        this.g = j;
    }

    public void H(EpicenterCallback epicenterCallback) {
        this.A = epicenterCallback;
    }

    public void I(TimeInterpolator timeInterpolator) {
        this.h = timeInterpolator;
    }

    public void J(PathMotion pathMotion) {
        if (pathMotion == null) {
            this.B = E;
        } else {
            this.B = pathMotion;
        }
    }

    public void L(long j) {
        this.f = j;
    }

    public final void M() {
        if (this.u == 0) {
            y(this, TransitionNotification.f1701a, false);
            this.w = false;
        }
        this.u++;
    }

    public String N(String str) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(getClass().getSimpleName());
        sb.append("@");
        sb.append(Integer.toHexString(hashCode()));
        sb.append(": ");
        if (this.g != -1) {
            sb.append("dur(");
            sb.append(this.g);
            sb.append(") ");
        }
        if (this.f != -1) {
            sb.append("dly(");
            sb.append(this.f);
            sb.append(") ");
        }
        if (this.h != null) {
            sb.append("interp(");
            sb.append(this.h);
            sb.append(") ");
        }
        ArrayList arrayList = this.i;
        int size = arrayList.size();
        ArrayList arrayList2 = this.j;
        if (size > 0 || arrayList2.size() > 0) {
            sb.append("tgts(");
            if (arrayList.size() > 0) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList.get(i));
                }
            }
            if (arrayList2.size() > 0) {
                for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                    if (i2 > 0) {
                        sb.append(", ");
                    }
                    sb.append(arrayList2.get(i2));
                }
            }
            sb.append(")");
        }
        return sb.toString();
    }

    public void a(TransitionListener transitionListener) {
        if (this.y == null) {
            this.y = new ArrayList();
        }
        this.y.add(transitionListener);
    }

    public void b(View view) {
        this.j.add(view);
    }

    public void d() {
        ArrayList arrayList = this.s;
        int size = arrayList.size();
        Animator[] animatorArr = (Animator[]) arrayList.toArray(this.t);
        this.t = C;
        for (int i = size - 1; i >= 0; i--) {
            Animator animator = animatorArr[i];
            animatorArr[i] = null;
            animator.cancel();
        }
        this.t = animatorArr;
        y(this, TransitionNotification.f1702c, false);
    }

    public abstract void e(TransitionValues transitionValues);

    public final void f(View view, boolean z) {
        if (view != null) {
            view.getId();
            ArrayList arrayList = this.k;
            if (arrayList == null || !arrayList.contains(view)) {
                if (view.getParent() instanceof ViewGroup) {
                    TransitionValues transitionValues = new TransitionValues(view);
                    if (z) {
                        h(transitionValues);
                    } else {
                        e(transitionValues);
                    }
                    transitionValues.f1713c.add(this);
                    g(transitionValues);
                    if (z) {
                        c(this.l, view, transitionValues);
                    } else {
                        c(this.m, view, transitionValues);
                    }
                }
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int i = 0; i < viewGroup.getChildCount(); i++) {
                        f(viewGroup.getChildAt(i), z);
                    }
                }
            }
        }
    }

    public void g(TransitionValues transitionValues) {
    }

    public abstract void h(TransitionValues transitionValues);

    public final void i(ViewGroup viewGroup, boolean z) {
        j(z);
        ArrayList arrayList = this.i;
        int size = arrayList.size();
        ArrayList arrayList2 = this.j;
        if (size <= 0 && arrayList2.size() <= 0) {
            f(viewGroup, z);
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            View findViewById = viewGroup.findViewById(((Integer) arrayList.get(i)).intValue());
            if (findViewById != null) {
                TransitionValues transitionValues = new TransitionValues(findViewById);
                if (z) {
                    h(transitionValues);
                } else {
                    e(transitionValues);
                }
                transitionValues.f1713c.add(this);
                g(transitionValues);
                if (z) {
                    c(this.l, findViewById, transitionValues);
                } else {
                    c(this.m, findViewById, transitionValues);
                }
            }
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            View view = (View) arrayList2.get(i2);
            TransitionValues transitionValues2 = new TransitionValues(view);
            if (z) {
                h(transitionValues2);
            } else {
                e(transitionValues2);
            }
            transitionValues2.f1713c.add(this);
            g(transitionValues2);
            if (z) {
                c(this.l, view, transitionValues2);
            } else {
                c(this.m, view, transitionValues2);
            }
        }
    }

    public final void j(boolean z) {
        if (z) {
            this.l.f1714a.clear();
            this.l.b.clear();
            this.l.f1715c.b();
        } else {
            this.m.f1714a.clear();
            this.m.b.clear();
            this.m.f1715c.b();
        }
    }

    @Override // 
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.z = new ArrayList();
            transition.l = new TransitionValuesMaps();
            transition.m = new TransitionValuesMaps();
            transition.p = null;
            transition.q = null;
            transition.x = this;
            transition.y = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public Animator l(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [androidx.transition.Transition$AnimationInfo, java.lang.Object] */
    public void m(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        int i2;
        View view;
        TransitionValues transitionValues;
        Animator animator;
        TransitionValues transitionValues2;
        ArrayMap r = r();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        q().getClass();
        int i3 = 0;
        while (i3 < size) {
            TransitionValues transitionValues3 = (TransitionValues) arrayList.get(i3);
            TransitionValues transitionValues4 = (TransitionValues) arrayList2.get(i3);
            if (transitionValues3 != null && !transitionValues3.f1713c.contains(this)) {
                transitionValues3 = null;
            }
            if (transitionValues4 != null && !transitionValues4.f1713c.contains(this)) {
                transitionValues4 = null;
            }
            if ((transitionValues3 != null || transitionValues4 != null) && (transitionValues3 == null || transitionValues4 == null || v(transitionValues3, transitionValues4))) {
                Animator l = l(viewGroup, transitionValues3, transitionValues4);
                if (l != null) {
                    String str = this.f1696c;
                    if (transitionValues4 != null) {
                        view = transitionValues4.b;
                        String[] s = s();
                        if (s != null && s.length > 0) {
                            transitionValues2 = new TransitionValues(view);
                            TransitionValues transitionValues5 = (TransitionValues) transitionValuesMaps2.f1714a.get(view);
                            i = size;
                            if (transitionValues5 != null) {
                                int i4 = 0;
                                while (i4 < s.length) {
                                    String str2 = s[i4];
                                    transitionValues2.f1712a.put(str2, transitionValues5.f1712a.get(str2));
                                    i4++;
                                    i3 = i3;
                                    transitionValues5 = transitionValues5;
                                }
                            }
                            i2 = i3;
                            int i5 = r.g;
                            int i6 = 0;
                            while (true) {
                                if (i6 < i5) {
                                    AnimationInfo animationInfo = (AnimationInfo) r.get((Animator) r.f(i6));
                                    if (animationInfo.f1700c != null && animationInfo.f1699a == view && animationInfo.b.equals(str) && animationInfo.f1700c.equals(transitionValues2)) {
                                        animator = null;
                                        break;
                                    }
                                    i6++;
                                } else {
                                    animator = l;
                                    break;
                                }
                            }
                        } else {
                            i = size;
                            i2 = i3;
                            animator = l;
                            transitionValues2 = null;
                        }
                        l = animator;
                        transitionValues = transitionValues2;
                    } else {
                        i = size;
                        i2 = i3;
                        view = transitionValues3.b;
                        transitionValues = null;
                    }
                    if (l != null) {
                        WindowId windowId = viewGroup.getWindowId();
                        ?? obj = new Object();
                        obj.f1699a = view;
                        obj.b = str;
                        obj.f1700c = transitionValues;
                        obj.d = windowId;
                        obj.e = this;
                        obj.f = l;
                        r.put(l, obj);
                        this.z.add(l);
                    }
                    i3 = i2 + 1;
                    size = i;
                }
            }
            i = size;
            i2 = i3;
            i3 = i2 + 1;
            size = i;
        }
        if (sparseIntArray.size() != 0) {
            for (int i7 = 0; i7 < sparseIntArray.size(); i7++) {
                AnimationInfo animationInfo2 = (AnimationInfo) r.get((Animator) this.z.get(sparseIntArray.keyAt(i7)));
                animationInfo2.f.setStartDelay(animationInfo2.f.getStartDelay() + (sparseIntArray.valueAt(i7) - LongCompanionObject.MAX_VALUE));
            }
        }
    }

    public final void n() {
        int i = this.u - 1;
        this.u = i;
        if (i == 0) {
            y(this, TransitionNotification.b, false);
            for (int i2 = 0; i2 < this.l.f1715c.h(); i2++) {
                View view = (View) this.l.f1715c.i(i2);
                if (view != null) {
                    view.setHasTransientState(false);
                }
            }
            for (int i3 = 0; i3 < this.m.f1715c.h(); i3++) {
                View view2 = (View) this.m.f1715c.i(i3);
                if (view2 != null) {
                    view2.setHasTransientState(false);
                }
            }
            this.w = true;
        }
    }

    public Transition o(View view) {
        ArrayList arrayList = this.k;
        if (view != null) {
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (!arrayList.contains(view)) {
                arrayList.add(view);
            }
        }
        this.k = arrayList;
        return this;
    }

    public final TransitionValues p(View view, boolean z) {
        ArrayList arrayList;
        ArrayList arrayList2;
        TransitionSet transitionSet = this.n;
        if (transitionSet != null) {
            return transitionSet.p(view, z);
        }
        if (z) {
            arrayList = this.p;
        } else {
            arrayList = this.q;
        }
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    TransitionValues transitionValues = (TransitionValues) arrayList.get(i);
                    if (transitionValues != null) {
                        if (transitionValues.b == view) {
                            break;
                        }
                        i++;
                    } else {
                        return null;
                    }
                } else {
                    i = -1;
                    break;
                }
            }
            if (i >= 0) {
                if (z) {
                    arrayList2 = this.q;
                } else {
                    arrayList2 = this.p;
                }
                return (TransitionValues) arrayList2.get(i);
            }
            return null;
        }
        return null;
    }

    public final Transition q() {
        TransitionSet transitionSet = this.n;
        if (transitionSet != null) {
            return transitionSet.q();
        }
        return this;
    }

    public String[] s() {
        return null;
    }

    public final TransitionValues t(View view, boolean z) {
        TransitionValuesMaps transitionValuesMaps;
        TransitionSet transitionSet = this.n;
        if (transitionSet != null) {
            return transitionSet.t(view, z);
        }
        if (z) {
            transitionValuesMaps = this.l;
        } else {
            transitionValuesMaps = this.m;
        }
        return (TransitionValues) transitionValuesMaps.f1714a.get(view);
    }

    public final String toString() {
        return N(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    public boolean u() {
        return !this.s.isEmpty();
    }

    public boolean v(TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues != null && transitionValues2 != null) {
            String[] s = s();
            if (s != null) {
                for (String str : s) {
                    if (x(transitionValues, transitionValues2, str)) {
                        return true;
                    }
                }
            } else {
                Iterator it = transitionValues.f1712a.keySet().iterator();
                while (it.hasNext()) {
                    if (x(transitionValues, transitionValues2, (String) it.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean w(View view) {
        int id = view.getId();
        ArrayList arrayList = this.k;
        if (arrayList != null && arrayList.contains(view)) {
            return false;
        }
        ArrayList arrayList2 = this.i;
        int size = arrayList2.size();
        ArrayList arrayList3 = this.j;
        if ((size != 0 || arrayList3.size() != 0) && !arrayList2.contains(Integer.valueOf(id)) && !arrayList3.contains(view)) {
            return false;
        }
        return true;
    }

    public final void y(Transition transition, TransitionNotification transitionNotification, boolean z) {
        Transition transition2 = this.x;
        if (transition2 != null) {
            transition2.y(transition, transitionNotification, z);
        }
        ArrayList arrayList = this.y;
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = this.y.size();
            TransitionListener[] transitionListenerArr = this.r;
            if (transitionListenerArr == null) {
                transitionListenerArr = new TransitionListener[size];
            }
            this.r = null;
            TransitionListener[] transitionListenerArr2 = (TransitionListener[]) this.y.toArray(transitionListenerArr);
            for (int i = 0; i < size; i++) {
                transitionNotification.a(transitionListenerArr2[i], transition, z);
                transitionListenerArr2[i] = null;
            }
            this.r = transitionListenerArr2;
        }
    }

    public void z(View view) {
        if (!this.w) {
            ArrayList arrayList = this.s;
            int size = arrayList.size();
            Animator[] animatorArr = (Animator[]) arrayList.toArray(this.t);
            this.t = C;
            for (int i = size - 1; i >= 0; i--) {
                Animator animator = animatorArr[i];
                animatorArr[i] = null;
                animator.pause();
            }
            this.t = animatorArr;
            y(this, TransitionNotification.d, false);
            this.v = true;
        }
    }

    public void K() {
    }
}
