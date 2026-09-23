.class Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmediateParentRun"
.end annotation


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public e:I


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    iput v1, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->e:I

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->e:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/jsoup/select/Evaluator;->a()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    add-int/2addr p1, v0

    .line 24
    iput p1, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->e:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Lorg/jsoup/select/Evaluator;

    .line 17
    .line 18
    invoke-virtual {v3}, Lorg/jsoup/select/Evaluator;->c()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-super {p0}, Lorg/jsoup/select/StructuralEvaluator;->c()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final e(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->d:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    sub-int/2addr v2, v3

    .line 13
    :goto_0
    if-ltz v2, :cond_3

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lorg/jsoup/select/Evaluator;

    .line 23
    .line 24
    invoke-virtual {v4, p1, p2}, Lorg/jsoup/select/Evaluator;->b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    return v0

    .line 31
    :cond_2
    invoke-virtual {p2}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    add-int/lit8 v2, v2, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator$ImmediateParentRun;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, " > "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
