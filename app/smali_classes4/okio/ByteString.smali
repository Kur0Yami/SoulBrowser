.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/ByteString$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002:\u0001\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lokio/ByteString;",
        "Ljava/io/Serializable;",
        "",
        "Companion",
        "okio"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString\n+ 2 ByteString.kt\nokio/internal/-ByteString\n+ 3 Util.kt\nokio/-SegmentedByteString\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,364:1\n42#2,7:365\n52#2:372\n55#2:373\n62#2,4:374\n66#2:379\n68#2:381\n74#2,23:382\n102#2,23:405\n129#2,2:428\n131#2,9:431\n143#2:440\n146#2:441\n149#2:442\n152#2:443\n160#2:444\n170#2,3:445\n169#2:448\n183#2,2:449\n188#2:451\n192#2:452\n196#2:453\n200#2:454\n204#2,7:455\n217#2:462\n221#2,8:463\n233#2,4:471\n242#2,5:475\n251#2,6:480\n257#2,9:487\n301#2,8:496\n129#2,2:504\n131#2,9:507\n312#2,9:516\n67#3:378\n73#3:380\n73#3:486\n1#4:430\n1#4:506\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/ByteString\n*L\n66#1:365,7\n71#1:372\n108#1:373\n110#1:374,4\n110#1:379\n110#1:381\n112#1:382,23\n114#1:405,23\n118#1:428,2\n118#1:431,9\n120#1:440\n129#1:441\n131#1:442\n133#1:443\n152#1:444\n159#1:445,3\n159#1:448\n166#1:449,2\n168#1:451\n170#1:452\n172#1:453\n174#1:454\n180#1:455,7\n183#1:462\n186#1:463,8\n188#1:471,4\n190#1:475,5\n192#1:480,6\n192#1:487,9\n194#1:496,8\n194#1:504,2\n194#1:507,9\n194#1:516,9\n110#1:378\n110#1:380\n192#1:486\n118#1:430\n194#1:506\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Lokio/ByteString;


