.class public final synthetic Lkotlin/streams/jdk8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/streams/jdk8/a;->c:I

    iput-object p2, p0, Lkotlin/streams/jdk8/a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/streams/jdk8/a;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/streams/jdk8/a;->f:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lorg/jsoup/internal/StringUtil;->a:[Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Lorg/jsoup/internal/StringUtil$StringJoiner;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/jsoup/internal/StringUtil$StringJoiner;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    check-cast v1, Lkotlin/sequences/Sequence;

    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/streams/jdk8/StreamsKt;->a(Lkotlin/sequences/Sequence;)Lj$/util/Spliterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
