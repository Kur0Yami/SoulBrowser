.class public final Lj$/util/stream/w3;
.super Lj$/util/stream/v3;
.source "SourceFile"


# instance fields
.field public final synthetic h:Ljava/util/function/LongBinaryOperator;

.field public final synthetic i:J


# direct methods
.method public constructor <init>(Lj$/util/stream/d7;Ljava/util/function/LongBinaryOperator;J)V
    .locals 0

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p2, p0, Lj$/util/stream/w3;->h:Ljava/util/function/LongBinaryOperator;

    iput-wide p3, p0, Lj$/util/stream/w3;->i:J

    return-void
.end method


# virtual methods
.method public final u0()Lj$/util/stream/q4;
    .locals 4

    .line 487
    new-instance v0, Lj$/util/stream/o4;

    iget-wide v1, p0, Lj$/util/stream/w3;->i:J

    iget-object v3, p0, Lj$/util/stream/w3;->h:Ljava/util/function/LongBinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/o4;-><init>(JLjava/util/function/LongBinaryOperator;)V

    return-object v0
.end method
