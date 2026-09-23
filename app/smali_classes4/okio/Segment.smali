.class public final Lokio/Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Segment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lokio/Segment;",
        "",
        "Companion",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSegment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Segment.kt\nokio/Segment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1#2:188\n*E\n"
    }
.end annotation


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:Lokio/Segment;

.field public g:Lokio/Segment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Lokio/Segment;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lokio/Segment;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lokio/Segment;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lokio/Segment;->a:[B

    .line 7
    iput p2, p0, Lokio/Segment;->b:I

    .line 8
    iput p3, p0, Lokio/Segment;->c:I

    .line 9
    iput-boolean p4, p0, Lokio/Segment;->d:Z

    .line 10
    iput-boolean p5, p0, Lokio/Segment;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Lokio/Segment;
    .locals 4

    .line 1
    iget-object v0, p0, Lokio/Segment;->f:Lokio/Segment;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v0, v1

    .line 8
    :goto_0
    iget-object v2, p0, Lokio/Segment;->g:Lokio/Segment;

    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lokio/Segment;->f:Lokio/Segment;

    .line 14
    .line 15
    iput-object v3, v2, Lokio/Segment;->f:Lokio/Segment;

    .line 16
    .line 17
    iget-object v2, p0, Lokio/Segment;->f:Lokio/Segment;

    .line 18
    .line 19
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lokio/Segment;->g:Lokio/Segment;

    .line 23
    .line 24
    iput-object v3, v2, Lokio/Segment;->g:Lokio/Segment;

    .line 25
    .line 26
    iput-object v1, p0, Lokio/Segment;->f:Lokio/Segment;

    .line 27
    .line 28
    iput-object v1, p0, Lokio/Segment;->g:Lokio/Segment;

    .line 29
    .line 30
    return-object v0
.end method

.method public final b(Lokio/Segment;)V
    .locals 1

    .line 1
    const-string v0, "segment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p0, p1, Lokio/Segment;->g:Lokio/Segment;

    .line 7
    .line 8
    iget-object v0, p0, Lokio/Segment;->f:Lokio/Segment;

    .line 9
    .line 10
    iput-object v0, p1, Lokio/Segment;->f:Lokio/Segment;

    .line 11
    .line 12
    iget-object v0, p0, Lokio/Segment;->f:Lokio/Segment;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, v0, Lokio/Segment;->g:Lokio/Segment;

    .line 18
    .line 19
    iput-object p1, p0, Lokio/Segment;->f:Lokio/Segment;

    .line 20
    .line 21
    return-void
.end method

.method public final c()Lokio/Segment;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lokio/Segment;->d:Z

    .line 3
    .line 4
    new-instance v1, Lokio/Segment;

    .line 5
    .line 6
    iget v3, p0, Lokio/Segment;->b:I

    .line 7
    .line 8
    iget v4, p0, Lokio/Segment;->c:I

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    iget-object v2, p0, Lokio/Segment;->a:[B

    .line 13
    .line 14
    invoke-direct/range {v1 .. v6}, Lokio/Segment;-><init>([BIIZZ)V

    .line 15
    .line 16
    .line 17
    return-object v1
.end method

.method public final d(Lokio/Segment;I)V
    .locals 5

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p1, Lokio/Segment;->e:Z

    .line 7
    .line 8
    iget-object v1, p1, Lokio/Segment;->a:[B

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget v0, p1, Lokio/Segment;->c:I

    .line 13
    .line 14
    add-int v2, v0, p2

    .line 15
    .line 16
    const/16 v3, 0x2000

    .line 17
    .line 18
    if-le v2, v3, :cond_2

    .line 19
    .line 20
    iget-boolean v4, p1, Lokio/Segment;->d:Z

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    iget v4, p1, Lokio/Segment;->b:I

    .line 25
    .line 26
    sub-int/2addr v2, v4

    .line 27
    if-gt v2, v3, :cond_0

    .line 28
    .line 29
    invoke-static {v1, v1, v4, v0}, Lkotlin/collections/ArraysKt;->n([B[BII)V

    .line 30
    .line 31
    .line 32
    iget v0, p1, Lokio/Segment;->c:I

    .line 33
    .line 34
    iget v2, p1, Lokio/Segment;->b:I

    .line 35
    .line 36
    sub-int/2addr v0, v2

    .line 37
    iput v0, p1, Lokio/Segment;->c:I

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput v0, p1, Lokio/Segment;->b:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    :goto_0
    iget v0, p1, Lokio/Segment;->c:I

    .line 56
    .line 57
    iget v2, p0, Lokio/Segment;->b:I

    .line 58
    .line 59
    add-int v3, v2, p2

    .line 60
    .line 61
    iget-object v4, p0, Lokio/Segment;->a:[B

    .line 62
    .line 63
    invoke-static {v4, v1, v0, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 64
    .line 65
    .line 66
    iget v0, p1, Lokio/Segment;->c:I

    .line 67
    .line 68
    add-int/2addr v0, p2

    .line 69
    iput v0, p1, Lokio/Segment;->c:I

    .line 70
    .line 71
    iget p1, p0, Lokio/Segment;->b:I

    .line 72
    .line 73
    add-int/2addr p1, p2

    .line 74
    iput p1, p0, Lokio/Segment;->b:I

    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    const-string p2, "only owner can write"

    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1
.end method
