.class Lcom/mycompany/app/image/ImageViewListVert$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageScrollListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewListVert;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListVert;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListVert$5;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$5;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->U:Lcom/mycompany/app/image/ImageViewControl;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListVert;->M0()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->U:Lcom/mycompany/app/image/ImageViewControl;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    move v6, p1

    .line 15
    move v7, p2

    .line 16
    move v4, p1

    .line 17
    move v5, p2

    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/mycompany/app/image/ImageViewControl;->n(ZIIII)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$5;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->I:Lcom/mycompany/app/image/ImageListVert;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->T:Lcom/mycompany/app/image/ImageCoverView;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageCoverView;->c()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->S:Lcom/mycompany/app/view/MyCoverView;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 21
    .line 22
    .line 23
    :cond_2
    iput p1, v0, Lcom/mycompany/app/image/ImageViewListVert;->K:I

    .line 24
    .line 25
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewListVert;->X:Lcom/mycompany/app/view/MyFadeLinear;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1, v2, v1}, Lcom/mycompany/app/view/MyFadeLinear;->d(ZZ)V

    .line 31
    .line 32
    .line 33
    :cond_3
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewListVert;->X0(Z)V

    .line 34
    .line 35
    .line 36
    iget p1, v0, Lcom/mycompany/app/image/ImageViewListVert;->V:I

    .line 37
    .line 38
    iget v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->W:I

    .line 39
    .line 40
    invoke-virtual {v0, p1, v2, v1}, Lcom/mycompany/app/image/ImageViewListVert;->R0(IIZ)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final c()Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$5;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListVert;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->s4(Landroid/content/Context;)Landroid/graphics/Point;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->z0:Landroid/graphics/Point;

    .line 15
    .line 16
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$5;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListVert;->E0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(ZIIII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$5;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->I:Lcom/mycompany/app/image/ImageListVert;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->h:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->T:Lcom/mycompany/app/image/ImageCoverView;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageCoverView;->c()V

    .line 18
    .line 19
    .line 20
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->S:Lcom/mycompany/app/view/MyCoverView;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 26
    .line 27
    .line 28
    :cond_3
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewListVert;->X0(Z)V

    .line 30
    .line 31
    .line 32
    iget v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->v:I

    .line 33
    .line 34
    if-lez v3, :cond_5

    .line 35
    .line 36
    if-gez p2, :cond_4

    .line 37
    .line 38
    sub-int/2addr v3, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_4
    rem-int v3, p2, v3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_5
    move v3, v1

    .line 44
    :goto_0
    iput p3, v0, Lcom/mycompany/app/image/ImageViewListVert;->y:I

    .line 45
    .line 46
    iget-object p2, v0, Lcom/mycompany/app/image/ImageViewListVert;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 47
    .line 48
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-nez p2, :cond_6

    .line 53
    .line 54
    move p3, v2

    .line 55
    :cond_6
    iget p2, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    .line 56
    .line 57
    if-ne v3, p2, :cond_8

    .line 58
    .line 59
    iget p2, v0, Lcom/mycompany/app/image/ImageViewListVert;->x:I

    .line 60
    .line 61
    if-ne p3, p2, :cond_8

    .line 62
    .line 63
    iget p2, v0, Lcom/mycompany/app/image/ImageViewListVert;->V:I

    .line 64
    .line 65
    if-ne p4, p2, :cond_8

    .line 66
    .line 67
    iget p2, v0, Lcom/mycompany/app/image/ImageViewListVert;->W:I

    .line 68
    .line 69
    if-eq p5, p2, :cond_7

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_7
    move v2, v1

    .line 73
    :cond_8
    :goto_1
    if-nez v2, :cond_b

    .line 74
    .line 75
    if-eqz p1, :cond_b

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListVert;->N0()V

    .line 78
    .line 79
    .line 80
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewListVert;->N0:Lcom/mycompany/app/image/ImageTransView;

    .line 81
    .line 82
    if-eqz p1, :cond_a

    .line 83
    .line 84
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewListVert;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 85
    .line 86
    if-nez p1, :cond_9

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_9
    new-instance p2, Lcom/mycompany/app/image/ImageViewListVert$60;

    .line 90
    .line 91
    invoke-direct {p2, v0}, Lcom/mycompany/app/image/ImageViewListVert$60;-><init>(Lcom/mycompany/app/image/ImageViewListVert;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 95
    .line 96
    .line 97
    :cond_a
    :goto_2
    return-void

    .line 98
    :cond_b
    iput v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    .line 99
    .line 100
    iput p3, v0, Lcom/mycompany/app/image/ImageViewListVert;->x:I

    .line 101
    .line 102
    invoke-virtual {v0, p4, p5, v2}, Lcom/mycompany/app/image/ImageViewListVert;->R0(IIZ)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final f(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListVert$5;->a:Lcom/mycompany/app/image/ImageViewListVert;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->I:Lcom/mycompany/app/image/ImageListVert;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewListVert;->u:Ljava/lang/String;

    .line 9
    .line 10
    iget v1, v0, Lcom/mycompany/app/image/ImageViewListVert;->v:I

    .line 11
    .line 12
    iget v2, v0, Lcom/mycompany/app/image/ImageViewListVert;->w:I

    .line 13
    .line 14
    iget v3, v0, Lcom/mycompany/app/image/ImageViewListVert;->x:I

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    move v4, p1

    .line 18
    move v6, p2

    .line 19
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewListVert;->Q0(IIIILjava/lang/String;ZZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
