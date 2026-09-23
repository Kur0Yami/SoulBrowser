.class public final Lj$/util/stream/u8;
.super Lj$/util/stream/h5;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/g9;


# direct methods
.method public constructor <init>(Lj$/util/stream/v8;Lj$/util/stream/n5;Z)V
    .locals 0

    .line 446
    invoke-direct {p0, p2}, Lj$/util/stream/h5;-><init>(Lj$/util/stream/n5;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    const/4 v0, 0x0

    .line 451
    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    throw v0
.end method

.method public final h()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
