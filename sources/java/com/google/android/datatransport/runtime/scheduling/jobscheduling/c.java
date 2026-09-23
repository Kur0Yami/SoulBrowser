package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.common.base.Function;
import com.google.common.graph.EndpointPair;
import com.google.common.graph.Network;
import com.google.common.graph.ValueGraph;
import com.google.gson.internal.ObjectConstructor;
import com.google.gson.internal.UnsafeAllocator;
import com.google.gson.internal.reflect.ReflectionHelper;
import j$.util.Objects;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Comment;
import org.jsoup.nodes.DataNode;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.NodeFilter;
import org.jsoup.select.NodeVisitor;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements SynchronizationGuard.CriticalSection, AccessibilityViewCommand, MaterialShapeDrawable.OnCornerSizeChangeListener, Function, ObjectConstructor, NodeVisitor, NodeFilter {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2894c;
    public final /* synthetic */ Object f;

    public /* synthetic */ c(int i, Object obj) {
        this.f2894c = i;
        this.f = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
    
        if (r1 == false) goto L17;
     */
    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(android.view.View r7) {
        /*
            r6 = this;
            java.lang.Object r7 = r6.f
            com.google.android.material.bottomsheet.BottomSheetDragHandleView r7 = (com.google.android.material.bottomsheet.BottomSheetDragHandleView) r7
            int r0 = com.google.android.material.bottomsheet.BottomSheetDragHandleView.l
            com.google.android.material.bottomsheet.BottomSheetBehavior r0 = r7.h
            if (r0 == 0) goto L29
            boolean r1 = r0.f
            int r2 = r0.R
            r3 = 6
            r4 = 3
            r5 = 4
            if (r2 != r5) goto L16
            if (r1 != 0) goto L23
            goto L24
        L16:
            if (r2 != r4) goto L1d
            if (r1 != 0) goto L1b
            goto L24
        L1b:
            r3 = r5
            goto L24
        L1d:
            boolean r7 = r7.i
            if (r7 == 0) goto L22
            goto L23
        L22:
            r4 = r5
        L23:
            r3 = r4
        L24:
            r0.e(r3)
            r7 = 1
            return r7
        L29:
            r7 = 0
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.runtime.scheduling.jobscheduling.c.a(android.view.View):boolean");
    }

    @Override // com.google.common.base.Function
    public Object apply(Object obj) {
        switch (this.f2894c) {
            case 6:
                return ((Network) this.f).i(obj);
            default:
                EndpointPair endpointPair = (EndpointPair) obj;
                Object e = ((ValueGraph) this.f).e(endpointPair.f12441c, endpointPair.f);
                Objects.requireNonNull(e);
                return e;
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable.OnCornerSizeChangeListener
    public void b(float f) {
        MaterialButton materialButton = (MaterialButton) this.f;
        int i = (int) (f * 0.11f);
        if (materialButton.B != i) {
            materialButton.B = i;
            materialButton.j();
            materialButton.invalidate();
        }
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object c() {
        int i = this.f2894c;
        Object obj = this.f;
        switch (i) {
            case 8:
                Constructor constructor = (Constructor) obj;
                try {
                    return constructor.newInstance(null);
                } catch (IllegalAccessException e) {
                    ReflectionHelper.RecordHelper recordHelper = ReflectionHelper.f12746a;
                    throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.13.2). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e);
                } catch (InstantiationException e2) {
                    throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.b(constructor) + "' with no args", e2);
                } catch (InvocationTargetException e3) {
                    throw new RuntimeException("Failed to invoke constructor '" + ReflectionHelper.b(constructor) + "' with no args", e3.getCause());
                }
            default:
                Class cls = (Class) obj;
                try {
                    return UnsafeAllocator.f12697a.a(cls);
                } catch (Exception e4) {
                    throw new RuntimeException("Unable to create instance of " + cls + ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.", e4);
                }
        }
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        switch (this.f2894c) {
            case 0:
                return ((ClientHealthMetricsStore) this.f).d();
            case 1:
                return Integer.valueOf(((EventStore) this.f).g());
            case 2:
                ((Uploader) this.f).i.a();
                return null;
            default:
                WorkInitializer workInitializer = (WorkInitializer) this.f;
                Iterator it = workInitializer.b.E().iterator();
                while (it.hasNext()) {
                    workInitializer.f2890c.a((TransportContext) it.next(), 1);
                }
                return null;
        }
    }

    @Override // org.jsoup.select.NodeFilter
    public NodeFilter.FilterResult head(Node node, int i) {
        AtomicBoolean atomicBoolean = (AtomicBoolean) this.f;
        List list = Element.k;
        if ((node instanceof TextNode) && !((TextNode) node).isBlank()) {
            atomicBoolean.set(true);
            return NodeFilter.FilterResult.STOP;
        }
        return NodeFilter.FilterResult.CONTINUE;
    }

    @Override // org.jsoup.select.NodeFilter
    public /* synthetic */ NodeFilter.FilterResult tail(Node node, int i) {
        return org.jsoup.select.c.a(this, node, i);
    }

    @Override // org.jsoup.select.NodeVisitor, org.jsoup.select.NodeFilter
    public /* synthetic */ void traverse(Node node) {
        switch (this.f2894c) {
            case 10:
                org.jsoup.select.d.b(this, node);
                return;
            default:
                org.jsoup.select.c.b(this, node);
                return;
        }
    }

    @Override // org.jsoup.select.NodeVisitor
    /* renamed from: tail, reason: collision with other method in class */
    public /* synthetic */ void mo3tail(Node node, int i) {
        org.jsoup.select.d.a(this, node, i);
    }

    @Override // org.jsoup.select.NodeVisitor
    /* renamed from: head, reason: collision with other method in class */
    public void mo2head(Node node, int i) {
        StringBuilder sb = (StringBuilder) this.f;
        List list = Element.k;
        if (node instanceof DataNode) {
            sb.append(((DataNode) node).getWholeData());
        } else if (node instanceof Comment) {
            sb.append(((Comment) node).getData());
        } else if (node instanceof CDataNode) {
            sb.append(((CDataNode) node).getWholeText());
        }
    }
}
