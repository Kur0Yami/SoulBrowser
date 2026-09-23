.class Lorg/apache/commons/compress/archivers/sevenz/Coders;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/sevenz/Coders$DummyByteAddingInputStream;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$BZIP2Decoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$LZMADecoder;,
        Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/Coders$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$CopyDecoder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->c:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$LZMADecoder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->f:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/LZMA2Decoder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->g:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$DeflateDecoder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->h:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 42
    .line 43
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BZIP2Decoder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->i:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/AES256SHA256Decoder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->j:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->k:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 72
    .line 73
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->l:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 89
    .line 90
    .line 91
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->m:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 92
    .line 93
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 99
    .line 100
    .line 101
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->n:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 102
    .line 103
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->o:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 112
    .line 113
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/Coders$BCJDecoder;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->p:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 122
    .line 123
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/DeltaDecoder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 129
    .line 130
    .line 131
    sget-object v2, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->q:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 132
    .line 133
    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    return-void
.end method
