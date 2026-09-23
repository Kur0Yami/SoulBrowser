.class public final synthetic Lkotlin/collections/unsigned/a;
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
    iput p1, p0, Lkotlin/collections/unsigned/a;->c:I

    iput-object p2, p0, Lkotlin/collections/unsigned/a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/collections/unsigned/a;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkotlin/collections/unsigned/a;->f:Ljava/lang/Object;

    check-cast v0, [S

    invoke-static {v0}, Lkotlin/collections/unsigned/UArraysKt___UArraysKt;->a([S)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lkotlin/collections/unsigned/a;->f:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Lkotlin/collections/unsigned/UArraysKt___UArraysKt;->c([B)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lkotlin/collections/unsigned/a;->f:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0}, Lkotlin/collections/unsigned/UArraysKt___UArraysKt;->d([J)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lkotlin/collections/unsigned/a;->f:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0}, Lkotlin/collections/unsigned/UArraysKt___UArraysKt;->b([I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
