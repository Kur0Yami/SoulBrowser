.class public Lorg/apache/commons/lang3/time/DurationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-wide/32 v0, -0x80000000

    .line 2
    .line 3
    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-wide/32 v1, 0x7fffffff

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lorg/apache/commons/lang3/LongRange;

    .line 16
    .line 17
    invoke-direct {v2, v0, v1}, Lorg/apache/commons/lang3/Range;-><init>(Ljava/lang/Number;Ljava/lang/Number;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
