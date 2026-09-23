.class public final synthetic Lcom/google/common/collect/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;
.implements Lcom/google/common/collect/Maps$EntryTransformer;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/common/collect/f;->c:I

    iput-object p2, p0, Lcom/google/common/collect/f;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/f;->c:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/common/collect/f;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/google/common/net/a;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/google/common/net/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :sswitch_0
    iget-object p1, p0, Lcom/google/common/collect/f;->f:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Lcom/google/common/base/Function;

    .line 18
    .line 19
    invoke-interface {p1, p2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/collect/f;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    .line 27
    .line 28
    check-cast p2, Ljava/util/Collection;

    .line 29
    .line 30
    invoke-virtual {v0, p2, p1}, Lcom/google/common/collect/Multimaps$TransformedEntriesMultimap;->f(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/common/collect/f;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/f;->f:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/f;->f:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/google/common/collect/Synchronized$SynchronizedTable;

    .line 18
    .line 19
    check-cast p1, Ljava/util/Map;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->f:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v1, Lcom/google/common/collect/Synchronized$SynchronizedMap;

    .line 24
    .line 25
    invoke-direct {v1, p1, v0}, Lcom/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :pswitch_2
    iget-object v0, p0, Lcom/google/common/collect/f;->f:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lcom/google/common/collect/StandardTable;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable;->g(Ljava/lang/Object;)Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :pswitch_3
    iget-object v0, p0, Lcom/google/common/collect/f;->f:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/google/common/collect/Maps$EntryTransformer;

    .line 41
    .line 42
    check-cast p1, Ljava/util/Map$Entry;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/google/common/collect/Maps$9;

    .line 51
    .line 52
    invoke-direct {v1, p1, v0}, Lcom/google/common/collect/Maps$9;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/Maps$EntryTransformer;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
