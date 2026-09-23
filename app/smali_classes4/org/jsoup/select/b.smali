.class public final synthetic Lorg/jsoup/select/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/jsoup/select/Evaluator;

.field public final synthetic c:Lorg/jsoup/nodes/Element;


# direct methods
.method public synthetic constructor <init>(Lorg/jsoup/select/Evaluator;Lorg/jsoup/nodes/Element;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/jsoup/select/b;->a:I

    iput-object p1, p0, Lorg/jsoup/select/b;->b:Lorg/jsoup/select/Evaluator;

    iput-object p2, p0, Lorg/jsoup/select/b;->c:Lorg/jsoup/nodes/Element;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/select/b;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/select/b;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/select/b;->a:I

    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/jsoup/select/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/jsoup/select/b;->c:Lorg/jsoup/nodes/Element;

    .line 7
    .line 8
    check-cast p1, Lorg/jsoup/nodes/Element;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/jsoup/select/b;->b:Lorg/jsoup/select/Evaluator;

    .line 11
    .line 12
    invoke-virtual {v1, v0, p1}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :pswitch_0
    iget-object v0, p0, Lorg/jsoup/select/b;->c:Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    check-cast p1, Lorg/jsoup/nodes/Node;

    .line 20
    .line 21
    iget-object v1, p0, Lorg/jsoup/select/b;->b:Lorg/jsoup/select/Evaluator;

    .line 22
    .line 23
    invoke-virtual {v1, v0, p1}, Lorg/jsoup/select/Evaluator;->b(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Node;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
