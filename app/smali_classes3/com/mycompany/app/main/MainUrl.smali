.class public Lcom/mycompany/app/main/MainUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainUrl$MedItem;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, ".aac"

    .line 2
    .line 3
    const-string v1, ".mp3"

    .line 4
    .line 5
    const-string v2, ".mp4"

    .line 6
    .line 7
    const-string v3, ".m3u8"

    .line 8
    .line 9
    const-string v4, ".webm"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/mycompany/app/main/MainUrl;->a:[Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, ".jpg"

    .line 18
    .line 19
    const-string v1, ".png"

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/mycompany/app/main/MainUrl;->b:[Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "m3u8&"

    .line 28
    .line 29
    const-string v1, "hls&"

    .line 30
    .line 31
    const-string v2, "mp4&"

    .line 32
    .line 33
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/mycompany/app/main/MainUrl;->c:[Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainUtil;->D0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "http"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-lez p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    const/16 p0, 0x20

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-lez p0, :cond_2

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_2
    return-object v0
.end method

.method public static b(IILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    :goto_0
    if-ge p1, p0, :cond_4

    .line 2
    .line 3
    const-string v0, "http"

    .line 4
    .line 5
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge v0, p1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    add-int/lit8 p1, v0, 0x4

    .line 13
    .line 14
    const/16 v1, 0x26

    .line 15
    .line 16
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->indexOf(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ge v1, p1, :cond_1

    .line 21
    .line 22
    move v1, p0

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_1
    const/4 v3, 0x2

    .line 25
    if-ge v2, v3, :cond_3

    .line 26
    .line 27
    sget-object v3, Lcom/mycompany/app/main/MainUrl;->b:[Ljava/lang/String;

    .line 28
    .line 29
    aget-object v3, v3, v2

    .line 30
    .line 31
    invoke-static {p2, p1, v1, v3}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, -0x1

    .line 36
    if-ne v3, v4, :cond_2

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/mycompany/app/main/MainUrl;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_3
    add-int/lit8 p1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    :goto_2
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    const/16 v2, 0x3f

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-gez v2, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    move v1, v2

    .line 22
    :goto_0
    const/16 v2, 0x2f

    .line 23
    .line 24
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->lastIndexOf(II)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-gez v2, :cond_3

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    :cond_3
    const/16 v3, 0x23

    .line 32
    .line 33
    invoke-static {p0, v3, v2, v1}, Lcom/mycompany/app/main/MainUtil;->o6(Ljava/lang/String;CII)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-le v3, v2, :cond_4

    .line 38
    .line 39
    if-ge v3, v1, :cond_4

    .line 40
    .line 41
    move v1, v3

    .line 42
    :cond_4
    const/16 v3, 0x2e

    .line 43
    .line 44
    invoke-static {p0, v3, v2, v1}, Lcom/mycompany/app/main/MainUtil;->o6(Ljava/lang/String;CII)I

    .line 45
    .line 46
    .line 47
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    if-ge p0, v2, :cond_5

    .line 49
    .line 50
    return v0

    .line 51
    :cond_5
    return p0

    .line 52
    :catch_0
    return v0
.end method

.method public static d(ILjava/lang/String;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x3

    .line 4
    if-ge v0, v2, :cond_2

    .line 5
    .line 6
    sget-object v2, Lcom/mycompany/app/main/MainUrl;->c:[Ljava/lang/String;

    .line 7
    .line 8
    aget-object v2, v2, v0

    .line 9
    .line 10
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ne v2, v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    add-int/lit8 v1, v2, -0x1

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v3, 0x2e

    .line 24
    .line 25
    if-eq v1, v3, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v1
.end method

.method public static e(Ljava/lang/String;Z)Z
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainUrl;->c(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    move v2, v1

    .line 10
    :goto_0
    const/4 v3, 0x5

    .line 11
    if-ge v2, v3, :cond_5

    .line 12
    .line 13
    sget-object v3, Lcom/mycompany/app/main/MainUrl;->a:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object v3, v3, v2

    .line 16
    .line 17
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    if-eqz p1, :cond_4

    .line 27
    .line 28
    const-string p1, ".m3u8"

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    const/16 p1, 0x2f

    .line 37
    .line 38
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-gez p1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const-string v2, "rendition"

    .line 46
    .line 47
    invoke-static {p0, p1, v0, v2}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v3, -0x1

    .line 52
    if-eq v2, v3, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    const-string v2, "chunk"

    .line 56
    .line 57
    invoke-static {p0, p1, v0, v2}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eq p0, v3, :cond_4

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 65
    return p0

    .line 66
    :cond_5
    :goto_2
    return v1
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/mycompany/app/main/MainUrl;->c(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    move v2, v1

    .line 10
    :goto_0
    const/16 v3, 0xa

    .line 11
    .line 12
    if-ge v2, v3, :cond_6

    .line 13
    .line 14
    sget-object v3, Lcom/mycompany/app/subtitle/Subtitle;->b:[Ljava/lang/String;

    .line 15
    .line 16
    aget-object v3, v3, v2

    .line 17
    .line 18
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v2, 0x2f

    .line 28
    .line 29
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-gez v2, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const-string v3, "segment"

    .line 37
    .line 38
    invoke-static {p0, v2, v0, v3}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, -0x1

    .line 43
    if-eq v3, v4, :cond_3

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const-string v3, "seg-"

    .line 47
    .line 48
    invoke-static {p0, v2, v0, v3}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eq v3, v4, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    const-string v3, "thumb"

    .line 56
    .line 57
    invoke-static {p0, v2, v0, v3}, Lcom/mycompany/app/main/MainUtil;->b5(Ljava/lang/String;IILjava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eq p0, v4, :cond_5

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 65
    return p0

    .line 66
    :cond_6
    :goto_2
    return v1
.end method
