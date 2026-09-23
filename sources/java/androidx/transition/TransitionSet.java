package androidx.transition;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class TransitionSet extends Transition {
    public int I;
    public ArrayList G = new ArrayList();
    public boolean H = true;
    public boolean J = false;
    public int K = 0;

    /* renamed from: androidx.transition.TransitionSet$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends TransitionListenerAdapter {
        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class TransitionSetListener extends TransitionListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public TransitionSet f1708a;

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void c(Transition transition) {
            TransitionSet transitionSet = this.f1708a;
            if (!transitionSet.J) {
                transitionSet.M();
                transitionSet.J = true;
            }
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public final void e(Transition transition) {
            TransitionSet transitionSet = this.f1708a;
            int i = transitionSet.I - 1;
            transitionSet.I = i;
            if (i == 0) {
                transitionSet.J = false;
                transitionSet.n();
            }
            transition.A(this);
        }
    }

    @Override // androidx.transition.Transition
    public final Transition A(Transition.TransitionListener transitionListener) {
        super.A(transitionListener);
        return this;
    }

    @Override // androidx.transition.Transition
    public final void C(View view) {
        for (int i = 0; i < this.G.size(); i++) {
            ((Transition) this.G.get(i)).C(view);
        }
        this.j.remove(view);
    }

    @Override // androidx.transition.Transition
    public final void D(View view) {
        super.D(view);
        int size = this.G.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.G.get(i)).D(view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.transition.TransitionSet$TransitionSetListener, java.lang.Object, androidx.transition.Transition$TransitionListener] */
    @Override // androidx.transition.Transition
    public final void E() {
        if (this.G.isEmpty()) {
            M();
            n();
            return;
        }
        ?? obj = new Object();
        obj.f1708a = this;
        ArrayList arrayList = this.G;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj2 = arrayList.get(i2);
            i2++;
            ((Transition) obj2).a(obj);
        }
        this.I = this.G.size();
        if (!this.H) {
            for (int i3 = 1; i3 < this.G.size(); i3++) {
                Transition transition = (Transition) this.G.get(i3 - 1);
                final Transition transition2 = (Transition) this.G.get(i3);
                transition.a(new TransitionListenerAdapter() { // from class: androidx.transition.TransitionSet.1
                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    public final void e(Transition transition3) {
                        Transition.this.E();
                        transition3.A(this);
                    }
                });
            }
            Transition transition3 = (Transition) this.G.get(0);
            if (transition3 != null) {
                transition3.E();
                return;
            }
            return;
        }
        ArrayList arrayList2 = this.G;
        int size2 = arrayList2.size();
        while (i < size2) {
            Object obj3 = arrayList2.get(i);
            i++;
            ((Transition) obj3).E();
        }
    }

    @Override // androidx.transition.Transition
    public final void F(long j) {
        ArrayList arrayList;
        this.g = j;
        if (j >= 0 && (arrayList = this.G) != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Transition) this.G.get(i)).F(j);
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void H(Transition.EpicenterCallback epicenterCallback) {
        this.A = epicenterCallback;
        this.K |= 8;
        int size = this.G.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.G.get(i)).H(epicenterCallback);
        }
    }

    @Override // androidx.transition.Transition
    public final void I(TimeInterpolator timeInterpolator) {
        this.K |= 1;
        ArrayList arrayList = this.G;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Transition) this.G.get(i)).I(timeInterpolator);
            }
        }
        this.h = timeInterpolator;
    }

    @Override // androidx.transition.Transition
    public final void J(PathMotion pathMotion) {
        super.J(pathMotion);
        this.K |= 4;
        if (this.G != null) {
            for (int i = 0; i < this.G.size(); i++) {
                ((Transition) this.G.get(i)).J(pathMotion);
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void K() {
        this.K |= 2;
        int size = this.G.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.G.get(i)).K();
        }
    }

    @Override // androidx.transition.Transition
    public final void L(long j) {
        this.f = j;
    }

    @Override // androidx.transition.Transition
    public final String N(String str) {
        String N = super.N(str);
        for (int i = 0; i < this.G.size(); i++) {
            StringBuilder v = android.support.v4.media.a.v(N, "\n");
            v.append(((Transition) this.G.get(i)).N(str + "  "));
            N = v.toString();
        }
        return N;
    }

    public final void O(Transition transition) {
        this.G.add(transition);
        transition.n = this;
        long j = this.g;
        if (j >= 0) {
            transition.F(j);
        }
        if ((this.K & 1) != 0) {
            transition.I(this.h);
        }
        if ((this.K & 2) != 0) {
            transition.K();
        }
        if ((this.K & 4) != 0) {
            transition.J(this.B);
        }
        if ((this.K & 8) != 0) {
            transition.H(this.A);
        }
    }

    public final void P(int i) {
        if (i != 0) {
            if (i == 1) {
                this.H = false;
                return;
            }
            throw new AndroidRuntimeException(android.support.v4.media.a.e(i, "Invalid parameter for TransitionSet ordering: "));
        }
        this.H = true;
    }

    @Override // androidx.transition.Transition
    public final void b(View view) {
        for (int i = 0; i < this.G.size(); i++) {
            ((Transition) this.G.get(i)).b(view);
        }
        this.j.add(view);
    }

    @Override // androidx.transition.Transition
    public final void d() {
        super.d();
        int size = this.G.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.G.get(i)).d();
        }
    }

    @Override // androidx.transition.Transition
    public final void e(TransitionValues transitionValues) {
        if (w(transitionValues.b)) {
            ArrayList arrayList = this.G;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Transition transition = (Transition) obj;
                if (transition.w(transitionValues.b)) {
                    transition.e(transitionValues);
                    transitionValues.f1713c.add(transition);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void g(TransitionValues transitionValues) {
        int size = this.G.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.G.get(i)).g(transitionValues);
        }
    }

    @Override // androidx.transition.Transition
    public final void h(TransitionValues transitionValues) {
        if (w(transitionValues.b)) {
            ArrayList arrayList = this.G;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                Transition transition = (Transition) obj;
                if (transition.w(transitionValues.b)) {
                    transition.h(transitionValues);
                    transitionValues.f1713c.add(transition);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: k */
    public final Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.G = new ArrayList();
        int size = this.G.size();
        for (int i = 0; i < size; i++) {
            Transition clone = ((Transition) this.G.get(i)).clone();
            transitionSet.G.add(clone);
            clone.n = transitionSet;
        }
        return transitionSet;
    }

    @Override // androidx.transition.Transition
    public final void m(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList arrayList, ArrayList arrayList2) {
        long j = this.f;
        int size = this.G.size();
        for (int i = 0; i < size; i++) {
            Transition transition = (Transition) this.G.get(i);
            if (j > 0 && (this.H || i == 0)) {
                long j2 = transition.f;
                if (j2 > 0) {
                    transition.L(j2 + j);
                } else {
                    transition.L(j);
                }
            }
            transition.m(viewGroup, transitionValuesMaps, transitionValuesMaps2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.Transition
    public final Transition o(View view) {
        throw null;
    }

    @Override // androidx.transition.Transition
    public final boolean u() {
        for (int i = 0; i < this.G.size(); i++) {
            if (((Transition) this.G.get(i)).u()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.transition.Transition
    public final void z(View view) {
        super.z(view);
        int size = this.G.size();
        for (int i = 0; i < size; i++) {
            ((Transition) this.G.get(i)).z(view);
        }
    }
}
