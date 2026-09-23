.class public final synthetic Lorg/jsoup/select/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jsoup/select/g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lorg/jsoup/select/g;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :pswitch_0
    new-instance v0, Lorg/jsoup/select/Elements;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_1
    new-instance v0, Lorg/jsoup/select/Nodes;

    .line 19
    .line 20
    invoke-direct {v0}, Lorg/jsoup/select/Nodes;-><init>()V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :pswitch_2
    sget-object v0, Lorg/jsoup/select/StructuralEvaluator$Has;->e:Lorg/jsoup/internal/SoftPool;

    .line 25
    .line 26
    new-instance v0, Lorg/jsoup/nodes/NodeIterator;

    .line 27
    .line 28
    new-instance v1, Lorg/jsoup/nodes/TextNode;

    .line 29
    .line 30
    const-string v2, ""

    .line 31
    .line 32
    invoke-direct {v1, v2}, Lorg/jsoup/nodes/TextNode;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-class v2, Lorg/jsoup/nodes/Node;

    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/NodeIterator;-><init>(Lorg/jsoup/nodes/Node;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
