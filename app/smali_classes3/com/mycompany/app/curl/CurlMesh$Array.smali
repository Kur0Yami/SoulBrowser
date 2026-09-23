.class Lcom/mycompany/app/curl/CurlMesh$Array;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/curl/CurlMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Array"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->b:I

    .line 5
    .line 6
    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->a:[Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 4
    .line 5
    if-gt p1, v0, :cond_1

    .line 6
    .line 7
    iget v1, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->b:I

    .line 8
    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    :goto_0
    iget-object v1, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->a:[Ljava/lang/Object;

    .line 12
    .line 13
    if-le v0, p1, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 16
    .line 17
    aget-object v2, v1, v2

    .line 18
    .line 19
    aput-object v2, v1, v0

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    aput-object p2, v1, p1

    .line 25
    .line 26
    iget p1, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    iput p1, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->b:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    iput v1, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->a:[Ljava/lang/Object;

    .line 12
    .line 13
    aput-object p1, v1, v0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public final c(Lcom/mycompany/app/curl/CurlMesh$Array;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 2
    .line 3
    iget v1, p1, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->b:I

    .line 7
    .line 8
    if-gt v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p1, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 16
    .line 17
    add-int/lit8 v2, v1, 0x1

    .line 18
    .line 19
    iput v2, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/mycompany/app/curl/CurlMesh$Array;->d(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->a:[Ljava/lang/Object;

    .line 26
    .line 27
    aput-object v2, v3, v1

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->a:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public final e()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->a:[Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    aget-object v2, v0, v1

    .line 9
    .line 10
    :goto_0
    iget v3, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 11
    .line 12
    add-int/lit8 v3, v3, -0x1

    .line 13
    .line 14
    if-ge v1, v3, :cond_0

    .line 15
    .line 16
    add-int/lit8 v3, v1, 0x1

    .line 17
    .line 18
    aget-object v4, v0, v3

    .line 19
    .line 20
    aput-object v4, v0, v1

    .line 21
    .line 22
    move v1, v3

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput v3, p0, Lcom/mycompany/app/curl/CurlMesh$Array;->c:I

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method
