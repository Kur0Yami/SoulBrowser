package androidx.constraintlayout.core.widgets.analyzer;

import android.support.v4.media.a;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.Chain;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class WidgetGroup {
    public static int f;

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f553a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f554c;
    public ArrayList d;
    public int e;

    /* loaded from: classes.dex */
    public class MeasureResult {
    }

    public final void a(ArrayList arrayList) {
        int size = this.f553a.size();
        if (this.e != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                WidgetGroup widgetGroup = (WidgetGroup) arrayList.get(i);
                if (this.e == widgetGroup.b) {
                    c(this.f554c, widgetGroup);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int b(LinearSystem linearSystem, int i) {
        int n;
        int n2;
        ArrayList arrayList = this.f553a;
        if (arrayList.size() == 0) {
            return 0;
        }
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) ((ConstraintWidget) arrayList.get(0)).U;
        linearSystem.t();
        constraintWidgetContainer.c(linearSystem, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ((ConstraintWidget) arrayList.get(i2)).c(linearSystem, false);
        }
        if (i == 0 && constraintWidgetContainer.z0 > 0) {
            Chain.a(constraintWidgetContainer, linearSystem, arrayList, 0);
        }
        if (i == 1 && constraintWidgetContainer.A0 > 0) {
            Chain.a(constraintWidgetContainer, linearSystem, arrayList, 1);
        }
        try {
            linearSystem.p();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.d = new ArrayList();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) arrayList.get(i3);
            Object obj = new Object();
            new WeakReference(constraintWidget);
            LinearSystem.n(constraintWidget.I);
            LinearSystem.n(constraintWidget.J);
            LinearSystem.n(constraintWidget.K);
            LinearSystem.n(constraintWidget.L);
            LinearSystem.n(constraintWidget.M);
            this.d.add(obj);
        }
        if (i == 0) {
            n = LinearSystem.n(constraintWidgetContainer.I);
            n2 = LinearSystem.n(constraintWidgetContainer.K);
            linearSystem.t();
        } else {
            n = LinearSystem.n(constraintWidgetContainer.J);
            n2 = LinearSystem.n(constraintWidgetContainer.L);
            linearSystem.t();
        }
        return n2 - n;
    }

    public final void c(int i, WidgetGroup widgetGroup) {
        int i2 = widgetGroup.b;
        ArrayList arrayList = this.f553a;
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ConstraintWidget constraintWidget = (ConstraintWidget) obj;
            ArrayList arrayList2 = widgetGroup.f553a;
            if (!arrayList2.contains(constraintWidget)) {
                arrayList2.add(constraintWidget);
            }
            if (i == 0) {
                constraintWidget.o0 = i2;
            } else {
                constraintWidget.p0 = i2;
            }
        }
        this.e = i2;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        int i = this.f554c;
        if (i == 0) {
            str = "Horizontal";
        } else if (i == 1) {
            str = "Vertical";
        } else if (i == 2) {
            str = "Both";
        } else {
            str = "Unknown";
        }
        sb.append(str);
        sb.append(" [");
        String g = a.g(this.b, "] <", sb);
        ArrayList arrayList = this.f553a;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            StringBuilder v = a.v(g, " ");
            v.append(((ConstraintWidget) obj).i0);
            g = v.toString();
        }
        return a.k(g, " >");
    }
}
