.class abstract Lorg/jsoup/select/NodeEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/NodeEvaluator$MatchesValue;,
        Lorg/jsoup/select/NodeEvaluator$BlankValue;,
        Lorg/jsoup/select/NodeEvaluator$ContainsValue;,
        Lorg/jsoup/select/NodeEvaluator$InstanceType;
    }
.end annotation


# virtual methods
.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public abstract e(Lorg/jsoup/nodes/Node;)Z
.end method

.method public final matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lorg/jsoup/select/NodeEvaluator;->e(Lorg/jsoup/nodes/Node;)Z

    move-result p1

    return p1
.end method

.method public final matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/LeafNode;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p2}, Lorg/jsoup/select/NodeEvaluator;->e(Lorg/jsoup/nodes/Node;)Z

    move-result p1

    return p1
.end method
