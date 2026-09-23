.class Lcom/mycompany/app/dialog/DialogSetJava$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetJava;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetJava;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetJava$1;->c:Lcom/mycompany/app/dialog/DialogSetJava;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetJava$1;->c:Lcom/mycompany/app/dialog/DialogSetJava;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetJava;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

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
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 14
    .line 15
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 19
    .line 20
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 24
    .line 25
    .line 26
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 27
    .line 28
    const/4 v6, -0x1

    .line 29
    invoke-virtual {v3, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 33
    .line 34
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 38
    .line 39
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 40
    .line 41
    .line 42
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .line 44
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 45
    .line 46
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    const v8, 0x800005

    .line 50
    .line 51
    .line 52
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    .line 54
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 55
    .line 56
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    .line 69
    invoke-direct {v8, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .line 71
    .line 72
    const/high16 v4, 0x3f800000    # 1.0f

    .line 73
    .line 74
    iput v4, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 75
    .line 76
    invoke-virtual {v3, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 80
    .line 81
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x11

    .line 85
    .line 86
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    .line 88
    .line 89
    const/high16 v1, 0x41800000    # 16.0f

    .line 90
    .line 91
    invoke-virtual {v4, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 92
    .line 93
    .line 94
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 95
    .line 96
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 100
    .line 101
    .line 102
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 103
    .line 104
    invoke-virtual {v3, v4, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 105
    .line 106
    .line 107
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetJava;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 108
    .line 109
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogSetJava;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 110
    .line 111
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogSetJava;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 112
    .line 113
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetJava;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 114
    .line 115
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 116
    .line 117
    if-nez v1, :cond_1

    .line 118
    .line 119
    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetJava$2;

    .line 121
    .line 122
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetJava$2;-><init>(Lcom/mycompany/app/dialog/DialogSetJava;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    .line 127
    .line 128
    return-void
.end method
