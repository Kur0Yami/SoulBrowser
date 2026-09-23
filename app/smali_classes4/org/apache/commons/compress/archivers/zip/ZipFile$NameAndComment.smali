.class final Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NameAndComment"
.end annotation


# instance fields
.field public final a:[B

.field public final b:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->a:[B

    .line 5
    .line 6
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$NameAndComment;->b:[B

    .line 7
    .line 8
    return-void
.end method
