package net.dankito.readability4j.processor;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.jsoup.nodes.Element;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "element", "Lorg/jsoup/nodes/Element;", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes4.dex */
public final class ArticleGrabber$cleanConditionally$1$isDataTable$1 extends Lambda implements Function1<Element, Boolean> {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArticleGrabber$cleanConditionally$1 f21966c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArticleGrabber$cleanConditionally$1$isDataTable$1(ArticleGrabber$cleanConditionally$1 articleGrabber$cleanConditionally$1) {
        super(1);
        this.f21966c = articleGrabber$cleanConditionally$1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(Element element) {
        boolean z;
        Boolean bool = (Boolean) this.f21966c.f21965c.g.get(element);
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
