package androidx.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RestrictTo;
import androidx.core.os.CancellationSignal;
import androidx.fragment.app.FragmentTransitionImpl;
import androidx.fragment.app.j;
import androidx.transition.Transition;
import java.util.ArrayList;

@RestrictTo
/* loaded from: classes.dex */
public class FragmentTransitionSupport extends FragmentTransitionImpl {

    /* renamed from: androidx.transition.FragmentTransitionSupport$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends Transition.EpicenterCallback {
    }

    /* renamed from: androidx.transition.FragmentTransitionSupport$5, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass5 extends Transition.EpicenterCallback {
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void a(View view, Object obj) {
        ((Transition) obj).b(view);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void b(Object obj, ArrayList arrayList) {
        Transition transition;
        Transition transition2 = (Transition) obj;
        if (transition2 != null) {
            int i = 0;
            if (transition2 instanceof TransitionSet) {
                TransitionSet transitionSet = (TransitionSet) transition2;
                int size = transitionSet.G.size();
                while (i < size) {
                    if (i >= 0 && i < transitionSet.G.size()) {
                        transition = (Transition) transitionSet.G.get(i);
                    } else {
                        transition = null;
                    }
                    b(transition, arrayList);
                    i++;
                }
                return;
            }
            if (FragmentTransitionImpl.h(transition2.i) && FragmentTransitionImpl.h(transition2.j)) {
                int size2 = arrayList.size();
                while (i < size2) {
                    transition2.b((View) arrayList.get(i));
                    i++;
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void c(ViewGroup viewGroup, Object obj) {
        TransitionManager.a(viewGroup, (Transition) obj);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final boolean e(Object obj) {
        return obj instanceof Transition;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object f(Object obj) {
        if (obj != null) {
            return ((Transition) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object i(Object obj, Object obj2, Object obj3) {
        Transition transition = (Transition) obj;
        Transition transition2 = (Transition) obj2;
        Transition transition3 = (Transition) obj3;
        if (transition != null && transition2 != null) {
            TransitionSet transitionSet = new TransitionSet();
            transitionSet.O(transition);
            transitionSet.O(transition2);
            transitionSet.P(1);
            transition = transitionSet;
        } else if (transition == null) {
            if (transition2 != null) {
                transition = transition2;
            } else {
                transition = null;
            }
        }
        if (transition3 != null) {
            TransitionSet transitionSet2 = new TransitionSet();
            if (transition != null) {
                transitionSet2.O(transition);
            }
            transitionSet2.O(transition3);
            return transitionSet2;
        }
        return transition;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object j(Object obj, Object obj2) {
        TransitionSet transitionSet = new TransitionSet();
        if (obj != null) {
            transitionSet.O((Transition) obj);
        }
        transitionSet.O((Transition) obj2);
        return transitionSet;
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void k(Object obj, final View view, final ArrayList arrayList) {
        ((Transition) obj).a(new Transition.TransitionListener() { // from class: androidx.transition.FragmentTransitionSupport.2
            @Override // androidx.transition.Transition.TransitionListener
            public final void c(Transition transition) {
                transition.A(this);
                transition.a(this);
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void d(Transition transition) {
                transition.A(this);
                transition.a(this);
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void e(Transition transition) {
                transition.A(this);
                view.setVisibility(8);
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((View) arrayList2.get(i)).setVisibility(0);
                }
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void f(Transition transition) {
                e(transition);
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void g(Transition transition) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void b() {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void h() {
            }
        });
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void l(Object obj, final Object obj2, final ArrayList arrayList, final Object obj3, final ArrayList arrayList2) {
        ((Transition) obj).a(new TransitionListenerAdapter() { // from class: androidx.transition.FragmentTransitionSupport.3
            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public final void c(Transition transition) {
                FragmentTransitionSupport fragmentTransitionSupport = FragmentTransitionSupport.this;
                Object obj4 = obj2;
                if (obj4 != null) {
                    fragmentTransitionSupport.s(obj4, arrayList, null);
                }
                Object obj5 = obj3;
                if (obj5 != null) {
                    fragmentTransitionSupport.s(obj5, arrayList2, null);
                }
            }

            @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
            public final void e(Transition transition) {
                transition.A(this);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.transition.Transition$EpicenterCallback, java.lang.Object] */
    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void m(View view, Object obj) {
        if (view != null) {
            FragmentTransitionImpl.g(new Rect(), view);
            ((Transition) obj).H(new Object());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.transition.Transition$EpicenterCallback, java.lang.Object] */
    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void n(Object obj, Rect rect) {
        ((Transition) obj).H(new Object());
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void o(Object obj, CancellationSignal cancellationSignal, final j jVar) {
        Transition transition = (Transition) obj;
        cancellationSignal.c(new a(0, transition, jVar));
        transition.a(new Transition.TransitionListener() { // from class: androidx.transition.FragmentTransitionSupport.4
            @Override // androidx.transition.Transition.TransitionListener
            public final void c(Transition transition2) {
                throw null;
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void d(Transition transition2) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void e(Transition transition2) {
                j.this.run();
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void f(Transition transition2) {
                e(transition2);
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void g(Transition transition2) {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void b() {
            }

            @Override // androidx.transition.Transition.TransitionListener
            public final void h() {
            }
        });
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void p(Object obj, View view, ArrayList arrayList) {
        TransitionSet transitionSet = (TransitionSet) obj;
        ArrayList arrayList2 = transitionSet.j;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            FragmentTransitionImpl.d(arrayList2, (View) arrayList.get(i));
        }
        arrayList2.add(view);
        arrayList.add(view);
        b(transitionSet, arrayList);
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final void q(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        TransitionSet transitionSet = (TransitionSet) obj;
        if (transitionSet != null) {
            ArrayList arrayList3 = transitionSet.j;
            arrayList3.clear();
            arrayList3.addAll(arrayList2);
            s(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.FragmentTransitionImpl
    public final Object r(Object obj) {
        if (obj == null) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.O((Transition) obj);
        return transitionSet;
    }

    public final void s(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        int size;
        Transition transition;
        Transition transition2 = (Transition) obj;
        int i = 0;
        if (transition2 instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition2;
            int size2 = transitionSet.G.size();
            while (i < size2) {
                if (i >= 0 && i < transitionSet.G.size()) {
                    transition = (Transition) transitionSet.G.get(i);
                } else {
                    transition = null;
                }
                s(transition, arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (FragmentTransitionImpl.h(transition2.i)) {
            ArrayList arrayList3 = transition2.j;
            if (arrayList3.size() == arrayList.size() && arrayList3.containsAll(arrayList)) {
                if (arrayList2 == null) {
                    size = 0;
                } else {
                    size = arrayList2.size();
                }
                while (i < size) {
                    transition2.b((View) arrayList2.get(i));
                    i++;
                }
                for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                    transition2.C((View) arrayList.get(size3));
                }
            }
        }
    }
}
