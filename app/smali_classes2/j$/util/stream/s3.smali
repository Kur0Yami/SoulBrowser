.class public Lj$/util/stream/s3;
.super Lj$/util/stream/u3;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/stream/b2;Ljava/lang/Object;)V
    .locals 0

    .line 2112
    invoke-direct {p0, p1}, Lj$/util/stream/u3;-><init>(Lj$/util/stream/c2;)V

    .line 2113
    iput-object p2, p0, Lj$/util/stream/s3;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/s3;Lj$/util/stream/b2;I)V
    .locals 0

    .line 2117
    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/u3;-><init>(Lj$/util/stream/u3;Lj$/util/stream/c2;I)V

    .line 2118
    iget-object p1, p1, Lj$/util/stream/s3;->c:Ljava/lang/Object;

    iput-object p1, p0, Lj$/util/stream/s3;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2128
    iget-object v0, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/c2;

    check-cast v0, Lj$/util/stream/b2;

    iget-object v1, p0, Lj$/util/stream/s3;->c:Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/u3;->b:I

    invoke-interface {v0, v2, v1}, Lj$/util/stream/b2;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final b(II)Lj$/util/stream/u3;
    .locals 2

    .line 2123
    new-instance v0, Lj$/util/stream/s3;

    iget-object v1, p0, Lj$/util/stream/u3;->a:Lj$/util/stream/c2;

    check-cast v1, Lj$/util/stream/b2;

    invoke-interface {v1, p1}, Lj$/util/stream/b2;->a(I)Lj$/util/stream/b2;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/s3;-><init>(Lj$/util/stream/s3;Lj$/util/stream/b2;I)V

    return-object v0
.end method
