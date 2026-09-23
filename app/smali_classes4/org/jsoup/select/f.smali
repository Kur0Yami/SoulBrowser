.class public final synthetic Lorg/jsoup/select/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/jsoup/select/StructuralEvaluator;

.field public final synthetic b:Lorg/jsoup/nodes/Element;


# direct methods
.method public synthetic constructor <init>(Lorg/jsoup/select/StructuralEvaluator;Lorg/jsoup/nodes/Element;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/select/f;->a:Lorg/jsoup/select/StructuralEvaluator;

    iput-object p2, p0, Lorg/jsoup/select/f;->b:Lorg/jsoup/nodes/Element;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lorg/jsoup/nodes/Node;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/jsoup/select/f;->a:Lorg/jsoup/select/StructuralEvaluator;

    .line 4
    .line 5
    iget-object v0, v0, Lorg/jsoup/select/StructuralEvaluator;->a:Lorg/jsoup/select/Evaluator;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/jsoup/select/f;->b:Lorg/jsoup/nodes/Element;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lorg/jsoup/select/Evaluator;->b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
