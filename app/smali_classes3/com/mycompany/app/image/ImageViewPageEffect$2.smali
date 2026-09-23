.class Lcom/mycompany/app/image/ImageViewPageEffect$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageEffect;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageEffect$2;->c:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageEffect$2;->c:Lcom/mycompany/app/image/ImageViewPageEffect;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->p:I

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$3;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$3;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 27
    .line 28
    sget v2, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 34
    .line 35
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$4;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$4;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MySizeFrame;->setListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->K:Lcom/mycompany/app/curl/CurlView;

    .line 44
    .line 45
    iget-boolean v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->f:Z

    .line 46
    .line 47
    new-instance v3, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;

    .line 48
    .line 49
    invoke-direct {v3, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$PageChangeListener;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/mycompany/app/curl/CurlView;->setReverse(Z)V

    .line 53
    .line 54
    .line 55
    const v2, 0x186a0

    .line 56
    .line 57
    .line 58
    iput v2, v1, Lcom/mycompany/app/curl/CurlView;->l:I

    .line 59
    .line 60
    iput-object v3, v1, Lcom/mycompany/app/curl/CurlView;->f:Lcom/mycompany/app/curl/CurlView$OnPageChangeListener;

    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 63
    .line 64
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyImageView;->setParentView(Landroid/view/ViewGroup;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->O:Lcom/mycompany/app/view/MyImageView;

    .line 70
    .line 71
    sget v2, Lcom/mycompany/app/pref/PrefImage;->B:I

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->M:Lcom/mycompany/app/view/MyCoverView;

    .line 77
    .line 78
    sget v2, Lcom/mycompany/app/pref/PrefImage;->C:F

    .line 79
    .line 80
    const v3, 0x3e4ccccd    # 0.2f

    .line 81
    .line 82
    .line 83
    cmpl-float v2, v2, v3

    .line 84
    .line 85
    if-lez v2, :cond_3

    .line 86
    .line 87
    const v2, -0x50506

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const/high16 v2, -0x1000000

    .line 92
    .line 93
    :goto_0
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->setColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->Q:Lcom/mycompany/app/view/MyButtonImage;

    .line 97
    .line 98
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$5;

    .line 99
    .line 100
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$5;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->S:Z

    .line 107
    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    const/4 v1, 0x0

    .line 111
    iput-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->S:Z

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/mycompany/app/image/ImageViewPageEffect;->n1(Z)V

    .line 114
    .line 115
    .line 116
    :cond_4
    new-instance v1, Landroid/view/GestureDetector;

    .line 117
    .line 118
    iget-object v2, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 119
    .line 120
    new-instance v3, Lcom/mycompany/app/image/ImageViewPageEffect$6;

    .line 121
    .line 122
    invoke-direct {v3, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$6;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 123
    .line 124
    .line 125
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 126
    .line 127
    .line 128
    iput-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->L0:Landroid/view/GestureDetector;

    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageEffect;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 131
    .line 132
    if-nez v1, :cond_5

    .line 133
    .line 134
    :goto_1
    return-void

    .line 135
    :cond_5
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageEffect$7;

    .line 136
    .line 137
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageEffect$7;-><init>(Lcom/mycompany/app/image/ImageViewPageEffect;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 141
    .line 142
    .line 143
    return-void
.end method
