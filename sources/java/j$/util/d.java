package j$.util;

import java.io.Serializable;
import java.util.function.Function;

/* loaded from: classes2.dex */
public final /* synthetic */ class d implements java.util.Comparator, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21326a;
    public final /* synthetic */ java.util.Comparator b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f21327c;

    public /* synthetic */ d(java.util.Comparator comparator, Object obj, int i) {
        this.f21326a = i;
        this.b = comparator;
        this.f21327c = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f21326a) {
            case 0:
                java.util.Comparator comparator = this.b;
                java.util.Comparator comparator2 = (java.util.Comparator) this.f21327c;
                int compare = comparator.compare(obj, obj2);
                return compare != 0 ? compare : comparator2.compare(obj, obj2);
            default:
                java.util.Comparator comparator3 = this.b;
                Function function = (Function) this.f21327c;
                return comparator3.compare(function.apply(obj), function.apply(obj2));
        }
    }
}
