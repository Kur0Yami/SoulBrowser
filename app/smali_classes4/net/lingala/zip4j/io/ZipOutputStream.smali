.class public Lnet/lingala/zip4j/io/ZipOutputStream;
.super Lnet/lingala/zip4j/io/DeflaterOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/SplitOutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->c:Lnet/lingala/zip4j/io/SplitOutputStream;

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    new-instance p2, Lnet/lingala/zip4j/model/ZipModel;

    .line 9
    .line 10
    invoke-direct {p2}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->k:Lnet/lingala/zip4j/model/ZipModel;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput-object p2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->k:Lnet/lingala/zip4j/model/ZipModel;

    .line 17
    .line 18
    :goto_0
    iget-object p2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->k:Lnet/lingala/zip4j/model/ZipModel;

    .line 19
    .line 20
    iget-object v0, p2, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p2, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p2, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    new-instance v0, Lnet/lingala/zip4j/model/CentralDirectory;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p2, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 41
    .line 42
    :cond_2
    iget-object p2, p2, Lnet/lingala/zip4j/model/ZipModel;->f:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 43
    .line 44
    iget-object v0, p2, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p2, Lnet/lingala/zip4j/model/CentralDirectory;->a:Ljava/util/ArrayList;

    .line 54
    .line 55
    :cond_3
    iget-object p2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->k:Lnet/lingala/zip4j/model/ZipModel;

    .line 56
    .line 57
    iget-object v0, p2, Lnet/lingala/zip4j/model/ZipModel;->c:Ljava/util/ArrayList;

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p2, Lnet/lingala/zip4j/model/ZipModel;->c:Ljava/util/ArrayList;

    .line 67
    .line 68
    :cond_4
    iget-wide p1, p1, Lnet/lingala/zip4j/io/SplitOutputStream;->f:J

    .line 69
    .line 70
    const-wide/16 v0, -0x1

    .line 71
    .line 72
    cmp-long v0, p1, v0

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->k:Lnet/lingala/zip4j/model/ZipModel;

    .line 77
    .line 78
    const/4 v1, 0x1

    .line 79
    iput-boolean v1, v0, Lnet/lingala/zip4j/model/ZipModel;->j:Z

    .line 80
    .line 81
    iput-wide p1, v0, Lnet/lingala/zip4j/model/ZipModel;->k:J

    .line 82
    .line 83
    :cond_5
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->k:Lnet/lingala/zip4j/model/ZipModel;

    .line 84
    .line 85
    iget-object p1, p1, Lnet/lingala/zip4j/model/ZipModel;->g:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    .line 86
    .line 87
    const-wide/32 v0, 0x6054b50

    .line 88
    .line 89
    .line 90
    iput-wide v0, p1, Lnet/lingala/zip4j/model/EndCentralDirRecord;->a:J

    .line 91
    .line 92
    new-instance p1, Ljava/util/zip/CRC32;

    .line 93
    .line 94
    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->m:Ljava/util/zip/CRC32;

    .line 98
    .line 99
    const-wide/16 p1, 0x0

    .line 100
    .line 101
    iput-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->l:J

    .line 102
    .line 103
    iput-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->n:J

    .line 104
    .line 105
    const/16 p1, 0x10

    .line 106
    .line 107
    new-array p1, p1, [B

    .line 108
    .line 109
    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->o:[B

    .line 110
    .line 111
    const/4 p1, 0x0

    .line 112
    iput p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->p:I

    .line 113
    .line 114
    new-instance p2, Ljava/util/zip/Deflater;

    .line 115
    .line 116
    invoke-direct {p2}, Ljava/util/zip/Deflater;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object p2, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->r:Ljava/util/zip/Deflater;

    .line 120
    .line 121
    const/16 p2, 0x1000

    .line 122
    .line 123
    new-array p2, p2, [B

    .line 124
    .line 125
    iput-object p2, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->q:[B

    .line 126
    .line 127
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/DeflaterOutputStream;->s:Z

    .line 128
    .line 129
    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 3

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    .line 3
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/ZipOutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    .line 4
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->m:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 5
    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/DeflaterOutputStream;->write([BII)V

    return-void
.end method
