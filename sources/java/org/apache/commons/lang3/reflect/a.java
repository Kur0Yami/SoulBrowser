package org.apache.commons.lang3.reflect;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import j$.util.function.Function$CC;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.parser.TokenQueue;

/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22388a;

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        int i = this.f22388a;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f22388a) {
            case 0:
                return ((Method) obj).toString();
            case 1:
                return (CharSequence) ((Map.Entry) obj).getValue();
            case 2:
                return (CharSequence) ((Map.Entry) obj).getKey();
            case 3:
                return DesugarCollections.unmodifiableList((List) obj);
            case 4:
                Node node = (Node) obj;
                List list = Element.k;
                if (node instanceof TextNode) {
                    return ((TextNode) node).getWholeText();
                }
                if (node.nameIs("br")) {
                    return "\n";
                }
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            default:
                return TokenQueue.escapeCssIdentifier((String) obj);
        }
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        int i = this.f22388a;
        return Function$CC.$default$compose(this, function);
    }
}
