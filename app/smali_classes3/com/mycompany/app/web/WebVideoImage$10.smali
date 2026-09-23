.class Lcom/mycompany/app/web/WebVideoImage$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoImage$10;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoImage$10;->c:Lcom/mycompany/app/web/WebVideoImage;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebVideoImage;->m:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_3

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->k:Lcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->f:Landroid/content/Context;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 24
    .line 25
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoImage;->f:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    const/high16 v2, -0x5f000000

    .line 40
    .line 41
    const v4, -0x5e8a8a8b

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    sget v2, Lcom/mycompany/app/main/MainApp;->j1:I

    .line 50
    .line 51
    int-to-float v2, v2

    .line 52
    sget v4, Lcom/mycompany/app/main/MainApp;->k1:I

    .line 53
    .line 54
    int-to-float v4, v4

    .line 55
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->n(FF)V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->outline_download_white_24:I

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 63
    .line 64
    .line 65
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebVideoImage;->q:Z

    .line 66
    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    const/16 v2, 0x8

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebVideoImage;->A()V

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    new-instance v2, Lcom/mycompany/app/web/WebVideoImage$1;

    .line 88
    .line 89
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoImage$1;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    new-instance v2, Lcom/mycompany/app/web/WebVideoImage$2;

    .line 98
    .line 99
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebVideoImage$2;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Landroid/view/GestureDetector;

    .line 106
    .line 107
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoImage;->f:Landroid/content/Context;

    .line 108
    .line 109
    new-instance v4, Lcom/mycompany/app/web/WebVideoImage$3;

    .line 110
    .line 111
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebVideoImage$3;-><init>(Lcom/mycompany/app/web/WebVideoImage;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {v1, v2, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 115
    .line 116
    .line 117
    iput-object v1, v0, Lcom/mycompany/app/web/WebVideoImage;->t:Landroid/view/GestureDetector;

    .line 118
    .line 119
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 120
    .line 121
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 122
    .line 123
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    .line 125
    .line 126
    const v2, 0x800055

    .line 127
    .line 128
    .line 129
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 130
    .line 131
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoImage;->f:Landroid/content/Context;

    .line 132
    .line 133
    const/high16 v4, 0x42f00000    # 120.0f

    .line 134
    .line 135
    invoke-static {v2, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    float-to-int v2, v2

    .line 140
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 141
    .line 142
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 145
    .line 146
    .line 147
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoImage;->l:Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    :cond_2
    :goto_1
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebVideoImage;->r:Z

    .line 153
    .line 154
    return-void

    .line 155
    :cond_3
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebVideoImage;->r:Z

    .line 156
    .line 157
    return-void
.end method
