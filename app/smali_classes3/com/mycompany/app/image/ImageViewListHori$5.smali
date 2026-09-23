.class Lcom/mycompany/app/image/ImageViewListHori$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/image/ImageScrollListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageViewListHori;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewListHori;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewListHori$5;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$5;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->U:Lcom/mycompany/app/image/ImageViewControl;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->M0()V

    .line 9
    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->U:Lcom/mycompany/app/image/ImageViewControl;

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
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$5;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->I:Lcom/mycompany/app/image/ImageListHori;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->T:Lcom/mycompany/app/image/ImageCoverView;

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
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->S:Lcom/mycompany/app/view/MyCoverView;

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
    iput p1, v0, Lcom/mycompany/app/image/ImageViewListHori;->K:I

    .line 24
    .line 25
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewListHori;->X:Lcom/mycompany/app/view/MyFadeLinear;

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
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewListHori;->X0(Z)V

    .line 34
    .line 35
    .line 36
    iget p1, v0, Lcom/mycompany/app/image/ImageViewListHori;->V:I

    .line 37
    .line 38
    iget v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->W:I

    .line 39
    .line 40
    invoke-virtual {v0, p1, v2, v1}, Lcom/mycompany/app/image/ImageViewListHori;->R0(IIZ)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final c()Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$5;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewListHori;->a:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$5;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->E0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final e(ZIIII)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$5;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->I:Lcom/mycompany/app/image/ImageListHori;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->h:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->T:Lcom/mycompany/app/image/ImageCoverView;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageCoverView;->c()V

    .line 19
    .line 20
    .line 21
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->S:Lcom/mycompany/app/view/MyCoverView;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 27
    .line 28
    .line 29
    :cond_3
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewListHori;->X0(Z)V

    .line 31
    .line 32
    .line 33
    iget v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->v:I

    .line 34
    .line 35
    if-lez v3, :cond_5

    .line 36
    .line 37
    if-gez p2, :cond_4

    .line 38
    .line 39
    add-int/lit8 p2, v3, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    rem-int/2addr p2, v3

    .line 43
    :goto_0
    sget-boolean v4, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 44
    .line 45
    if-eqz v4, :cond_6

    .line 46
    .line 47
    sub-int/2addr v3, p2

    .line 48
    add-int/lit8 p2, v3, -0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_5
    move p2, v1

    .line 52
    :cond_6
    :goto_1
    iput p3, v0, Lcom/mycompany/app/image/ImageViewListHori;->y:I

    .line 53
    .line 54
    iget-object v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->b:Lcom/mycompany/app/image/ImageViewActivity;

    .line 55
    .line 56
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_7

    .line 61
    .line 62
    move p3, v2

    .line 63
    :cond_7
    iget v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->w:I

    .line 64
    .line 65
    if-ne p2, v3, :cond_9

    .line 66
    .line 67
    iget v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->x:I

    .line 68
    .line 69
    if-ne p3, v3, :cond_9

    .line 70
    .line 71
    iget v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->V:I

    .line 72
    .line 73
    if-ne p4, v3, :cond_9

    .line 74
    .line 75
    iget v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->W:I

    .line 76
    .line 77
    if-eq p5, v3, :cond_8

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_8
    move v2, v1

    .line 81
    :cond_9
    :goto_2
    if-nez v2, :cond_c

    .line 82
    .line 83
    if-eqz p1, :cond_c

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewListHori;->N0()V

    .line 86
    .line 87
    .line 88
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewListHori;->O0:Lcom/mycompany/app/image/ImageTransView;

    .line 89
    .line 90
    if-eqz p1, :cond_b

    .line 91
    .line 92
    iget-object p1, v0, Lcom/mycompany/app/image/ImageViewListHori;->H:Lcom/mycompany/app/view/MySizeFrame;

    .line 93
    .line 94
    if-nez p1, :cond_a

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_a
    new-instance p2, Lcom/mycompany/app/image/ImageViewListHori$60;

    .line 98
    .line 99
    invoke-direct {p2, v0}, Lcom/mycompany/app/image/ImageViewListHori$60;-><init>(Lcom/mycompany/app/image/ImageViewListHori;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    :cond_b
    :goto_3
    return-void

    .line 106
    :cond_c
    iput p2, v0, Lcom/mycompany/app/image/ImageViewListHori;->w:I

    .line 107
    .line 108
    iput p3, v0, Lcom/mycompany/app/image/ImageViewListHori;->x:I

    .line 109
    .line 110
    invoke-virtual {v0, p4, p5, v2}, Lcom/mycompany/app/image/ImageViewListHori;->R0(IIZ)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final f(IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewListHori$5;->a:Lcom/mycompany/app/image/ImageViewListHori;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->I:Lcom/mycompany/app/image/ImageListHori;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v5, v0, Lcom/mycompany/app/image/ImageViewListHori;->u:Ljava/lang/String;

    .line 9
    .line 10
    iget v1, v0, Lcom/mycompany/app/image/ImageViewListHori;->v:I

    .line 11
    .line 12
    iget v2, v0, Lcom/mycompany/app/image/ImageViewListHori;->w:I

    .line 13
    .line 14
    iget v3, v0, Lcom/mycompany/app/image/ImageViewListHori;->x:I

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    move v4, p1

    .line 18
    move v6, p2

    .line 19
    invoke-virtual/range {v0 .. v7}, Lcom/mycompany/app/image/ImageViewListHori;->Q0(IIIILjava/lang/String;ZZ)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
