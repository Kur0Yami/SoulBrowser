.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reference"
.end annotation


# static fields
.field public static final f:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;


# instance fields
.field public final a:Landroidx/emoji2/text/flatbuffer/ReadBuf;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    .line 2
    .line 3
    sget-object v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a:Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->f:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V
    .locals 8

    and-int/lit8 v0, p4, 0x3

    const/4 v1, 0x1

    shl-int v6, v1, v0

    shr-int/lit8 v7, p4, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 1
    invoke-direct/range {v2 .. v7}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;IIII)V

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    .line 4
    iput p2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    .line 5
    iput p3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    .line 6
    iput p4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    .line 7
    iput p5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    .line 3
    .line 4
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    .line 7
    .line 8
    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    .line 9
    .line 10
    if-ne v4, v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    .line 13
    .line 14
    invoke-static {v3, v2, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sub-int v2, v0, v1

    .line 19
    .line 20
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    long-to-int v1, v1

    .line 25
    invoke-interface {v3, v0, v1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->a(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_0
    const/4 v0, 0x4

    .line 31
    if-ne v4, v0, :cond_2

    .line 32
    .line 33
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    move v1, v0

    .line 38
    :goto_0
    invoke-interface {v3, v1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    sub-int/2addr v1, v0

    .line 45
    invoke-interface {v3, v0, v1}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->a(II)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-string v0, ""

    .line 54
    .line 55
    return-object v0
.end method

.method public final b()J
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    .line 5
    .line 6
    iget v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    .line 7
    .line 8
    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    .line 9
    .line 10
    if-ne v4, v0, :cond_0

    .line 11
    .line 12
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    if-eq v4, v0, :cond_8

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-eq v4, v0, :cond_7

    .line 22
    .line 23
    const/16 v0, 0xa

    .line 24
    .line 25
    if-eq v4, v0, :cond_6

    .line 26
    .line 27
    const/16 v0, 0x1a

    .line 28
    .line 29
    if-eq v4, v0, :cond_5

    .line 30
    .line 31
    const/4 v0, 0x5

    .line 32
    if-eq v4, v0, :cond_4

    .line 33
    .line 34
    const/4 v0, 0x6

    .line 35
    iget v5, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    .line 36
    .line 37
    if-eq v4, v0, :cond_3

    .line 38
    .line 39
    const/4 v0, 0x7

    .line 40
    if-eq v4, v0, :cond_2

    .line 41
    .line 42
    const/16 v0, 0x8

    .line 43
    .line 44
    if-eq v4, v0, :cond_1

    .line 45
    .line 46
    const-wide/16 v0, 0x0

    .line 47
    .line 48
    return-wide v0

    .line 49
    :cond_1
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v2, v0, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    double-to-long v0, v0

    .line 58
    return-wide v0

    .line 59
    :cond_2
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {v2, v0, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    return-wide v0

    .line 68
    :cond_3
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    invoke-static {v2, v0, v5}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    return-wide v0

    .line 77
    :cond_4
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    return-wide v0

    .line 86
    :cond_5
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    long-to-int v0, v0

    .line 91
    int-to-long v0, v0

    .line 92
    return-wide v0

    .line 93
    :cond_6
    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget v0, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->d:I

    .line 98
    .line 99
    int-to-long v0, v0

    .line 100
    return-wide v0

    .line 101
    :cond_7
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    double-to-long v0, v0

    .line 106
    return-wide v0

    .line 107
    :cond_8
    invoke-static {v2, v1, v3}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    return-wide v0
.end method

.method public final c()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
    .locals 8

    .line 1
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    .line 8
    .line 9
    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    .line 10
    .line 11
    const/16 v5, 0xa

    .line 12
    .line 13
    if-eq v4, v5, :cond_5

    .line 14
    .line 15
    const/16 v6, 0x9

    .line 16
    .line 17
    if-ne v4, v6, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v6, 0xf

    .line 21
    .line 22
    if-ne v4, v6, :cond_1

    .line 23
    .line 24
    new-instance v4, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    .line 25
    .line 26
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x4

    .line 31
    invoke-direct {v4, v3, v1, v0, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    .line 32
    .line 33
    .line 34
    return-object v4

    .line 35
    :cond_1
    const/16 v7, 0xb

    .line 36
    .line 37
    if-lt v4, v7, :cond_2

    .line 38
    .line 39
    if-le v4, v6, :cond_3

    .line 40
    .line 41
    :cond_2
    const/16 v6, 0x24

    .line 42
    .line 43
    if-ne v4, v6, :cond_4

    .line 44
    .line 45
    :cond_3
    new-instance v6, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;

    .line 46
    .line 47
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    sub-int/2addr v4, v5

    .line 52
    invoke-direct {v6, v3, v1, v0, v4}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$TypedVector;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    .line 53
    .line 54
    .line 55
    return-object v6

    .line 56
    :cond_4
    sget-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->e:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_5
    :goto_0
    new-instance v4, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    .line 60
    .line 61
    invoke-static {v3, v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-direct {v4, v3, v1, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 66
    .line 67
    .line 68
    return-object v4
.end method

.method public final d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/16 v2, 0x24

    .line 6
    .line 7
    iget v3, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->e:I

    .line 8
    .line 9
    if-eq v3, v2, :cond_17

    .line 10
    .line 11
    const/16 v4, 0x8

    .line 12
    .line 13
    const/4 v5, 0x7

    .line 14
    const/4 v6, 0x6

    .line 15
    const/4 v7, 0x5

    .line 16
    const/4 v8, 0x2

    .line 17
    const/4 v9, 0x3

    .line 18
    const/16 v12, 0x1a

    .line 19
    .line 20
    const/4 v13, 0x1

    .line 21
    const/16 v14, 0x22

    .line 22
    .line 23
    iget v15, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d:I

    .line 24
    .line 25
    const-wide/16 v16, 0x0

    .line 26
    .line 27
    iget v10, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c:I

    .line 28
    .line 29
    iget v11, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b:I

    .line 30
    .line 31
    iget-object v2, v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    .line 32
    .line 33
    packed-switch v3, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :pswitch_0
    const/4 v4, 0x0

    .line 38
    if-ne v3, v12, :cond_1

    .line 39
    .line 40
    invoke-interface {v2, v11}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v13, v4

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    cmp-long v2, v2, v16

    .line 54
    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    :goto_0
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :pswitch_1
    const/16 v4, 0x19

    .line 62
    .line 63
    if-ne v3, v4, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    if-ne v3, v7, :cond_3

    .line 67
    .line 68
    :goto_1
    new-instance v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    .line 69
    .line 70
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-direct {v3, v2, v4, v15}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    sget-object v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->e:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;

    .line 79
    .line 80
    :goto_2
    invoke-virtual {v3, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Blob;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :pswitch_2
    new-instance v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$FlexBufferException;

    .line 85
    .line 86
    const-string v2, "not_implemented:"

    .line 87
    .line 88
    invoke-static {v3, v2}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v1

    .line 96
    :pswitch_3
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :pswitch_4
    const/16 v4, 0x9

    .line 105
    .line 106
    if-ne v3, v4, :cond_4

    .line 107
    .line 108
    new-instance v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    .line 109
    .line 110
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    invoke-direct {v3, v2, v4, v15}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    sget-object v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->f:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;

    .line 119
    .line 120
    :goto_3
    invoke-virtual {v3, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Map;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    return-object v1

    .line 124
    :pswitch_5
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    :pswitch_6
    const/4 v4, 0x4

    .line 139
    if-ne v3, v4, :cond_5

    .line 140
    .line 141
    new-instance v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    .line 142
    .line 143
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    invoke-direct {v3, v2, v4, v15}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_5
    sget-object v3, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->d:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;

    .line 152
    .line 153
    :goto_4
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Key;->a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    return-object v1

    .line 163
    :pswitch_7
    if-ne v3, v9, :cond_6

    .line 164
    .line 165
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    .line 166
    .line 167
    .line 168
    move-result-wide v2

    .line 169
    goto :goto_8

    .line 170
    :cond_6
    if-eq v3, v13, :cond_d

    .line 171
    .line 172
    if-eq v3, v8, :cond_c

    .line 173
    .line 174
    if-eq v3, v7, :cond_b

    .line 175
    .line 176
    if-eq v3, v6, :cond_a

    .line 177
    .line 178
    if-eq v3, v5, :cond_9

    .line 179
    .line 180
    if-eq v3, v4, :cond_8

    .line 181
    .line 182
    const/16 v4, 0xa

    .line 183
    .line 184
    if-eq v3, v4, :cond_7

    .line 185
    .line 186
    if-eq v3, v12, :cond_c

    .line 187
    .line 188
    const-wide/16 v2, 0x0

    .line 189
    .line 190
    goto :goto_8

    .line 191
    :cond_7
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iget v2, v2, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->d:I

    .line 196
    .line 197
    :goto_5
    int-to-double v2, v2

    .line 198
    goto :goto_8

    .line 199
    :cond_8
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    invoke-static {v2, v3, v15}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    .line 204
    .line 205
    .line 206
    move-result-wide v2

    .line 207
    goto :goto_8

    .line 208
    :cond_9
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-static {v2, v3, v15}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 213
    .line 214
    .line 215
    move-result-wide v2

    .line 216
    :goto_6
    long-to-double v2, v2

    .line 217
    goto :goto_8

    .line 218
    :cond_a
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    invoke-static {v2, v3, v15}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 223
    .line 224
    .line 225
    move-result-wide v2

    .line 226
    :goto_7
    long-to-int v2, v2

    .line 227
    goto :goto_5

    .line 228
    :cond_b
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 233
    .line 234
    .line 235
    move-result-wide v2

    .line 236
    goto :goto_8

    .line 237
    :cond_c
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 238
    .line 239
    .line 240
    move-result-wide v2

    .line 241
    goto :goto_6

    .line 242
    :cond_d
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 243
    .line 244
    .line 245
    move-result-wide v2

    .line 246
    goto :goto_7

    .line 247
    :goto_8
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    return-object v1

    .line 251
    :pswitch_8
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->b()J

    .line 252
    .line 253
    .line 254
    move-result-wide v2

    .line 255
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    return-object v1

    .line 259
    :pswitch_9
    if-ne v3, v13, :cond_e

    .line 260
    .line 261
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 262
    .line 263
    .line 264
    move-result-wide v10

    .line 265
    goto :goto_b

    .line 266
    :cond_e
    if-eq v3, v8, :cond_16

    .line 267
    .line 268
    if-eq v3, v9, :cond_15

    .line 269
    .line 270
    if-eq v3, v7, :cond_14

    .line 271
    .line 272
    if-eq v3, v6, :cond_13

    .line 273
    .line 274
    if-eq v3, v5, :cond_12

    .line 275
    .line 276
    if-eq v3, v4, :cond_11

    .line 277
    .line 278
    const/16 v4, 0xa

    .line 279
    .line 280
    if-eq v3, v4, :cond_10

    .line 281
    .line 282
    if-eq v3, v12, :cond_f

    .line 283
    .line 284
    :catch_0
    move-wide/from16 v10, v16

    .line 285
    .line 286
    goto :goto_b

    .line 287
    :cond_f
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 288
    .line 289
    .line 290
    move-result-wide v2

    .line 291
    long-to-int v2, v2

    .line 292
    :goto_9
    int-to-long v10, v2

    .line 293
    goto :goto_b

    .line 294
    :cond_10
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    iget v2, v2, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->d:I

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_11
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    invoke-static {v2, v3, v15}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    .line 306
    .line 307
    .line 308
    move-result-wide v2

    .line 309
    :goto_a
    double-to-long v10, v2

    .line 310
    goto :goto_b

    .line 311
    :cond_12
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    invoke-static {v2, v3, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 316
    .line 317
    .line 318
    move-result-wide v10

    .line 319
    goto :goto_b

    .line 320
    :cond_13
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    invoke-static {v2, v3, v15}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->c(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 325
    .line 326
    .line 327
    move-result-wide v10

    .line 328
    goto :goto_b

    .line 329
    :cond_14
    :try_start_0
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->a()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 334
    .line 335
    .line 336
    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    goto :goto_b

    .line 338
    :cond_15
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->b(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)D

    .line 339
    .line 340
    .line 341
    move-result-wide v2

    .line 342
    goto :goto_a

    .line 343
    :cond_16
    invoke-static {v2, v11, v10}, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->d(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)J

    .line 344
    .line 345
    .line 346
    move-result-wide v10

    .line 347
    :goto_b
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    return-object v1

    .line 351
    :pswitch_a
    const-string v2, "null"

    .line 352
    .line 353
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    return-object v1

    .line 357
    :cond_17
    :pswitch_b
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->c()Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    return-object v1

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
