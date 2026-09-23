.class Lcom/mycompany/app/curl/CurlMesh$Vertex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/curl/CurlMesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vertex"
.end annotation


# instance fields
.field public a:I

.field public b:F

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:D

.field public i:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->i:D

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->h:D

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->g:D

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    .line 15
    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    iput v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->b:F

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 10

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    iget-wide v2, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    .line 10
    .line 11
    mul-double v4, v2, v0

    .line 12
    .line 13
    iget-wide v6, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    .line 14
    .line 15
    mul-double v8, v6, p1

    .line 16
    .line 17
    add-double/2addr v8, v4

    .line 18
    neg-double v4, p1

    .line 19
    mul-double/2addr v2, v4

    .line 20
    mul-double/2addr v6, v0

    .line 21
    add-double/2addr v6, v2

    .line 22
    iput-wide v8, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    .line 23
    .line 24
    iput-wide v6, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    .line 25
    .line 26
    iget-wide v2, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 27
    .line 28
    mul-double v6, v2, v0

    .line 29
    .line 30
    iget-wide v8, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    .line 31
    .line 32
    mul-double/2addr p1, v8

    .line 33
    add-double/2addr p1, v6

    .line 34
    mul-double/2addr v2, v4

    .line 35
    mul-double/2addr v8, v0

    .line 36
    add-double/2addr v8, v2

    .line 37
    iput-wide p1, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 38
    .line 39
    iput-wide v8, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    .line 40
    .line 41
    return-void
.end method

.method public final b(Lcom/mycompany/app/curl/CurlMesh$Vertex;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->e:D

    .line 4
    .line 5
    iget-wide v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->f:D

    .line 8
    .line 9
    iget-wide v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->g:D

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->g:D

    .line 12
    .line 13
    iget-wide v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->h:D

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->h:D

    .line 16
    .line 17
    iget-wide v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->i:D

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->i:D

    .line 20
    .line 21
    iget-wide v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->c:D

    .line 24
    .line 25
    iget-wide v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->d:D

    .line 28
    .line 29
    iget v0, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->a:I

    .line 30
    .line 31
    iput v0, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->a:I

    .line 32
    .line 33
    iget p1, p1, Lcom/mycompany/app/curl/CurlMesh$Vertex;->b:F

    .line 34
    .line 35
    iput p1, p0, Lcom/mycompany/app/curl/CurlMesh$Vertex;->b:F

    .line 36
    .line 37
    return-void
.end method
