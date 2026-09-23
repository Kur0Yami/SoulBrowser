.class Lcom/mycompany/app/image/ImageTransView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageTransView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageTransView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageTransView$8;->c:Lcom/mycompany/app/image/ImageTransView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageTransView$8;->c:Lcom/mycompany/app/image/ImageTransView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    sget v1, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 13
    .line 14
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    .line 16
    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    const v1, 0x800015

    .line 20
    .line 21
    .line 22
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 25
    .line 26
    iget-object v3, v0, Lcom/mycompany/app/image/ImageTransView;->s:Lcom/mycompany/app/view/MyButtonImage;

    .line 27
    .line 28
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 32
    .line 33
    const/high16 v2, 0x42100000    # 36.0f

    .line 34
    .line 35
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v2, v0, Lcom/mycompany/app/image/ImageTransView;->t:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 46
    .line 47
    invoke-virtual {v2, v3, v3, v1, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    .line 52
    const/4 v2, -0x2

    .line 53
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    iget-object v3, v0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 57
    .line 58
    iget-object v4, v0, Lcom/mycompany/app/image/ImageTransView;->t:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 64
    .line 65
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    const/4 v2, 0x1

    .line 69
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 70
    .line 71
    iget-object v3, v0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 72
    .line 73
    iget-object v4, v0, Lcom/mycompany/app/image/ImageTransView;->r:Lcom/mycompany/app/view/MyRoundFrame;

    .line 74
    .line 75
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->f:Landroid/content/Context;

    .line 79
    .line 80
    const/high16 v3, 0x41600000    # 14.0f

    .line 81
    .line 82
    invoke-static {v1, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    .line 92
    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 93
    .line 94
    .line 95
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 98
    .line 99
    iget-object v2, v0, Lcom/mycompany/app/image/ImageTransView;->u:Lcom/mycompany/app/view/MyArrowView;

    .line 100
    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/image/ImageTransView;->h:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    new-instance v2, Lcom/mycompany/app/image/ImageTransView$9;

    .line 107
    .line 108
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageTransView$9;-><init>(Lcom/mycompany/app/image/ImageTransView;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
