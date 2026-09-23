.class public final enum Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field public static final synthetic f:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 2
    .line 3
    const-string v1, "WHITEOUT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 10
    .line 11
    const-string v3, "SOCKET"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 18
    .line 19
    const-string v5, "LINK"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    new-instance v5, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 26
    .line 27
    const-string v7, "FILE"

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance v7, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 34
    .line 35
    const-string v9, "BLKDEV"

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    new-instance v9, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 42
    .line 43
    const-string v11, "DIRECTORY"

    .line 44
    .line 45
    const/4 v12, 0x5

    .line 46
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v9, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->c:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 50
    .line 51
    new-instance v11, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 52
    .line 53
    const-string v13, "CHRDEV"

    .line 54
    .line 55
    const/4 v14, 0x6

    .line 56
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    new-instance v13, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 60
    .line 61
    const-string v15, "FIFO"

    .line 62
    .line 63
    move/from16 v16, v2

    .line 64
    .line 65
    const/4 v2, 0x7

    .line 66
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    new-instance v15, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 70
    .line 71
    move/from16 v17, v2

    .line 72
    .line 73
    const-string v2, "UNKNOWN"

    .line 74
    .line 75
    move/from16 v18, v4

    .line 76
    .line 77
    const/16 v4, 0x8

    .line 78
    .line 79
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    const/16 v2, 0x9

    .line 83
    .line 84
    new-array v2, v2, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 85
    .line 86
    aput-object v0, v2, v16

    .line 87
    .line 88
    aput-object v1, v2, v18

    .line 89
    .line 90
    aput-object v3, v2, v6

    .line 91
    .line 92
    aput-object v5, v2, v8

    .line 93
    .line 94
    aput-object v7, v2, v10

    .line 95
    .line 96
    aput-object v9, v2, v12

    .line 97
    .line 98
    aput-object v11, v2, v14

    .line 99
    .line 100
    aput-object v13, v2, v17

    .line 101
    .line 102
    aput-object v15, v2, v4

    .line 103
    .line 104
    sput-object v2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->f:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 105
    .line 106
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->f:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    .line 8
    .line 9
    return-object v0
.end method
