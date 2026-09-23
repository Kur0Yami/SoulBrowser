package org.jsoup.select;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.IdentityHashMap;
import java.util.function.Supplier;
import org.jsoup.internal.SoftPool;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.NodeIterator;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.StructuralEvaluator;

/* loaded from: classes4.dex */
public final /* synthetic */ class g implements Supplier {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22653c;

    public /* synthetic */ g(int i) {
        this.f22653c = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f22653c) {
            case 0:
                SoftPool softPool = StructuralEvaluator.Has.e;
                return new NodeIterator(new TextNode(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), Node.class);
            case 1:
                return new Nodes();
            case 2:
                return new Elements();
            default:
                return new IdentityHashMap();
        }
    }
}
