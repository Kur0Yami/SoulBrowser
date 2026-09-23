.class public Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;
.super Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/flatbuffer/FlexBuffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vector"
.end annotation


# static fields
.field public static final e:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    .line 2
    .line 3
    sget-object v1, Landroidx/emoji2/text/flatbuffer/FlexBuffers;->a:Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2, v2}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->e:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    const-string v0, "[ "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->d:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Vector;->b(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, p1}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    const-string v1, ", "

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string v0, " ]"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public b(I)Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Sized;->d:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    int-to-long v2, p1

    .line 5
    cmp-long v4, v2, v0

    .line 6
    .line 7
    if-ltz v4, :cond_0

    .line 8
    .line 9
    sget-object p1, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;->f:Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iget v4, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;->b:I

    .line 13
    .line 14
    int-to-long v5, v4

    .line 15
    iget v7, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;->c:I

    .line 16
    .line 17
    int-to-long v8, v7

    .line 18
    mul-long/2addr v0, v8

    .line 19
    add-long/2addr v0, v5

    .line 20
    add-long/2addr v0, v2

    .line 21
    long-to-int v0, v0

    .line 22
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Object;->a:Landroidx/emoji2/text/flatbuffer/ReadBuf;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/emoji2/text/flatbuffer/ReadBuf;->get(I)B

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    and-int/lit16 v0, v0, 0xff

    .line 29
    .line 30
    mul-int/2addr p1, v7

    .line 31
    add-int/2addr p1, v4

    .line 32
    new-instance v2, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;

    .line 33
    .line 34
    invoke-direct {v2, v1, p1, v7, v0}, Landroidx/emoji2/text/flatbuffer/FlexBuffers$Reference;-><init>(Landroidx/emoji2/text/flatbuffer/ReadBuf;III)V

    .line 35
    .line 36
    .line 37
    return-object v2
.end method
