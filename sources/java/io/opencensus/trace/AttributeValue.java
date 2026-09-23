package io.opencensus.trace;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class AttributeValue {

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class AttributeValueBoolean extends AttributeValue {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class AttributeValueDouble extends AttributeValue {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class AttributeValueLong extends AttributeValue {
        public abstract Long b();
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class AttributeValueString extends AttributeValue {
        public abstract String b();
    }

    public static AttributeValue a(String str) {
        return new AutoValue_AttributeValue_AttributeValueString(str);
    }
}
