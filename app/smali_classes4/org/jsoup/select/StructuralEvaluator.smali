.class abstract Lorg/jsoup/select/StructuralEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;,
        Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;,
        Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;,
        Lorg/jsoup/select/StructuralEvaluator$Ancestor;,
        Lorg/jsoup/select/StructuralEvaluator$Not;,
        Lorg/jsoup/select/StructuralEvaluator$Is;,
        Lorg/jsoup/select/StructuralEvaluator$Has;,
        Lorg/jsoup/select/StructuralEvaluator$Root;
    }
.end annotation


# instance fields
.field public final a:Lorg/jsoup/select/Evaluator;

.field public b:Z

.field public final c:Landroidx/emoji2/text/flatbuffer/b;


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/jsoup/select/g;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, Lorg/jsoup/select/g;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroidx/emoji2/text/flatbuffer/b;

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    invoke-direct {v1, v0, v2}, Landroidx/emoji2/text/flatbuffer/b;-><init>(Ljava/util/function/Supplier;I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/jsoup/select/StructuralEvaluator;->c:Landroidx/emoji2/text/flatbuffer/b;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator;->a:Lorg/jsoup/select/Evaluator;

    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/jsoup/select/Evaluator;->d()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, Lorg/jsoup/select/StructuralEvaluator;->b:Z

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->c:Landroidx/emoji2/text/flatbuffer/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/IdentityHashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->a:Lorg/jsoup/select/Evaluator;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/jsoup/select/Evaluator;->c()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/select/StructuralEvaluator;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract e(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
.end method

.method public final f(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->c:Landroidx/emoji2/text/flatbuffer/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {}, Lorg/jsoup/internal/Functions;->identityMapFunction()Ljava/util/function/Function;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/Map;

    .line 18
    .line 19
    new-instance v1, Lorg/jsoup/select/f;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1}, Lorg/jsoup/select/f;-><init>(Lorg/jsoup/select/StructuralEvaluator;Lorg/jsoup/nodes/Element;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0, p2, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/StructuralEvaluator;->e(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    move-result p1

    return p1
.end method

.method public final matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/LeafNode;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/StructuralEvaluator;->e(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    move-result p1

    return p1
.end method
