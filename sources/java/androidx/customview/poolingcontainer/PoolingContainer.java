package androidx.customview.poolingcontainer;

import android.view.View;
import androidx.core.view.ViewGroupKt$children$1;
import androidx.core.view.ViewGroupKt$iterator$1;
import androidx.core.view.ViewKt;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"customview-poolingcontainer_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
@JvmName(name = "PoolingContainer")
/* loaded from: classes.dex */
public final class PoolingContainer {

    /* renamed from: a, reason: collision with root package name */
    public static final int f934a = R.id.pooling_container_listener_holder_tag;
    public static final int b = R.id.is_pooling_container_tag;

    public static final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        for (View view2 : ViewKt.a(view)) {
            int i = f934a;
            PoolingContainerListenerHolder poolingContainerListenerHolder = (PoolingContainerListenerHolder) view2.getTag(i);
            if (poolingContainerListenerHolder == null) {
                poolingContainerListenerHolder = new PoolingContainerListenerHolder();
                view2.setTag(i, poolingContainerListenerHolder);
            }
            ArrayList arrayList = poolingContainerListenerHolder.f935a;
            for (int lastIndex = CollectionsKt.getLastIndex(arrayList); -1 < lastIndex; lastIndex--) {
                ((PoolingContainerListener) arrayList.get(lastIndex)).a();
            }
        }
    }

    public static final void b(RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        Iterator<View> it = new ViewGroupKt$children$1(recyclerView).iterator();
        while (true) {
            ViewGroupKt$iterator$1 viewGroupKt$iterator$1 = (ViewGroupKt$iterator$1) it;
            if (viewGroupKt$iterator$1.hasNext()) {
                View view = (View) viewGroupKt$iterator$1.next();
                int i = f934a;
                PoolingContainerListenerHolder poolingContainerListenerHolder = (PoolingContainerListenerHolder) view.getTag(i);
                if (poolingContainerListenerHolder == null) {
                    poolingContainerListenerHolder = new PoolingContainerListenerHolder();
                    view.setTag(i, poolingContainerListenerHolder);
                }
                ArrayList arrayList = poolingContainerListenerHolder.f935a;
                for (int lastIndex = CollectionsKt.getLastIndex(arrayList); -1 < lastIndex; lastIndex--) {
                    ((PoolingContainerListener) arrayList.get(lastIndex)).a();
                }
            } else {
                return;
            }
        }
    }
}
