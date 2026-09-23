.class public final synthetic Lkotlin/collections/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/collections/b;->c:I

    iput-object p2, p0, Lkotlin/collections/b;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/b;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/collections/b;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->b(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lkotlin/collections/b;->f:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->c([J)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lkotlin/collections/b;->f:Ljava/lang/Object;

    check-cast v0, [Z

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->g([Z)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lkotlin/collections/b;->f:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->d([F)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lkotlin/collections/b;->f:Ljava/lang/Object;

    check-cast v0, [S

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->f([S)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lkotlin/collections/b;->f:Ljava/lang/Object;

    check-cast v0, [C

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->a([C)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lkotlin/collections/b;->f:Ljava/lang/Object;

    check-cast v0, [D

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->e([D)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lkotlin/collections/b;->f:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->i([I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lkotlin/collections/b;->f:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->b([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lkotlin/collections/b;->f:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->h([B)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
