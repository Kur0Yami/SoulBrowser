.class public Lnet/lingala/zip4j/model/LocalFileHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:[B

.field public d:I

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:J

.field public m:Z

.field public n:I

.field public o:[C

.field public p:Ljava/util/ArrayList;

.field public q:Lnet/lingala/zip4j/model/AESExtraDataRecord;

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->n:I

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->f:J

    .line 10
    .line 11
    iput-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->h:J

    .line 12
    .line 13
    return-void
.end method