# instance fields
.field public final c:[B

.field public transient f:I

.field public transient g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokio/ByteString;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lokio/ByteString;->h:Lokio/ByteString;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lokio/ByteString;->c:[B

    .line 10
    .line 11
    return-void
.end method

.method public static g(Lokio/ByteString;Lokio/ByteString;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "other"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lokio/ByteString;->h()[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->f([BI)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static k(Lokio/ByteString;Lokio/ByteString;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "other"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lokio/ByteString;->h()[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lokio/ByteString;->j([B)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static synthetic q(Lokio/ByteString;III)Lokio/ByteString;
    .locals 1

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const p2, -0x499602d2

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->p(II)Lokio/ByteString;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 14

    .line 1
    sget-object v0, Lokio/-Base64;->a:[B

    .line 2
    .line 3
    iget-object v1, p0, Lokio/ByteString;->c:[B

    .line 4
    .line 5
    const-string v2, "<this>"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "map"

    .line 11
    .line 12
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    array-length v3, v1

    .line 16
    const/4 v4, 0x2

    .line 17
    add-int/2addr v3, v4

    .line 18
    div-int/lit8 v3, v3, 0x3

    .line 19
    .line 20
    mul-int/lit8 v3, v3, 0x4

    .line 21
    .line 22
    new-array v3, v3, [B

    .line 23
    .line 24
    array-length v5, v1

    .line 25
    array-length v6, v1

    .line 26
    rem-int/lit8 v6, v6, 0x3

    .line 27
    .line 28
    sub-int/2addr v5, v6

    .line 29
    const/4 v6, 0x0

    .line 30
    move v7, v6

    .line 31
    :goto_0
    if-ge v6, v5, :cond_0

    .line 32
    .line 33
    add-int/lit8 v8, v6, 0x1

    .line 34
    .line 35
    aget-byte v9, v1, v6

    .line 36
    .line 37
    add-int/lit8 v10, v6, 0x2

    .line 38
    .line 39
    aget-byte v8, v1, v8

    .line 40
    .line 41
    add-int/lit8 v6, v6, 0x3

    .line 42
    .line 43
    aget-byte v10, v1, v10

    .line 44
    .line 45
    add-int/lit8 v11, v7, 0x1

    .line 46
    .line 47
    and-int/lit16 v12, v9, 0xff

    .line 48
    .line 49
    shr-int/2addr v12, v4

    .line 50
    aget-byte v12, v0, v12

    .line 51
    .line 52
    aput-byte v12, v3, v7

    .line 53
    .line 54
    add-int/lit8 v12, v7, 0x2

    .line 55
    .line 56
    and-int/lit8 v9, v9, 0x3

    .line 57
    .line 58
    shl-int/lit8 v9, v9, 0x4

    .line 59
    .line 60
    and-int/lit16 v13, v8, 0xff

    .line 61
    .line 62
    shr-int/lit8 v13, v13, 0x4

    .line 63
    .line 64
    or-int/2addr v9, v13

    .line 65
    aget-byte v9, v0, v9

    .line 66
    .line 67
    aput-byte v9, v3, v11

    .line 68
    .line 69
    add-int/lit8 v9, v7, 0x3

    .line 70
    .line 71
    and-int/lit8 v8, v8, 0xf

    .line 72
    .line 73
    shl-int/2addr v8, v4

    .line 74
    and-int/lit16 v11, v10, 0xff

    .line 75
    .line 76
    shr-int/lit8 v11, v11, 0x6

    .line 77
    .line 78
    or-int/2addr v8, v11

    .line 79
    aget-byte v8, v0, v8

    .line 80
    .line 81
    aput-byte v8, v3, v12

    .line 82
    .line 83
    add-int/lit8 v7, v7, 0x4

    .line 84
    .line 85
    and-int/lit8 v8, v10, 0x3f

    .line 86
    .line 87
    aget-byte v8, v0, v8

    .line 88
    .line 89
    aput-byte v8, v3, v9

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    array-length v8, v1

    .line 93
    sub-int/2addr v8, v5

    .line 94
    const/4 v5, 0x1

    .line 95
    const/16 v9, 0x3d

    .line 96
    .line 97
    if-eq v8, v5, :cond_2

    .line 98
    .line 99
    if-eq v8, v4, :cond_1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    add-int/lit8 v5, v6, 0x1

    .line 103
    .line 104
    aget-byte v6, v1, v6

    .line 105
    .line 106
    aget-byte v1, v1, v5

    .line 107
    .line 108
    add-int/lit8 v5, v7, 0x1

    .line 109
    .line 110
    and-int/lit16 v8, v6, 0xff

    .line 111
    .line 112
    shr-int/2addr v8, v4

    .line 113
    aget-byte v8, v0, v8

    .line 114
    .line 115
    aput-byte v8, v3, v7

    .line 116
    .line 117
    add-int/lit8 v8, v7, 0x2

    .line 118
    .line 119
    and-int/lit8 v6, v6, 0x3

    .line 120
    .line 121
    shl-int/lit8 v6, v6, 0x4

    .line 122
    .line 123
    and-int/lit16 v10, v1, 0xff

    .line 124
    .line 125
    shr-int/lit8 v10, v10, 0x4

    .line 126
    .line 127
    or-int/2addr v6, v10

    .line 128
    aget-byte v6, v0, v6

    .line 129
    .line 130
    aput-byte v6, v3, v5

    .line 131
    .line 132
    add-int/lit8 v7, v7, 0x3

    .line 133
    .line 134
    and-int/lit8 v1, v1, 0xf

    .line 135
    .line 136
    shl-int/2addr v1, v4

    .line 137
    aget-byte v0, v0, v1

    .line 138
    .line 139
    aput-byte v0, v3, v8

    .line 140
    .line 141
    aput-byte v9, v3, v7

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    aget-byte v1, v1, v6

    .line 145
    .line 146
    add-int/lit8 v5, v7, 0x1

    .line 147
    .line 148
    and-int/lit16 v6, v1, 0xff

    .line 149
    .line 150
    shr-int/lit8 v4, v6, 0x2

    .line 151
    .line 152
    aget-byte v4, v0, v4

    .line 153
    .line 154
    aput-byte v4, v3, v7

    .line 155
    .line 156
    add-int/lit8 v4, v7, 0x2

    .line 157
    .line 158
    and-int/lit8 v1, v1, 0x3

    .line 159
    .line 160
    shl-int/lit8 v1, v1, 0x4

    .line 161
    .line 162
    aget-byte v0, v0, v1

    .line 163
    .line 164
    aput-byte v0, v3, v5

    .line 165
    .line 166
    add-int/lit8 v7, v7, 0x3

    .line 167
    .line 168
    aput-byte v9, v3, v4

    .line 169
    .line 170
    aput-byte v9, v3, v7

    .line 171
    .line 172
    :goto_1
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v0, Ljava/lang/String;

    .line 176
    .line 177
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 178
    .line 179
    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 180
    .line 181
    .line 182
    return-object v0
.end method

.method public final b(Lokio/ByteString;)I
    .locals 9

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/ByteString;->d()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Lokio/ByteString;->d()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_0
    const/4 v5, -0x1

    .line 21
    const/4 v6, 0x1

    .line 22
    if-ge v4, v2, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, v4}, Lokio/ByteString;->i(I)B

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    and-int/lit16 v7, v7, 0xff

    .line 29
    .line 30
    invoke-virtual {p1, v4}, Lokio/ByteString;->i(I)B

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    and-int/lit16 v8, v8, 0xff

    .line 35
    .line 36
    if-ne v7, v8, :cond_0

    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-ge v7, v8, :cond_1

    .line 42
    .line 43
    return v5

    .line 44
    :cond_1
    return v6

    .line 45
    :cond_2
    if-ne v0, v1, :cond_3

    .line 46
    .line 47
    return v3

    .line 48
    :cond_3
    if-ge v0, v1, :cond_4

    .line 49
    .line 50
    return v5

    .line 51
    :cond_4
    return v6
.end method

.method public c(Ljava/lang/String;)Lokio/ByteString;
    .locals 3

    .line 1
    const-string v0, "algorithm"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0}, Lokio/ByteString;->d()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Lokio/ByteString;->c:[B

    .line 16
    .line 17
    invoke-virtual {p1, v2, v0, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v0, Lokio/ByteString;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lokio/ByteString;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lokio/ByteString;->b(Lokio/ByteString;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/ByteString;->c:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lokio/ByteString;->c:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 5
    .line 6
    new-array v1, v1, [C

    .line 7
    .line 8
    array-length v2, v0

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    if-ge v3, v2, :cond_0

    .line 12
    .line 13
    aget-byte v5, v0, v3

    .line 14
    .line 15
    add-int/lit8 v6, v4, 0x1

    .line 16
    .line 17
    shr-int/lit8 v7, v5, 0x4

    .line 18
    .line 19
    and-int/lit8 v7, v7, 0xf

    .line 20
    .line 21
    sget-object v8, Lokio/internal/-ByteString;->a:[C

    .line 22
    .line 23
    aget-char v7, v8, v7

    .line 24
    .line 25
    aput-char v7, v1, v4

    .line 26
    .line 27
    add-int/lit8 v4, v4, 0x2

    .line 28
    .line 29
    and-int/lit8 v5, v5, 0xf

    .line 30
    .line 31
    aget-char v5, v8, v5

    .line 32
    .line 33
    aput-char v5, v1, v6

    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v1}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lokio/ByteString;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lokio/ByteString;

    .line 10
    .line 11
    invoke-virtual {p1}, Lokio/ByteString;->d()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, Lokio/ByteString;->c:[B

    .line 16
    .line 17
    array-length v3, v2

    .line 18
    if-ne v0, v3, :cond_1

    .line 19
    .line 20
    array-length v0, v2

    .line 21
    invoke-virtual {p1, v2, v1, v1, v0}, Lokio/ByteString;->n([BIII)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    :goto_0
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1
    return v1
.end method

.method public f([BI)I
    .locals 4

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokio/ByteString;->c:[B

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    array-length v2, p1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-gt p2, v1, :cond_1

    .line 17
    .line 18
    :goto_0
    array-length v3, p1

    .line 19
    invoke-static {v0, p1, p2, v2, v3}, Lokio/-SegmentedByteString;->a([B[BIII)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    return p2

    .line 26
    :cond_0
    if-eq p2, v1, :cond_1

    .line 27
    .line 28
    add-int/lit8 p2, p2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, -0x1

    .line 32
    return p1
.end method

.method public h()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/ByteString;->c:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lokio/ByteString;->f:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lokio/ByteString;->c:[B

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lokio/ByteString;->f:I

    .line 13
    .line 14
    return v0
.end method

.method public i(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lokio/ByteString;->c:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
    return p1
.end method

.method public j([B)I
    .locals 4

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "<this>"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lokio/ByteString;->d()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lokio/ByteString;->c:[B

    .line 16
    .line 17
    array-length v2, v1

    .line 18
    array-length v3, p1

    .line 19
    sub-int/2addr v2, v3

    .line 20
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    const/4 v2, -0x1

    .line 25
    if-ge v2, v0, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    array-length v3, p1

    .line 29
    invoke-static {v1, p1, v0, v2, v3}, Lokio/-SegmentedByteString;->a([B[BIII)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    return v0

    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return v2
.end method

.method public l(ILokio/ByteString;I)Z
    .locals 2

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokio/ByteString;->c:[B

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p2, v0, v1, p1, p3}, Lokio/ByteString;->n([BIII)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public n([BIII)Z
    .locals 2

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p2, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lokio/ByteString;->c:[B

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    sub-int/2addr v1, p4

    .line 12
    if-gt p2, v1, :cond_0

    .line 13
    .line 14
    if-ltz p3, :cond_0

    .line 15
    .line 16
    array-length v1, p1

    .line 17
    sub-int/2addr v1, p4

    .line 18
    if-gt p3, v1, :cond_0

    .line 19
    .line 20
    invoke-static {v0, p1, p2, p3, p4}, Lokio/-SegmentedByteString;->a([B[BIII)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public o(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Lokio/ByteString;->c:[B

    .line 9
    .line 10
    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public p(II)Lokio/ByteString;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, -0x499602d2

    .line 7
    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lokio/ByteString;->d()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    :cond_0
    if-ltz p1, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lokio/ByteString;->c:[B

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    if-gt p2, v1, :cond_3

    .line 21
    .line 22
    sub-int v1, p2, p1

    .line 23
    .line 24
    if-ltz v1, :cond_2

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    array-length v1, v0

    .line 29
    if-ne p2, v1, :cond_1

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    new-instance v1, Lokio/ByteString;

    .line 33
    .line 34
    invoke-static {v0, p1, p2}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v1, p1}, Lokio/ByteString;-><init>([B)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string p2, "endIndex < beginIndex"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p2, "endIndex > length("

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    array-length p2, v0

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const/16 p2, 0x29

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p2

    .line 80
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    const-string p2, "beginIndex < 0"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public r()Lokio/ByteString;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lokio/ByteString;->c:[B

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_5

    .line 6
    .line 7
    aget-byte v2, v1, v0

    .line 8
    .line 9
    const/16 v3, 0x41

    .line 10
    .line 11
    if-lt v2, v3, :cond_4

    .line 12
    .line 13
    const/16 v4, 0x5a

    .line 14
    .line 15
    if-le v2, v4, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    array-length v5, v1

    .line 19
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v5, "copyOf(...)"

    .line 24
    .line 25
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v5, v0, 0x1

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x20

    .line 31
    .line 32
    int-to-byte v2, v2

    .line 33
    aput-byte v2, v1, v0

    .line 34
    .line 35
    :goto_1
    array-length v0, v1

    .line 36
    if-ge v5, v0, :cond_3

    .line 37
    .line 38
    aget-byte v0, v1, v5

    .line 39
    .line 40
    if-lt v0, v3, :cond_2

    .line 41
    .line 42
    if-le v0, v4, :cond_1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    add-int/lit8 v0, v0, 0x20

    .line 46
    .line 47
    int-to-byte v0, v0

    .line 48
    aput-byte v0, v1, v5

    .line 49
    .line 50
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    new-instance v0, Lokio/ByteString;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_5
    return-object p0
.end method

.method public final s()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lokio/ByteString;->g:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lokio/ByteString;->h()[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "<this>"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/String;

    .line 15
    .line 16
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lokio/ByteString;->g:Ljava/lang/String;

    .line 22
    .line 23
    return-object v1

    .line 24
    :cond_0
    return-object v0
.end method

.method public t(Lokio/Buffer;I)V
    .locals 2

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "<this>"

    .line 7
    .line 8
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lokio/ByteString;->c:[B

    .line 15
    .line 16
    invoke-virtual {p1, v0, p2}, Lokio/Buffer;->o([BI)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lokio/ByteString;->c:[B

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    const-string v1, "[size=0]"

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    array-length v2, v1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    :goto_0
    const/16 v8, 0x40

    .line 16
    .line 17
    if-ge v4, v2, :cond_2f

    .line 18
    .line 19
    aget-byte v9, v1, v4

    .line 20
    .line 21
    const v10, 0xfffd

    .line 22
    .line 23
    .line 24
    const/16 v11, 0xa0

    .line 25
    .line 26
    const/16 v12, 0x7f

    .line 27
    .line 28
    const/16 v13, 0x20

    .line 29
    .line 30
    const/16 v14, 0xd

    .line 31
    .line 32
    const/16 v15, 0xa

    .line 33
    .line 34
    const/high16 v3, 0x10000

    .line 35
    .line 36
    const/16 v16, 0x2

    .line 37
    .line 38
    const/16 v17, 0x1

    .line 39
    .line 40
    if-ltz v9, :cond_c

    .line 41
    .line 42
    add-int/lit8 v18, v6, 0x1

    .line 43
    .line 44
    if-ne v6, v8, :cond_1

    .line 45
    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :cond_1
    if-eq v9, v15, :cond_3

    .line 49
    .line 50
    if-eq v9, v14, :cond_3

    .line 51
    .line 52
    if-ltz v9, :cond_2

    .line 53
    .line 54
    if-ge v9, v13, :cond_2

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_2
    if-gt v12, v9, :cond_3

    .line 59
    .line 60
    if-ge v9, v11, :cond_3

    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :cond_3
    if-ne v9, v10, :cond_4

    .line 65
    .line 66
    goto/16 :goto_5

    .line 67
    .line 68
    :cond_4
    if-ge v9, v3, :cond_5

    .line 69
    .line 70
    move/from16 v6, v17

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    move/from16 v6, v16

    .line 74
    .line 75
    :goto_1
    add-int/2addr v5, v6

    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    :goto_2
    move/from16 v6, v18

    .line 79
    .line 80
    if-ge v4, v2, :cond_b

    .line 81
    .line 82
    aget-byte v9, v1, v4

    .line 83
    .line 84
    if-ltz v9, :cond_b

    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    add-int/lit8 v18, v6, 0x1

    .line 89
    .line 90
    if-ne v6, v8, :cond_6

    .line 91
    .line 92
    goto/16 :goto_6

    .line 93
    .line 94
    :cond_6
    if-eq v9, v15, :cond_8

    .line 95
    .line 96
    if-eq v9, v14, :cond_8

    .line 97
    .line 98
    if-ltz v9, :cond_7

    .line 99
    .line 100
    if-ge v9, v13, :cond_7

    .line 101
    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :cond_7
    if-gt v12, v9, :cond_8

    .line 105
    .line 106
    if-ge v9, v11, :cond_8

    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :cond_8
    if-ne v9, v10, :cond_9

    .line 111
    .line 112
    goto/16 :goto_5

    .line 113
    .line 114
    :cond_9
    if-ge v9, v3, :cond_a

    .line 115
    .line 116
    move/from16 v6, v17

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_a
    move/from16 v6, v16

    .line 120
    .line 121
    :goto_3
    add-int/2addr v5, v6

    .line 122
    goto :goto_2

    .line 123
    :cond_b
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_c
    shr-int/lit8 v7, v9, 0x5

    .line 127
    .line 128
    const/4 v3, -0x2

    .line 129
    const/16 v10, 0x80

    .line 130
    .line 131
    if-ne v7, v3, :cond_15

    .line 132
    .line 133
    add-int/lit8 v3, v4, 0x1

    .line 134
    .line 135
    if-gt v2, v3, :cond_d

    .line 136
    .line 137
    if-ne v6, v8, :cond_2e

    .line 138
    .line 139
    goto/16 :goto_6

    .line 140
    .line 141
    :cond_d
    aget-byte v3, v1, v3

    .line 142
    .line 143
    and-int/lit16 v7, v3, 0xc0

    .line 144
    .line 145
    if-ne v7, v10, :cond_14

    .line 146
    .line 147
    xor-int/lit16 v3, v3, 0xf80

    .line 148
    .line 149
    shl-int/lit8 v7, v9, 0x6

    .line 150
    .line 151
    xor-int/2addr v3, v7

    .line 152
    if-ge v3, v10, :cond_e

    .line 153
    .line 154
    if-ne v6, v8, :cond_2e

    .line 155
    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :cond_e
    add-int/lit8 v7, v6, 0x1

    .line 159
    .line 160
    if-ne v6, v8, :cond_f

    .line 161
    .line 162
    goto/16 :goto_6

    .line 163
    .line 164
    :cond_f
    if-eq v3, v15, :cond_11

    .line 165
    .line 166
    if-eq v3, v14, :cond_11

    .line 167
    .line 168
    if-ltz v3, :cond_10

    .line 169
    .line 170
    if-ge v3, v13, :cond_10

    .line 171
    .line 172
    goto/16 :goto_5

    .line 173
    .line 174
    :cond_10
    if-gt v12, v3, :cond_11

    .line 175
    .line 176
    if-ge v3, v11, :cond_11

    .line 177
    .line 178
    goto/16 :goto_5

    .line 179
    .line 180
    :cond_11
    const v6, 0xfffd

    .line 181
    .line 182
    .line 183
    if-ne v3, v6, :cond_12

    .line 184
    .line 185
    goto/16 :goto_5

    .line 186
    .line 187
    :cond_12
    const/high16 v6, 0x10000

    .line 188
    .line 189
    if-ge v3, v6, :cond_13

    .line 190
    .line 191
    move/from16 v16, v17

    .line 192
    .line 193
    :cond_13
    add-int v5, v5, v16

    .line 194
    .line 195
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 196
    .line 197
    add-int/lit8 v4, v4, 0x2

    .line 198
    .line 199
    :goto_4
    move v6, v7

    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_14
    if-ne v6, v8, :cond_2e

    .line 203
    .line 204
    goto/16 :goto_6

    .line 205
    .line 206
    :cond_15
    shr-int/lit8 v7, v9, 0x4

    .line 207
    .line 208
    const v11, 0xe000

    .line 209
    .line 210
    .line 211
    const v12, 0xd800

    .line 212
    .line 213
    .line 214
    if-ne v7, v3, :cond_20

    .line 215
    .line 216
    add-int/lit8 v3, v4, 0x2

    .line 217
    .line 218
    if-gt v2, v3, :cond_16

    .line 219
    .line 220
    if-ne v6, v8, :cond_2e

    .line 221
    .line 222
    goto/16 :goto_6

    .line 223
    .line 224
    :cond_16
    add-int/lit8 v7, v4, 0x1

    .line 225
    .line 226
    aget-byte v7, v1, v7

    .line 227
    .line 228
    and-int/lit16 v13, v7, 0xc0

    .line 229
    .line 230
    if-ne v13, v10, :cond_1f

    .line 231
    .line 232
    aget-byte v3, v1, v3

    .line 233
    .line 234
    and-int/lit16 v13, v3, 0xc0

    .line 235
    .line 236
    if-ne v13, v10, :cond_1e

    .line 237
    .line 238
    const v10, -0x1e080

    .line 239
    .line 240
    .line 241
    xor-int/2addr v3, v10

    .line 242
    shl-int/lit8 v7, v7, 0x6

    .line 243
    .line 244
    xor-int/2addr v3, v7

    .line 245
    shl-int/lit8 v7, v9, 0xc

    .line 246
    .line 247
    xor-int/2addr v3, v7

    .line 248
    const/16 v7, 0x800

    .line 249
    .line 250
    if-ge v3, v7, :cond_17

    .line 251
    .line 252
    if-ne v6, v8, :cond_2e

    .line 253
    .line 254
    goto/16 :goto_6

    .line 255
    .line 256
    :cond_17
    if-gt v12, v3, :cond_18

    .line 257
    .line 258
    if-ge v3, v11, :cond_18

    .line 259
    .line 260
    if-ne v6, v8, :cond_2e

    .line 261
    .line 262
    goto/16 :goto_6

    .line 263
    .line 264
    :cond_18
    add-int/lit8 v7, v6, 0x1

    .line 265
    .line 266
    if-ne v6, v8, :cond_19

    .line 267
    .line 268
    goto/16 :goto_6

    .line 269
    .line 270
    :cond_19
    if-eq v3, v15, :cond_1b

    .line 271
    .line 272
    if-eq v3, v14, :cond_1b

    .line 273
    .line 274
    if-ltz v3, :cond_1a

    .line 275
    .line 276
    const/16 v6, 0x20

    .line 277
    .line 278
    if-ge v3, v6, :cond_1a

    .line 279
    .line 280
    goto/16 :goto_5

    .line 281
    .line 282
    :cond_1a
    const/16 v6, 0x7f

    .line 283
    .line 284
    if-gt v6, v3, :cond_1b

    .line 285
    .line 286
    const/16 v6, 0xa0

    .line 287
    .line 288
    if-ge v3, v6, :cond_1b

    .line 289
    .line 290
    goto/16 :goto_5

    .line 291
    .line 292
    :cond_1b
    const v6, 0xfffd

    .line 293
    .line 294
    .line 295
    if-ne v3, v6, :cond_1c

    .line 296
    .line 297
    goto/16 :goto_5

    .line 298
    .line 299
    :cond_1c
    const/high16 v6, 0x10000

    .line 300
    .line 301
    if-ge v3, v6, :cond_1d

    .line 302
    .line 303
    move/from16 v16, v17

    .line 304
    .line 305
    :cond_1d
    add-int v5, v5, v16

    .line 306
    .line 307
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 308
    .line 309
    add-int/lit8 v4, v4, 0x3

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_1e
    if-ne v6, v8, :cond_2e

    .line 313
    .line 314
    goto/16 :goto_6

    .line 315
    .line 316
    :cond_1f
    if-ne v6, v8, :cond_2e

    .line 317
    .line 318
    goto/16 :goto_6

    .line 319
    .line 320
    :cond_20
    shr-int/lit8 v7, v9, 0x3

    .line 321
    .line 322
    if-ne v7, v3, :cond_2d

    .line 323
    .line 324
    add-int/lit8 v3, v4, 0x3

    .line 325
    .line 326
    if-gt v2, v3, :cond_21

    .line 327
    .line 328
    if-ne v6, v8, :cond_2e

    .line 329
    .line 330
    goto/16 :goto_6

    .line 331
    .line 332
    :cond_21
    add-int/lit8 v7, v4, 0x1

    .line 333
    .line 334
    aget-byte v7, v1, v7

    .line 335
    .line 336
    and-int/lit16 v13, v7, 0xc0

    .line 337
    .line 338
    if-ne v13, v10, :cond_2c

    .line 339
    .line 340
    add-int/lit8 v13, v4, 0x2

    .line 341
    .line 342
    aget-byte v13, v1, v13

    .line 343
    .line 344
    and-int/lit16 v14, v13, 0xc0

    .line 345
    .line 346
    if-ne v14, v10, :cond_2b

    .line 347
    .line 348
    aget-byte v3, v1, v3

    .line 349
    .line 350
    and-int/lit16 v14, v3, 0xc0

    .line 351
    .line 352
    if-ne v14, v10, :cond_2a

    .line 353
    .line 354
    const v10, 0x381f80

    .line 355
    .line 356
    .line 357
    xor-int/2addr v3, v10

    .line 358
    shl-int/lit8 v10, v13, 0x6

    .line 359
    .line 360
    xor-int/2addr v3, v10

    .line 361
    shl-int/lit8 v7, v7, 0xc

    .line 362
    .line 363
    xor-int/2addr v3, v7

    .line 364
    shl-int/lit8 v7, v9, 0x12

    .line 365
    .line 366
    xor-int/2addr v3, v7

    .line 367
    const v7, 0x10ffff

    .line 368
    .line 369
    .line 370
    if-le v3, v7, :cond_22

    .line 371
    .line 372
    if-ne v6, v8, :cond_2e

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_22
    if-gt v12, v3, :cond_23

    .line 376
    .line 377
    if-ge v3, v11, :cond_23

    .line 378
    .line 379
    if-ne v6, v8, :cond_2e

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_23
    const/high16 v7, 0x10000

    .line 383
    .line 384
    if-ge v3, v7, :cond_24

    .line 385
    .line 386
    if-ne v6, v8, :cond_2e

    .line 387
    .line 388
    goto :goto_6

    .line 389
    :cond_24
    add-int/lit8 v7, v6, 0x1

    .line 390
    .line 391
    if-ne v6, v8, :cond_25

    .line 392
    .line 393
    goto :goto_6

    .line 394
    :cond_25
    if-eq v3, v15, :cond_27

    .line 395
    .line 396
    const/16 v6, 0xd

    .line 397
    .line 398
    if-eq v3, v6, :cond_27

    .line 399
    .line 400
    if-ltz v3, :cond_26

    .line 401
    .line 402
    const/16 v6, 0x20

    .line 403
    .line 404
    if-ge v3, v6, :cond_26

    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_26
    const/16 v6, 0x7f

    .line 408
    .line 409
    if-gt v6, v3, :cond_27

    .line 410
    .line 411
    const/16 v6, 0xa0

    .line 412
    .line 413
    if-ge v3, v6, :cond_27

    .line 414
    .line 415
    goto :goto_5

    .line 416
    :cond_27
    const v6, 0xfffd

    .line 417
    .line 418
    .line 419
    if-ne v3, v6, :cond_28

    .line 420
    .line 421
    goto :goto_5

    .line 422
    :cond_28
    const/high16 v6, 0x10000

    .line 423
    .line 424
    if-ge v3, v6, :cond_29

    .line 425
    .line 426
    move/from16 v16, v17

    .line 427
    .line 428
    :cond_29
    add-int v5, v5, v16

    .line 429
    .line 430
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 431
    .line 432
    add-int/lit8 v4, v4, 0x4

    .line 433
    .line 434
    goto/16 :goto_4

    .line 435
    .line 436
    :cond_2a
    if-ne v6, v8, :cond_2e

    .line 437
    .line 438
    goto :goto_6

    .line 439
    :cond_2b
    if-ne v6, v8, :cond_2e

    .line 440
    .line 441
    goto :goto_6

    .line 442
    :cond_2c
    if-ne v6, v8, :cond_2e

    .line 443
    .line 444
    goto :goto_6

    .line 445
    :cond_2d
    if-ne v6, v8, :cond_2e

    .line 446
    .line 447
    goto :goto_6

    .line 448
    :cond_2e
    :goto_5
    const/4 v5, -0x1

    .line 449
    :cond_2f
    :goto_6
    const-string v2, "\u2026]"

    .line 450
    .line 451
    const-string v3, "[size="

    .line 452
    .line 453
    const/16 v4, 0x5d

    .line 454
    .line 455
    const/4 v6, -0x1

    .line 456
    if-ne v5, v6, :cond_33

    .line 457
    .line 458
    array-length v5, v1

    .line 459
    if-gt v5, v8, :cond_30

    .line 460
    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    const-string v2, "[hex="

    .line 464
    .line 465
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0}, Lokio/ByteString;->e()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    return-object v1

    .line 483
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    array-length v3, v1

    .line 489
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string v3, " hex="

    .line 493
    .line 494
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v3, "<this>"

    .line 498
    .line 499
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    array-length v3, v1

    .line 503
    if-gt v8, v3, :cond_32

    .line 504
    .line 505
    array-length v3, v1

    .line 506
    if-ne v8, v3, :cond_31

    .line 507
    .line 508
    move-object v3, v0

    .line 509
    goto :goto_7

    .line 510
    :cond_31
    new-instance v3, Lokio/ByteString;

    .line 511
    .line 512
    const/4 v5, 0x0

    .line 513
    invoke-static {v1, v5, v8}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    invoke-direct {v3, v1}, Lokio/ByteString;-><init>([B)V

    .line 518
    .line 519
    .line 520
    :goto_7
    invoke-virtual {v3}, Lokio/ByteString;->e()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    return-object v1

    .line 535
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    const-string v3, "endIndex > length("

    .line 538
    .line 539
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    array-length v1, v1

    .line 543
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const/16 v1, 0x29

    .line 547
    .line 548
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 556
    .line 557
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    throw v2

    .line 565
    :cond_33
    invoke-virtual {v0}, Lokio/ByteString;->s()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v6

    .line 569
    const/4 v7, 0x0

    .line 570
    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v7

    .line 574
    const-string v8, "substring(...)"

    .line 575
    .line 576
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    const-string v8, "\\"

    .line 580
    .line 581
    const-string v9, "\\\\"

    .line 582
    .line 583
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v7

    .line 587
    const-string v8, "\n"

    .line 588
    .line 589
    const-string v9, "\\n"

    .line 590
    .line 591
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v7

    .line 595
    const-string v8, "\r"

    .line 596
    .line 597
    const-string v9, "\\r"

    .line 598
    .line 599
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v7

    .line 603
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 604
    .line 605
    .line 606
    move-result v6

    .line 607
    if-ge v5, v6, :cond_34

    .line 608
    .line 609
    new-instance v4, Ljava/lang/StringBuilder;

    .line 610
    .line 611
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    array-length v1, v1

    .line 615
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    const-string v1, " text="

    .line 619
    .line 620
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v1

    .line 633
    return-object v1

    .line 634
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 635
    .line 636
    const-string v2, "[text="

    .line 637
    .line 638
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    return-object v1
.end method
