.class Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public final p:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->c:I

    .line 8
    .line 9
    const-wide/16 v1, -0x1

    .line 10
    .line 11
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->f:J

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->g:I

    .line 15
    .line 16
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->h:I

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->i:J

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->k:Lorg/apache/commons/compress/archivers/zip/UnparseableExtraFieldData;

    .line 24
    .line 25
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->l:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 28
    .line 29
    invoke-direct {v1}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->m:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->g(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->p:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->p:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 11
    .line 12
    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->a:J

    .line 13
    .line 14
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->p:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 15
    .line 16
    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->a:J

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iget-wide v2, v0, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->b:J

    .line 23
    .line 24
    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->b:J

    .line 25
    .line 26
    cmp-long p1, v2, v4

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    invoke-super {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x3

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->p:Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    .line 8
    .line 9
    iget-wide v1, v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->a:J

    .line 10
    .line 11
    const-wide/32 v3, 0x7fffffff

    .line 12
    .line 13
    .line 14
    rem-long/2addr v1, v3

    .line 15
    long-to-int v1, v1

    .line 16
    add-int/2addr v0, v1

    .line 17
    return v0
.end method
