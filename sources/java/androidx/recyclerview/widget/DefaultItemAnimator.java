package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class DefaultItemAnimator extends SimpleItemAnimator {
    public static TimeInterpolator s;
    public ArrayList h;
    public ArrayList i;
    public ArrayList j;
    public ArrayList k;
    public ArrayList l;
    public ArrayList m;
    public ArrayList n;
    public ArrayList o;
    public ArrayList p;
    public ArrayList q;
    public ArrayList r;

    /* loaded from: classes.dex */
    public static class ChangeInfo {

        /* renamed from: a, reason: collision with root package name */
        public RecyclerView.ViewHolder f1512a;
        public RecyclerView.ViewHolder b;

        /* renamed from: c, reason: collision with root package name */
        public int f1513c;
        public int d;
        public int e;
        public int f;

        public final String toString() {
            return "ChangeInfo{oldHolder=" + this.f1512a + ", newHolder=" + this.b + ", fromX=" + this.f1513c + ", fromY=" + this.d + ", toX=" + this.e + ", toY=" + this.f + '}';
        }
    }

    /* loaded from: classes.dex */
    public static class MoveInfo {

        /* renamed from: a, reason: collision with root package name */
        public RecyclerView.ViewHolder f1514a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1515c;
        public int d;
        public int e;
    }

    public static void q(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((RecyclerView.ViewHolder) arrayList.get(size)).f1589a.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean g(RecyclerView.ViewHolder viewHolder, List list) {
        if (list.isEmpty() && !f(viewHolder)) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final void i(RecyclerView.ViewHolder viewHolder) {
        ArrayList arrayList = this.l;
        ArrayList arrayList2 = this.m;
        ArrayList arrayList3 = this.n;
        View view = viewHolder.f1589a;
        view.animate().cancel();
        ArrayList arrayList4 = this.j;
        int size = arrayList4.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((MoveInfo) arrayList4.get(size)).f1514a == viewHolder) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                h(viewHolder);
                arrayList4.remove(size);
            }
        }
        s(this.k, viewHolder);
        if (this.h.remove(viewHolder)) {
            view.setAlpha(1.0f);
            h(viewHolder);
        }
        if (this.i.remove(viewHolder)) {
            view.setAlpha(1.0f);
            h(viewHolder);
        }
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList5 = (ArrayList) arrayList3.get(size2);
            s(arrayList5, viewHolder);
            if (arrayList5.isEmpty()) {
                arrayList3.remove(size2);
            }
        }
        for (int size3 = arrayList2.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList6 = (ArrayList) arrayList2.get(size3);
            int size4 = arrayList6.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((MoveInfo) arrayList6.get(size4)).f1514a == viewHolder) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    h(viewHolder);
                    arrayList6.remove(size4);
                    if (arrayList6.isEmpty()) {
                        arrayList2.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        for (int size5 = arrayList.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList.get(size5);
            if (arrayList7.remove(viewHolder)) {
                view.setAlpha(1.0f);
                h(viewHolder);
                if (arrayList7.isEmpty()) {
                    arrayList.remove(size5);
                }
            }
        }
        this.q.remove(viewHolder);
        this.o.remove(viewHolder);
        this.r.remove(viewHolder);
        this.p.remove(viewHolder);
        r();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final void j() {
        ArrayList arrayList = this.n;
        ArrayList arrayList2 = this.l;
        ArrayList arrayList3 = this.m;
        ArrayList arrayList4 = this.k;
        ArrayList arrayList5 = this.i;
        ArrayList arrayList6 = this.h;
        ArrayList arrayList7 = this.j;
        int size = arrayList7.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            MoveInfo moveInfo = (MoveInfo) arrayList7.get(size);
            View view = moveInfo.f1514a.f1589a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            h(moveInfo.f1514a);
            arrayList7.remove(size);
        }
        for (int size2 = arrayList6.size() - 1; size2 >= 0; size2--) {
            h((RecyclerView.ViewHolder) arrayList6.get(size2));
            arrayList6.remove(size2);
        }
        int size3 = arrayList5.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) arrayList5.get(size3);
            viewHolder.f1589a.setAlpha(1.0f);
            h(viewHolder);
            arrayList5.remove(size3);
        }
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            ChangeInfo changeInfo = (ChangeInfo) arrayList4.get(size4);
            RecyclerView.ViewHolder viewHolder2 = changeInfo.f1512a;
            if (viewHolder2 != null) {
                t(changeInfo, viewHolder2);
            }
            RecyclerView.ViewHolder viewHolder3 = changeInfo.b;
            if (viewHolder3 != null) {
                t(changeInfo, viewHolder3);
            }
        }
        arrayList4.clear();
        if (!k()) {
            return;
        }
        for (int size5 = arrayList3.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList8 = (ArrayList) arrayList3.get(size5);
            for (int size6 = arrayList8.size() - 1; size6 >= 0; size6--) {
                MoveInfo moveInfo2 = (MoveInfo) arrayList8.get(size6);
                View view2 = moveInfo2.f1514a.f1589a;
                view2.setTranslationY(0.0f);
                view2.setTranslationX(0.0f);
                h(moveInfo2.f1514a);
                arrayList8.remove(size6);
                if (arrayList8.isEmpty()) {
                    arrayList3.remove(arrayList8);
                }
            }
        }
        for (int size7 = arrayList2.size() - 1; size7 >= 0; size7--) {
            ArrayList arrayList9 = (ArrayList) arrayList2.get(size7);
            for (int size8 = arrayList9.size() - 1; size8 >= 0; size8--) {
                RecyclerView.ViewHolder viewHolder4 = (RecyclerView.ViewHolder) arrayList9.get(size8);
                viewHolder4.f1589a.setAlpha(1.0f);
                h(viewHolder4);
                arrayList9.remove(size8);
                if (arrayList9.isEmpty()) {
                    arrayList2.remove(arrayList9);
                }
            }
        }
        for (int size9 = arrayList.size() - 1; size9 >= 0; size9--) {
            ArrayList arrayList10 = (ArrayList) arrayList.get(size9);
            for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                ChangeInfo changeInfo2 = (ChangeInfo) arrayList10.get(size10);
                RecyclerView.ViewHolder viewHolder5 = changeInfo2.f1512a;
                if (viewHolder5 != null) {
                    t(changeInfo2, viewHolder5);
                }
                RecyclerView.ViewHolder viewHolder6 = changeInfo2.b;
                if (viewHolder6 != null) {
                    t(changeInfo2, viewHolder6);
                }
                if (arrayList10.isEmpty()) {
                    arrayList.remove(arrayList10);
                }
            }
        }
        q(this.q);
        q(this.p);
        q(this.o);
        q(this.r);
        ArrayList arrayList11 = this.b;
        int size11 = arrayList11.size();
        for (int i = 0; i < size11; i++) {
            ((RecyclerView.ItemAnimator.ItemAnimatorFinishedListener) arrayList11.get(i)).a();
        }
        arrayList11.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final boolean k() {
        if (this.i.isEmpty() && this.k.isEmpty() && this.j.isEmpty() && this.h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.n.isEmpty()) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator
    public final void l() {
        long j;
        long j2 = this.d;
        ArrayList arrayList = this.h;
        boolean isEmpty = arrayList.isEmpty();
        ArrayList arrayList2 = this.j;
        boolean isEmpty2 = arrayList2.isEmpty();
        ArrayList arrayList3 = this.k;
        boolean isEmpty3 = arrayList3.isEmpty();
        ArrayList arrayList4 = this.i;
        boolean isEmpty4 = arrayList4.isEmpty();
        if (!isEmpty || !isEmpty2 || !isEmpty4 || !isEmpty3) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                final RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) obj;
                final View view = viewHolder.f1589a;
                final ViewPropertyAnimator animate = view.animate();
                this.q.add(viewHolder);
                animate.setDuration(j2).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        animate.setListener(null);
                        view.setAlpha(1.0f);
                        DefaultItemAnimator defaultItemAnimator = this;
                        RecyclerView.ViewHolder viewHolder2 = viewHolder;
                        defaultItemAnimator.h(viewHolder2);
                        defaultItemAnimator.q.remove(viewHolder2);
                        defaultItemAnimator.r();
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        this.getClass();
                    }
                }).start();
                arrayList = arrayList;
                isEmpty = isEmpty;
            }
            boolean z = isEmpty;
            arrayList.clear();
            if (!isEmpty2) {
                final ArrayList arrayList5 = new ArrayList();
                arrayList5.addAll(arrayList2);
                this.m.add(arrayList5);
                arrayList2.clear();
                Runnable runnable = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ArrayList arrayList6 = arrayList5;
                        int size2 = arrayList6.size();
                        int i2 = 0;
                        while (true) {
                            final DefaultItemAnimator defaultItemAnimator = DefaultItemAnimator.this;
                            if (i2 < size2) {
                                Object obj2 = arrayList6.get(i2);
                                i2++;
                                MoveInfo moveInfo = (MoveInfo) obj2;
                                final RecyclerView.ViewHolder viewHolder2 = moveInfo.f1514a;
                                int i3 = moveInfo.b;
                                int i4 = moveInfo.f1515c;
                                int i5 = moveInfo.d;
                                int i6 = moveInfo.e;
                                defaultItemAnimator.getClass();
                                final View view2 = viewHolder2.f1589a;
                                final int i7 = i5 - i3;
                                final int i8 = i6 - i4;
                                if (i7 != 0) {
                                    view2.animate().translationX(0.0f);
                                }
                                if (i8 != 0) {
                                    view2.animate().translationY(0.0f);
                                }
                                final ViewPropertyAnimator animate2 = view2.animate();
                                defaultItemAnimator.p.add(viewHolder2);
                                animate2.setDuration(defaultItemAnimator.e).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.6
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationCancel(Animator animator) {
                                        int i9 = i7;
                                        View view3 = view2;
                                        if (i9 != 0) {
                                            view3.setTranslationX(0.0f);
                                        }
                                        if (i8 != 0) {
                                            view3.setTranslationY(0.0f);
                                        }
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationEnd(Animator animator) {
                                        animate2.setListener(null);
                                        DefaultItemAnimator defaultItemAnimator2 = DefaultItemAnimator.this;
                                        RecyclerView.ViewHolder viewHolder3 = viewHolder2;
                                        defaultItemAnimator2.h(viewHolder3);
                                        defaultItemAnimator2.p.remove(viewHolder3);
                                        defaultItemAnimator2.r();
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationStart(Animator animator) {
                                        DefaultItemAnimator.this.getClass();
                                    }
                                }).start();
                            } else {
                                arrayList6.clear();
                                defaultItemAnimator.m.remove(arrayList6);
                                return;
                            }
                        }
                    }
                };
                if (!z) {
                    View view2 = ((MoveInfo) arrayList5.get(0)).f1514a.f1589a;
                    WeakHashMap weakHashMap = ViewCompat.f792a;
                    view2.postOnAnimationDelayed(runnable, j2);
                } else {
                    runnable.run();
                }
            }
            if (!isEmpty3) {
                final ArrayList arrayList6 = new ArrayList();
                arrayList6.addAll(arrayList3);
                this.n.add(arrayList6);
                arrayList3.clear();
                Runnable runnable2 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        final View view3;
                        ArrayList arrayList7 = arrayList6;
                        int size2 = arrayList7.size();
                        int i2 = 0;
                        while (true) {
                            final DefaultItemAnimator defaultItemAnimator = DefaultItemAnimator.this;
                            if (i2 < size2) {
                                Object obj2 = arrayList7.get(i2);
                                i2++;
                                final ChangeInfo changeInfo = (ChangeInfo) obj2;
                                ArrayList arrayList8 = defaultItemAnimator.r;
                                long j3 = defaultItemAnimator.f;
                                RecyclerView.ViewHolder viewHolder2 = changeInfo.f1512a;
                                final View view4 = null;
                                if (viewHolder2 == null) {
                                    view3 = null;
                                } else {
                                    view3 = viewHolder2.f1589a;
                                }
                                RecyclerView.ViewHolder viewHolder3 = changeInfo.b;
                                if (viewHolder3 != null) {
                                    view4 = viewHolder3.f1589a;
                                }
                                if (view3 != null) {
                                    final ViewPropertyAnimator duration = view3.animate().setDuration(j3);
                                    arrayList8.add(changeInfo.f1512a);
                                    duration.translationX(changeInfo.e - changeInfo.f1513c);
                                    duration.translationY(changeInfo.f - changeInfo.d);
                                    duration.alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.7
                                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                        public final void onAnimationEnd(Animator animator) {
                                            duration.setListener(null);
                                            View view5 = view3;
                                            view5.setAlpha(1.0f);
                                            view5.setTranslationX(0.0f);
                                            view5.setTranslationY(0.0f);
                                            ChangeInfo changeInfo2 = changeInfo;
                                            RecyclerView.ViewHolder viewHolder4 = changeInfo2.f1512a;
                                            DefaultItemAnimator defaultItemAnimator2 = DefaultItemAnimator.this;
                                            defaultItemAnimator2.h(viewHolder4);
                                            defaultItemAnimator2.r.remove(changeInfo2.f1512a);
                                            defaultItemAnimator2.r();
                                        }

                                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                        public final void onAnimationStart(Animator animator) {
                                            RecyclerView.ViewHolder viewHolder4 = changeInfo.f1512a;
                                            DefaultItemAnimator.this.getClass();
                                        }
                                    }).start();
                                }
                                if (view4 != null) {
                                    final ViewPropertyAnimator animate2 = view4.animate();
                                    arrayList8.add(changeInfo.b);
                                    animate2.translationX(0.0f).translationY(0.0f).setDuration(j3).alpha(1.0f).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.8
                                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                        public final void onAnimationEnd(Animator animator) {
                                            animate2.setListener(null);
                                            View view5 = view4;
                                            view5.setAlpha(1.0f);
                                            view5.setTranslationX(0.0f);
                                            view5.setTranslationY(0.0f);
                                            ChangeInfo changeInfo2 = changeInfo;
                                            RecyclerView.ViewHolder viewHolder4 = changeInfo2.b;
                                            DefaultItemAnimator defaultItemAnimator2 = DefaultItemAnimator.this;
                                            defaultItemAnimator2.h(viewHolder4);
                                            defaultItemAnimator2.r.remove(changeInfo2.b);
                                            defaultItemAnimator2.r();
                                        }

                                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                        public final void onAnimationStart(Animator animator) {
                                            RecyclerView.ViewHolder viewHolder4 = changeInfo.b;
                                            DefaultItemAnimator.this.getClass();
                                        }
                                    }).start();
                                }
                            } else {
                                arrayList7.clear();
                                defaultItemAnimator.n.remove(arrayList7);
                                return;
                            }
                        }
                    }
                };
                if (!z) {
                    View view3 = ((ChangeInfo) arrayList6.get(0)).f1512a.f1589a;
                    WeakHashMap weakHashMap2 = ViewCompat.f792a;
                    view3.postOnAnimationDelayed(runnable2, j2);
                } else {
                    runnable2.run();
                }
            }
            if (!isEmpty4) {
                final ArrayList arrayList7 = new ArrayList();
                arrayList7.addAll(arrayList4);
                this.l.add(arrayList7);
                arrayList4.clear();
                Runnable runnable3 = new Runnable() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ArrayList arrayList8 = arrayList7;
                        int size2 = arrayList8.size();
                        int i2 = 0;
                        while (true) {
                            final DefaultItemAnimator defaultItemAnimator = DefaultItemAnimator.this;
                            if (i2 < size2) {
                                Object obj2 = arrayList8.get(i2);
                                i2++;
                                final RecyclerView.ViewHolder viewHolder2 = (RecyclerView.ViewHolder) obj2;
                                defaultItemAnimator.getClass();
                                final View view4 = viewHolder2.f1589a;
                                final ViewPropertyAnimator animate2 = view4.animate();
                                defaultItemAnimator.o.add(viewHolder2);
                                animate2.alpha(1.0f).setDuration(defaultItemAnimator.f1564c).setListener(new AnimatorListenerAdapter() { // from class: androidx.recyclerview.widget.DefaultItemAnimator.5
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationCancel(Animator animator) {
                                        view4.setAlpha(1.0f);
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationEnd(Animator animator) {
                                        animate2.setListener(null);
                                        DefaultItemAnimator defaultItemAnimator2 = defaultItemAnimator;
                                        RecyclerView.ViewHolder viewHolder3 = viewHolder2;
                                        defaultItemAnimator2.h(viewHolder3);
                                        defaultItemAnimator2.o.remove(viewHolder3);
                                        defaultItemAnimator2.r();
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationStart(Animator animator) {
                                        defaultItemAnimator.getClass();
                                    }
                                }).start();
                            } else {
                                arrayList8.clear();
                                defaultItemAnimator.l.remove(arrayList8);
                                return;
                            }
                        }
                    }
                };
                if (z && isEmpty2 && isEmpty3) {
                    runnable3.run();
                    return;
                }
                long j3 = 0;
                if (z) {
                    j2 = 0;
                }
                if (!isEmpty2) {
                    j = this.e;
                } else {
                    j = 0;
                }
                if (!isEmpty3) {
                    j3 = this.f;
                }
                long max = Math.max(j, j3) + j2;
                View view4 = ((RecyclerView.ViewHolder) arrayList7.get(0)).f1589a;
                WeakHashMap weakHashMap3 = ViewCompat.f792a;
                view4.postOnAnimationDelayed(runnable3, max);
            }
        }
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public final void m(RecyclerView.ViewHolder viewHolder) {
        u(viewHolder);
        viewHolder.f1589a.setAlpha(0.0f);
        this.i.add(viewHolder);
    }

    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object, androidx.recyclerview.widget.DefaultItemAnimator$ChangeInfo] */
    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public final boolean n(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
        if (viewHolder == viewHolder2) {
            return o(viewHolder, i, i2, i3, i4);
        }
        View view = viewHolder.f1589a;
        View view2 = viewHolder.f1589a;
        float translationX = view.getTranslationX();
        float translationY = view2.getTranslationY();
        float alpha = view2.getAlpha();
        u(viewHolder);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        view2.setTranslationX(translationX);
        view2.setTranslationY(translationY);
        view2.setAlpha(alpha);
        if (viewHolder2 != null) {
            View view3 = viewHolder2.f1589a;
            u(viewHolder2);
            view3.setTranslationX(-i5);
            view3.setTranslationY(-i6);
            view3.setAlpha(0.0f);
        }
        ArrayList arrayList = this.k;
        ?? obj = new Object();
        obj.f1512a = viewHolder;
        obj.b = viewHolder2;
        obj.f1513c = i;
        obj.d = i2;
        obj.e = i3;
        obj.f = i4;
        arrayList.add(obj);
        return true;
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object, androidx.recyclerview.widget.DefaultItemAnimator$MoveInfo] */
    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public final boolean o(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        View view = viewHolder.f1589a;
        int translationX = i + ((int) view.getTranslationX());
        int translationY = i2 + ((int) viewHolder.f1589a.getTranslationY());
        u(viewHolder);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            h(viewHolder);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        ArrayList arrayList = this.j;
        ?? obj = new Object();
        obj.f1514a = viewHolder;
        obj.b = translationX;
        obj.f1515c = translationY;
        obj.d = i3;
        obj.e = i4;
        arrayList.add(obj);
        return true;
    }

    @Override // androidx.recyclerview.widget.SimpleItemAnimator
    public final void p(RecyclerView.ViewHolder viewHolder) {
        u(viewHolder);
        this.h.add(viewHolder);
    }

    public final void r() {
        if (!k()) {
            ArrayList arrayList = this.b;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((RecyclerView.ItemAnimator.ItemAnimatorFinishedListener) arrayList.get(i)).a();
            }
            arrayList.clear();
        }
    }

    public final void s(ArrayList arrayList, RecyclerView.ViewHolder viewHolder) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ChangeInfo changeInfo = (ChangeInfo) arrayList.get(size);
            if (t(changeInfo, viewHolder) && changeInfo.f1512a == null && changeInfo.b == null) {
                arrayList.remove(changeInfo);
            }
        }
    }

    public final boolean t(ChangeInfo changeInfo, RecyclerView.ViewHolder viewHolder) {
        if (changeInfo.b == viewHolder) {
            changeInfo.b = null;
        } else if (changeInfo.f1512a == viewHolder) {
            changeInfo.f1512a = null;
        } else {
            return false;
        }
        View view = viewHolder.f1589a;
        View view2 = viewHolder.f1589a;
        view.setAlpha(1.0f);
        view2.setTranslationX(0.0f);
        view2.setTranslationY(0.0f);
        h(viewHolder);
        return true;
    }

    public final void u(RecyclerView.ViewHolder viewHolder) {
        if (s == null) {
            s = new ValueAnimator().getInterpolator();
        }
        viewHolder.f1589a.animate().setInterpolator(s);
        i(viewHolder);
    }
}
