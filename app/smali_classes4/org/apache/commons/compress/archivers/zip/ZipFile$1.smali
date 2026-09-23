.class Lorg/apache/commons/compress/archivers/zip/ZipFile$1;
.super Ljava/util/zip/InflaterInputStream;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ljava/util/zip/Inflater;

.field public final synthetic f:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->f:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    .line 2
    .line 3
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->c:Ljava/util/zip/Inflater;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$1;->c:Ljava/util/zip/Inflater;

    .line 2
    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 12
    .line 13
    .line 14
    throw v1
.end method
