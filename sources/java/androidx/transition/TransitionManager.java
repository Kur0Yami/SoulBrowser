package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class TransitionManager {

    /* renamed from: a, reason: collision with root package name */
    public static final AutoTransition f1703a;
    public static final ThreadLocal b;

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f1704c;

    /* loaded from: classes.dex */
    public static class MultiListener implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: c, reason: collision with root package name */
        public Transition f1705c;
        public ViewGroup f;

        /* JADX WARN: Removed duplicated region for block: B:115:0x01e5 A[EDGE_INSN: B:115:0x01e5->B:116:0x01e5 BREAK  A[LOOP:1: B:16:0x0080->B:28:0x01db], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:119:0x01ec  */
        /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:129:0x020d  */
        /* JADX WARN: Removed duplicated region for block: B:139:0x0239  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0085  */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean onPreDraw() {
            /*
                Method dump skipped, instructions count: 685
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionManager.MultiListener.onPreDraw():boolean");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            ViewGroup viewGroup = this.f;
            viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
            viewGroup.removeOnAttachStateChangeListener(this);
            TransitionManager.f1704c.remove(viewGroup);
            ArrayList arrayList = (ArrayList) TransitionManager.b().get(viewGroup);
            if (arrayList != null && arrayList.size() > 0) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((Transition) obj).D(viewGroup);
                }
            }
            this.f1705c.j(true);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.transition.TransitionSet, androidx.transition.AutoTransition] */
    static {
        ?? transitionSet = new TransitionSet();
        transitionSet.P(1);
        transitionSet.O(new Fade(2));
        transitionSet.O(new Transition());
        transitionSet.O(new Fade(1));
        f1703a = transitionSet;
        b = new ThreadLocal();
        f1704c = new ArrayList();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.view.ViewTreeObserver$OnPreDrawListener, java.lang.Object, android.view.View$OnAttachStateChangeListener, androidx.transition.TransitionManager$MultiListener] */
    public static void a(ViewGroup viewGroup, Transition transition) {
        ArrayList arrayList = f1704c;
        if (!arrayList.contains(viewGroup) && viewGroup.isLaidOut()) {
            arrayList.add(viewGroup);
            if (transition == null) {
                transition = f1703a;
            }
            Transition clone = transition.clone();
            ArrayList arrayList2 = (ArrayList) b().get(viewGroup);
            if (arrayList2 != null && arrayList2.size() > 0) {
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    ((Transition) obj).z(viewGroup);
                }
            }
            clone.i(viewGroup, true);
            if (((Scene) viewGroup.getTag(R.id.transition_current_scene)) == null) {
                viewGroup.setTag(R.id.transition_current_scene, null);
                ?? obj2 = new Object();
                obj2.f1705c = clone;
                obj2.f = viewGroup;
                viewGroup.addOnAttachStateChangeListener(obj2);
                viewGroup.getViewTreeObserver().addOnPreDrawListener(obj2);
                return;
            }
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    public static ArrayMap b() {
        ArrayMap arrayMap;
        ThreadLocal threadLocal = b;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (arrayMap = (ArrayMap) weakReference.get()) != null) {
            return arrayMap;
        }
        ?? simpleArrayMap = new SimpleArrayMap(0);
        threadLocal.set(new WeakReference(simpleArrayMap));
        return simpleArrayMap;
    }
}
