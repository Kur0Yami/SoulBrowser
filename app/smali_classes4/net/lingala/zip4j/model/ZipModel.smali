.class public Lnet/lingala/zip4j/model/ZipModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public c:Ljava/util/ArrayList;

.field public f:Lnet/lingala/zip4j/model/CentralDirectory;

.field public g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

.field public h:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

.field public i:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

.field public j:Z

.field public k:J

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->k:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
