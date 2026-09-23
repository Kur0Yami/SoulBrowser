.class Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/curl/CurlMesh;

.field public final synthetic f:Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;Lcom/mycompany/app/curl/CurlMesh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$1;->f:Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$1;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$1;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/curl/CurlMesh;->C:Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$1;->f:Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 14
    .line 15
    iget-object v3, v2, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 16
    .line 17
    if-nez v3, :cond_2

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object v2, v2, Lcom/mycompany/app/image/ImageViewPageEffect;->m0:Landroid/graphics/RectF;

    .line 21
    .line 22
    iget-object v3, v3, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u:Landroid/graphics/RectF;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v2, :cond_9

    .line 26
    .line 27
    if-nez v3, :cond_3

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_3
    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 31
    .line 32
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 37
    .line 38
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eq v5, v6, :cond_4

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    iget v5, v2, Landroid/graphics/RectF;->left:F

    .line 46
    .line 47
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 52
    .line 53
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eq v5, v6, :cond_5

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_5
    iget v5, v2, Landroid/graphics/RectF;->right:F

    .line 61
    .line 62
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    iget v6, v3, Landroid/graphics/RectF;->right:F

    .line 67
    .line 68
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eq v5, v6, :cond_6

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_6
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 76
    .line 77
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eq v2, v3, :cond_7

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_7
    iget-object v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 91
    .line 92
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 93
    .line 94
    if-eqz v0, :cond_8

    .line 95
    .line 96
    invoke-virtual {v0, v4}, Lcom/mycompany/app/curl/CurlView;->setPrepared(Z)V

    .line 97
    .line 98
    .line 99
    :cond_8
    :goto_0
    return-void

    .line 100
    :cond_9
    :goto_1
    iput-boolean v4, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->o:Z

    .line 101
    .line 102
    iput-boolean v4, v0, Lcom/mycompany/app/main/MainItem$ViewItem;->p:Z

    .line 103
    .line 104
    iget-object v1, v1, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->V0(Lcom/mycompany/app/main/MainItem$ViewItem;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
