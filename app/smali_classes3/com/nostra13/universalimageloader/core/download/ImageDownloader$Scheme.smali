.class public final enum Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum g:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final enum h:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

.field public static final synthetic i:[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 1
    new-instance v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 2
    .line 3
    const-string v1, "http"

    .line 4
    .line 5
    const-string v2, "HTTP"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 12
    .line 13
    new-instance v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 14
    .line 15
    const-string v2, "https"

    .line 16
    .line 17
    const-string v4, "HTTPS"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->g:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 24
    .line 25
    new-instance v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 26
    .line 27
    const-string v4, "file"

    .line 28
    .line 29
    const-string v6, "FILE"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 36
    .line 37
    const-string v6, "content"

    .line 38
    .line 39
    const-string v8, "CONTENT"

    .line 40
    .line 41
    const/4 v9, 0x3

    .line 42
    invoke-direct {v4, v8, v9, v6}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v6, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 46
    .line 47
    const-string v8, "assets"

    .line 48
    .line 49
    const-string v10, "ASSETS"

    .line 50
    .line 51
    const/4 v11, 0x4

    .line 52
    invoke-direct {v6, v10, v11, v8}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v8, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 56
    .line 57
    const-string v10, "drawable"

    .line 58
    .line 59
    const-string v12, "DRAWABLE"

    .line 60
    .line 61
    const/4 v13, 0x5

    .line 62
    invoke-direct {v8, v12, v13, v10}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v10, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 66
    .line 67
    const-string v12, "image"

    .line 68
    .line 69
    const-string v14, "IMAGE"

    .line 70
    .line 71
    const/4 v15, 0x6

    .line 72
    invoke-direct {v10, v14, v15, v12}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v12, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 76
    .line 77
    const-string v14, "video"

    .line 78
    .line 79
    move/from16 v16, v3

    .line 80
    .line 81
    const-string v3, "VIDEO"

    .line 82
    .line 83
    move/from16 v17, v5

    .line 84
    .line 85
    const/4 v5, 0x7

    .line 86
    invoke-direct {v12, v3, v5, v14}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 90
    .line 91
    const-string v14, "music"

    .line 92
    .line 93
    move/from16 v18, v5

    .line 94
    .line 95
    const-string v5, "MUSIC"

    .line 96
    .line 97
    move/from16 v19, v7

    .line 98
    .line 99
    const/16 v7, 0x8

    .line 100
    .line 101
    invoke-direct {v3, v5, v7, v14}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    new-instance v5, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 105
    .line 106
    const-string v14, "compress"

    .line 107
    .line 108
    move/from16 v20, v7

    .line 109
    .line 110
    const-string v7, "COMPRESS"

    .line 111
    .line 112
    move/from16 v21, v9

    .line 113
    .line 114
    const/16 v9, 0x9

    .line 115
    .line 116
    invoke-direct {v5, v7, v9, v14}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v7, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 120
    .line 121
    const-string v14, "app"

    .line 122
    .line 123
    move/from16 v22, v9

    .line 124
    .line 125
    const-string v9, "APP"

    .line 126
    .line 127
    move/from16 v23, v11

    .line 128
    .line 129
    const/16 v11, 0xa

    .line 130
    .line 131
    invoke-direct {v7, v9, v11, v14}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance v9, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 135
    .line 136
    const-string v14, "blob"

    .line 137
    .line 138
    move/from16 v24, v11

    .line 139
    .line 140
    const-string v11, "BLOB"

    .line 141
    .line 142
    move/from16 v25, v13

    .line 143
    .line 144
    const/16 v13, 0xb

    .line 145
    .line 146
    invoke-direct {v9, v11, v13, v14}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v11, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 150
    .line 151
    const-string v14, ""

    .line 152
    .line 153
    move/from16 v26, v13

    .line 154
    .line 155
    const-string v13, "UNKNOWN"

    .line 156
    .line 157
    move/from16 v27, v15

    .line 158
    .line 159
    const/16 v15, 0xc

    .line 160
    .line 161
    invoke-direct {v11, v13, v15, v14}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    .line 163
    .line 164
    sput-object v11, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->h:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 165
    .line 166
    const/16 v13, 0xd

    .line 167
    .line 168
    new-array v13, v13, [Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 169
    .line 170
    aput-object v0, v13, v16

    .line 171
    .line 172
    aput-object v1, v13, v17

    .line 173
    .line 174
    aput-object v2, v13, v19

    .line 175
    .line 176
    aput-object v4, v13, v21

    .line 177
    .line 178
    aput-object v6, v13, v23

    .line 179
    .line 180
    aput-object v8, v13, v25

    .line 181
    .line 182
    aput-object v10, v13, v27

    .line 183
    .line 184
    aput-object v12, v13, v18

    .line 185
    .line 186
    aput-object v3, v13, v20

    .line 187
    .line 188
    aput-object v5, v13, v22

    .line 189
    .line 190
    aput-object v7, v13, v24

    .line 191
    .line 192
    aput-object v9, v13, v26

    .line 193
    .line 194
    aput-object v11, v13, v15

    .line 195
    .line 196
    sput-object v13, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->i:[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 197
    .line 198
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const-string p1, "://"

    .line 5
    .line 6
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    .locals 6

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-static {}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    .line 18
    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v5, v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    return-object v3

    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    sget-object p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->h:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 35
    .line 36
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    .locals 1

    .line 1
    const-class v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    .locals 1

    .line 1
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->i:[Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    .line 8
    .line 9
    return-object v0
.end method
