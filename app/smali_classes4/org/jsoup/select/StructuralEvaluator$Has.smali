.class Lorg/jsoup/select/StructuralEvaluator$Has;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/StructuralEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Has"
.end annotation


# static fields
.field public static final e:Lorg/jsoup/internal/SoftPool;


# instance fields
.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/internal/SoftPool;

    .line 2
    .line 3
    new-instance v1, Lorg/jsoup/select/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2}, Lorg/jsoup/select/g;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lorg/jsoup/internal/SoftPool;-><init>(Ljava/util/function/Supplier;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lorg/jsoup/select/StructuralEvaluator$Has;->e:Lorg/jsoup/internal/SoftPool;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lorg/jsoup/select/StructuralEvaluator;-><init>(Lorg/jsoup/select/Evaluator;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lorg/jsoup/select/CombiningEvaluator;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    check-cast p1, Lorg/jsoup/select/CombiningEvaluator;

    .line 10
    .line 11
    iget-object p1, p1, Lorg/jsoup/select/CombiningEvaluator;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    move v2, v1

    .line 18
    :cond_0
    if-ge v2, v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    check-cast v3, Lorg/jsoup/select/Evaluator;

    .line 27
    .line 28
    instance-of v4, v3, Lorg/jsoup/select/StructuralEvaluator$PreviousSibling;

    .line 29
    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    instance-of v3, v3, Lorg/jsoup/select/StructuralEvaluator$ImmediatePreviousSibling;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    :cond_1
    const/4 v1, 0x1

    .line 37
    :cond_2
    iput-boolean v1, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->d:Z

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/select/StructuralEvaluator;->a:Lorg/jsoup/select/Evaluator;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/jsoup/select/Evaluator;->a()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0xa

    .line 8
    .line 9
    return v0
.end method

.method public final e(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .locals 4

    .line 1
    iget-boolean p1, p0, Lorg/jsoup/select/StructuralEvaluator$Has;->d:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lorg/jsoup/select/StructuralEvaluator;->a:Lorg/jsoup/select/Evaluator;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->firstElementSibling()Lorg/jsoup/nodes/Element;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    if-eq p1, p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, p2, p1}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextElementSibling()Lorg/jsoup/nodes/Element;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object p1, Lorg/jsoup/select/StructuralEvaluator$Has;->e:Lorg/jsoup/internal/SoftPool;

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/jsoup/internal/SoftPool;->borrow()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lorg/jsoup/nodes/NodeIterator;

    .line 35
    .line 36
    invoke-virtual {v2, p2}, Lorg/jsoup/nodes/NodeIterator;->restart(Lorg/jsoup/nodes/Node;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lorg/jsoup/nodes/NodeIterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    invoke-virtual {v2}, Lorg/jsoup/nodes/NodeIterator;->next()Lorg/jsoup/nodes/Node;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-ne v3, p2, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {v1, p2, v3}, Lorg/jsoup/select/Evaluator;->b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    .line 53
    .line 54
    .line 55
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return v0

    .line 62
    :catchall_0
    move-exception p2

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    invoke-virtual {p1, v2}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    return p1

    .line 69
    :goto_2
    invoke-virtual {p1, v2}, Lorg/jsoup/internal/SoftPool;->release(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    throw p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lorg/jsoup/select/StructuralEvaluator;->a:Lorg/jsoup/select/Evaluator;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const-string v1, ":has(%s)"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
