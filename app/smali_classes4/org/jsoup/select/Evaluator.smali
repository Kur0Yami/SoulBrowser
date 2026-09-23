.class public abstract Lorg/jsoup/select/Evaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/Evaluator$MatchText;,
        Lorg/jsoup/select/Evaluator$MatchesWholeOwnText;,
        Lorg/jsoup/select/Evaluator$MatchesWholeText;,
        Lorg/jsoup/select/Evaluator$MatchesOwn;,
        Lorg/jsoup/select/Evaluator$Matches;,
        Lorg/jsoup/select/Evaluator$ContainsOwnText;,
        Lorg/jsoup/select/Evaluator$ContainsData;,
        Lorg/jsoup/select/Evaluator$ContainsWholeOwnText;,
        Lorg/jsoup/select/Evaluator$ContainsWholeText;,
        Lorg/jsoup/select/Evaluator$ContainsText;,
        Lorg/jsoup/select/Evaluator$IndexEvaluator;,
        Lorg/jsoup/select/Evaluator$IsEmpty;,
        Lorg/jsoup/select/Evaluator$IsOnlyOfType;,
        Lorg/jsoup/select/Evaluator$IsOnlyChild;,
        Lorg/jsoup/select/Evaluator$IsRoot;,
        Lorg/jsoup/select/Evaluator$IsFirstChild;,
        Lorg/jsoup/select/Evaluator$IsNthLastOfType;,
        Lorg/jsoup/select/Evaluator$IsNthOfType;,
        Lorg/jsoup/select/Evaluator$IsNthLastChild;,
        Lorg/jsoup/select/Evaluator$IsNthChild;,
        Lorg/jsoup/select/Evaluator$CssNthEvaluator;,
        Lorg/jsoup/select/Evaluator$IsLastOfType;,
        Lorg/jsoup/select/Evaluator$IsFirstOfType;,
        Lorg/jsoup/select/Evaluator$IsLastChild;,
        Lorg/jsoup/select/Evaluator$IndexEquals;,
        Lorg/jsoup/select/Evaluator$IndexGreaterThan;,
        Lorg/jsoup/select/Evaluator$IndexLessThan;,
        Lorg/jsoup/select/Evaluator$AllElements;,
        Lorg/jsoup/select/Evaluator$AttributeKeyPair;,
        Lorg/jsoup/select/Evaluator$AttributeWithValueMatching;,
        Lorg/jsoup/select/Evaluator$AttributeWithValueContaining;,
        Lorg/jsoup/select/Evaluator$AttributeWithValueEnding;,
        Lorg/jsoup/select/Evaluator$AttributeWithValueStarting;,
        Lorg/jsoup/select/Evaluator$AttributeWithValueNot;,
        Lorg/jsoup/select/Evaluator$AttributeWithValue;,
        Lorg/jsoup/select/Evaluator$AttributeStarting;,
        Lorg/jsoup/select/Evaluator$Attribute;,
        Lorg/jsoup/select/Evaluator$Class;,
        Lorg/jsoup/select/Evaluator$Id;,
        Lorg/jsoup/select/Evaluator$TagEndsWith;,
        Lorg/jsoup/select/Evaluator$TagStartsWith;,
        Lorg/jsoup/select/Evaluator$Tag;
    }
.end annotation


# virtual methods
.method public a()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    return v0
.end method

.method public asPredicate(Lorg/jsoup/nodes/Element;)Ljava/util/function/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Element;",
            ")",
            "Ljava/util/function/Predicate<",
            "Lorg/jsoup/nodes/Element;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jsoup/select/b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lorg/jsoup/select/b;-><init>(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
    .locals 1

    .line 1
    instance-of v0, p2, Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Lorg/jsoup/nodes/Element;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    instance-of v0, p2, Lorg/jsoup/nodes/LeafNode;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p2, Lorg/jsoup/nodes/LeafNode;

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/LeafNode;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    return p1
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public abstract matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/LeafNode;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method
