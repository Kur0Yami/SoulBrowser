.class Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/curl/CurlMesh;

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;Lcom/mycompany/app/curl/CurlMesh;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$3;->g:Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$3;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$3;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$3;->g:Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;->a:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    iget-object v3, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$3;->c:Lcom/mycompany/app/curl/CurlMesh;

    .line 8
    .line 9
    if-nez v3, :cond_3

    .line 10
    .line 11
    iget-boolean v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->n0:Z

    .line 12
    .line 13
    if-nez v3, :cond_2

    .line 14
    .line 15
    iget-object v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->M:Lcom/mycompany/app/view/MyCoverView;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->Z0()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->k1()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->M:Lcom/mycompany/app/view/MyCoverView;

    .line 37
    .line 38
    if-eqz v0, :cond_b

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->l()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    iput-boolean v2, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->n0:Z

    .line 45
    .line 46
    iget-object v2, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->l0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 47
    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->u()V

    .line 51
    .line 52
    .line 53
    :cond_4
    iget-object v2, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->M:Lcom/mycompany/app/view/MyCoverView;

    .line 54
    .line 55
    if-eqz v2, :cond_5

    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyCoverView;->l()V

    .line 58
    .line 59
    .line 60
    :cond_5
    iget v2, p0, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener$3;->f:I

    .line 61
    .line 62
    invoke-static {v1, v3, v2}, Lcom/mycompany/app/image/ImageViewPageEffect;->Q(Lcom/mycompany/app/image/ImageViewPageEffect;Lcom/mycompany/app/curl/CurlMesh;I)Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    if-nez v3, :cond_6

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_6
    move v4, v2

    .line 70
    iget v2, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->x:I

    .line 71
    .line 72
    move-object v5, v3

    .line 73
    iget v3, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 74
    .line 75
    move v6, v4

    .line 76
    iget v4, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 77
    .line 78
    iget v7, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->k0:I

    .line 79
    .line 80
    iput v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->k0:I

    .line 81
    .line 82
    iget v6, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 83
    .line 84
    iput v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->y:I

    .line 85
    .line 86
    iget v8, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->g:I

    .line 87
    .line 88
    iput v8, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->z:I

    .line 89
    .line 90
    iget-object v8, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->i:Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 91
    .line 92
    if-nez v8, :cond_7

    .line 93
    .line 94
    iget-object v8, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->E:Lcom/mycompany/app/compress/Compress;

    .line 95
    .line 96
    invoke-virtual {v8, v6}, Lcom/mycompany/app/compress/Compress;->g(I)Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    iput-object v6, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->i:Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 101
    .line 102
    :cond_7
    iget-object v6, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->i:Lcom/mycompany/app/compress/CompressCache$BitmapInfo;

    .line 103
    .line 104
    if-nez v6, :cond_8

    .line 105
    .line 106
    invoke-virtual {v1, v0, v0}, Lcom/mycompany/app/image/ImageViewPageEffect;->d1(II)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_8
    iget v0, v6, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->a:I

    .line 111
    .line 112
    iget v6, v6, Lcom/mycompany/app/compress/CompressCache$BitmapInfo;->b:I

    .line 113
    .line 114
    invoke-virtual {v1, v0, v6}, Lcom/mycompany/app/image/ImageViewPageEffect;->d1(II)V

    .line 115
    .line 116
    .line 117
    :goto_0
    iget-boolean v0, v5, Lcom/mycompany/app/main/MainItem$ViewItem;->j:Z

    .line 118
    .line 119
    if-eqz v0, :cond_a

    .line 120
    .line 121
    iget v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->k0:I

    .line 122
    .line 123
    if-ge v0, v7, :cond_9

    .line 124
    .line 125
    iget-object v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 126
    .line 127
    const/4 v8, 0x0

    .line 128
    const/4 v5, 0x0

    .line 129
    const/4 v7, 0x0

    .line 130
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_9
    if-le v0, v7, :cond_b

    .line 135
    .line 136
    iget-object v6, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->w:Ljava/lang/String;

    .line 137
    .line 138
    const/4 v8, 0x0

    .line 139
    const/4 v5, 0x0

    .line 140
    const/4 v7, 0x1

    .line 141
    invoke-virtual/range {v1 .. v8}, Lcom/mycompany/app/image/ImageViewPageEffect;->c1(IIIILjava/lang/String;ZZ)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_a
    iget v0, v1, Lcom/mycompany/app/image/ImageViewPageEffect;->k0:I

    .line 146
    .line 147
    if-eqz v0, :cond_c

    .line 148
    .line 149
    const v2, 0x1869f

    .line 150
    .line 151
    .line 152
    if-ne v0, v2, :cond_b

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_b
    :goto_1
    return-void

    .line 156
    :cond_c
    :goto_2
    invoke-virtual {v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->Y0()V

    .line 157
    .line 158
    .line 159
    return-void
.end method
