.class Lcom/mycompany/app/dialog/DialogSetTrans$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTrans$1;->c:Lcom/mycompany/app/dialog/DialogSetTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTrans$1;->c:Lcom/mycompany/app/dialog/DialogSetTrans;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    new-instance v4, Lcom/mycompany/app/view/MyLineFrame;

    .line 15
    .line 16
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineFrame;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyLineFrame;->setLinePad(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineFrame;->setLineDn(Z)V

    .line 25
    .line 26
    .line 27
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 28
    .line 29
    const/4 v6, -0x1

    .line 30
    invoke-virtual {v3, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 31
    .line 32
    .line 33
    new-instance v5, Landroid/view/View;

    .line 34
    .line 35
    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const/high16 v7, 0x43300000    # 176.0f

    .line 39
    .line 40
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    float-to-int v7, v7

    .line 45
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 46
    .line 47
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 48
    .line 49
    invoke-direct {v8, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    .line 51
    .line 52
    const/16 v7, 0x11

    .line 53
    .line 54
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    .line 56
    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    new-instance v8, Lcom/mycompany/app/view/MyButtonImage;

    .line 60
    .line 61
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 65
    .line 66
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    .line 68
    .line 69
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    .line 71
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 72
    .line 73
    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    .line 76
    const v10, 0x800005

    .line 77
    .line 78
    .line 79
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 80
    .line 81
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 82
    .line 83
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 95
    .line 96
    invoke-direct {v10, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    .line 98
    .line 99
    const/high16 v4, 0x3f800000    # 1.0f

    .line 100
    .line 101
    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 102
    .line 103
    invoke-virtual {v3, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    .line 105
    .line 106
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 107
    .line 108
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 112
    .line 113
    .line 114
    const/high16 v1, 0x41800000    # 16.0f

    .line 115
    .line 116
    invoke-virtual {v4, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 117
    .line 118
    .line 119
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 120
    .line 121
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 125
    .line 126
    .line 127
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 128
    .line 129
    invoke-virtual {v3, v4, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 130
    .line 131
    .line 132
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 133
    .line 134
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->g0:Landroid/view/View;

    .line 135
    .line 136
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->h0:Lcom/mycompany/app/view/MyButtonImage;

    .line 137
    .line 138
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->i0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 139
    .line 140
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetTrans;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 141
    .line 142
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 143
    .line 144
    if-nez v1, :cond_1

    .line 145
    .line 146
    :goto_0
    return-void

    .line 147
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetTrans$2;

    .line 148
    .line 149
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetTrans$2;-><init>(Lcom/mycompany/app/dialog/DialogSetTrans;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    .line 154
    .line 155
    return-void
.end method
