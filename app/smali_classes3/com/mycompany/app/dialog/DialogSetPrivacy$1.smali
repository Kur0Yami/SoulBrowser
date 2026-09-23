.class Lcom/mycompany/app/dialog/DialogSetPrivacy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetPrivacy;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy$1;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetPrivacy$1;->c:Lcom/mycompany/app/dialog/DialogSetPrivacy;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->e0:Z

    .line 14
    .line 15
    const/4 v5, -0x1

    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 19
    .line 20
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 24
    .line 25
    invoke-virtual {v4, v6}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 29
    .line 30
    .line 31
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 32
    .line 33
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 34
    .line 35
    .line 36
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 42
    .line 43
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    .line 45
    .line 46
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 47
    .line 48
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 49
    .line 50
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    const v8, 0x800005

    .line 54
    .line 55
    .line 56
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    .line 58
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 59
    .line 60
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const/4 v6, 0x0

    .line 68
    :goto_0
    const/4 v4, 0x0

    .line 69
    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    .line 75
    invoke-direct {v8, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    const/high16 v4, 0x3f800000    # 1.0f

    .line 79
    .line 80
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 81
    .line 82
    invoke-virtual {v3, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    .line 84
    .line 85
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 86
    .line 87
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    const/16 v1, 0x11

    .line 91
    .line 92
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 93
    .line 94
    .line 95
    const/high16 v1, 0x41800000    # 16.0f

    .line 96
    .line 97
    invoke-virtual {v4, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 98
    .line 99
    .line 100
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 101
    .line 102
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 106
    .line 107
    .line 108
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 109
    .line 110
    invoke-virtual {v3, v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 111
    .line 112
    .line 113
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->g0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 114
    .line 115
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 116
    .line 117
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 118
    .line 119
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetPrivacy;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 120
    .line 121
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 122
    .line 123
    if-nez v1, :cond_2

    .line 124
    .line 125
    :goto_1
    return-void

    .line 126
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetPrivacy$2;

    .line 127
    .line 128
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetPrivacy$2;-><init>(Lcom/mycompany/app/dialog/DialogSetPrivacy;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    .line 133
    .line 134
    return-void
.end method
