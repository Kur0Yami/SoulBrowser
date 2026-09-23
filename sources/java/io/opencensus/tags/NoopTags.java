package io.opencensus.tags;

import io.opencensus.tags.propagation.TagContextBinarySerializer;
import io.opencensus.tags.propagation.TagContextTextFormat;
import io.opencensus.tags.propagation.TagPropagationComponent;
import java.util.Collections;
import java.util.Iterator;
import javax.annotation.concurrent.Immutable;
import javax.annotation.concurrent.ThreadSafe;

/* loaded from: classes3.dex */
final class NoopTags {

    @Immutable
    /* loaded from: classes3.dex */
    public static final class NoopTagContext extends TagContext {
        @Override // io.opencensus.tags.TagContext
        public final Iterator a() {
            return Collections.EMPTY_SET.iterator();
        }
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static final class NoopTagContextBinarySerializer extends TagContextBinarySerializer {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static final class NoopTagContextBuilder extends TagContextBuilder {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static final class NoopTagContextTextFormat extends TagContextTextFormat {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static final class NoopTagPropagationComponent extends TagPropagationComponent {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static final class NoopTagger extends Tagger {
    }

    @ThreadSafe
    /* loaded from: classes3.dex */
    public static final class NoopTagsComponent extends TagsComponent {
    }
}
