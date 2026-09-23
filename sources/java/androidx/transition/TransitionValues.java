package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class TransitionValues {
    public View b;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1712a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1713c = new ArrayList();

    public TransitionValues(View view) {
        this.b = view;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TransitionValues) {
            TransitionValues transitionValues = (TransitionValues) obj;
            if (this.b == transitionValues.b && this.f1712a.equals(transitionValues.f1712a)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.f1712a.hashCode() + (this.b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder v = android.support.v4.media.a.v("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        v.append(this.b);
        v.append("\n");
        String k = android.support.v4.media.a.k(v.toString(), "    values:");
        HashMap hashMap = this.f1712a;
        for (String str : hashMap.keySet()) {
            k = k + "    " + str + ": " + hashMap.get(str) + "\n";
        }
        return k;
    }
}
