.class public final synthetic Lcom/google/common/collect/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/google/common/collect/g;->c:I

    iput-object p1, p0, Lcom/google/common/collect/g;->g:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    iput-object p2, p0, Lcom/google/common/collect/g;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/g;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/collect/g;->g:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->j:Lcom/google/common/collect/f;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/common/collect/f;->f:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/google/common/net/a;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/common/net/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/g;->g:Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    .line 20
    .line 21
    check-cast v0, Lcom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->j:Lcom/google/common/collect/f;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/google/common/collect/f;->f:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lcom/google/common/net/a;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/google/common/net/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
