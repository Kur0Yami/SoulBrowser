.class Lcom/mycompany/app/dialog/DialogDeleteItem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDeleteItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDeleteItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDeleteItem$1;->c:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDeleteItem$1;->c:Lcom/mycompany/app/dialog/DialogDeleteItem;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->a0:Landroid/content/Context;

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
    const/high16 v4, 0x42900000    # 72.0f

    .line 15
    .line 16
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    float-to-int v4, v4

    .line 21
    new-instance v5, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const/4 v6, -0x1

    .line 27
    invoke-virtual {v3, v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 28
    .line 29
    .line 30
    new-instance v7, Lcom/mycompany/app/view/MyRoundImage;

    .line 31
    .line 32
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 36
    .line 37
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 38
    .line 39
    .line 40
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 41
    .line 42
    int-to-float v8, v8

    .line 43
    const/high16 v9, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float/2addr v8, v9

    .line 46
    invoke-virtual {v7, v8}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 47
    .line 48
    .line 49
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    .line 51
    sget v9, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 52
    .line 53
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    const v9, 0x800013

    .line 57
    .line 58
    .line 59
    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 60
    .line 61
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 62
    .line 63
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    const/4 v8, 0x0

    .line 70
    const/4 v10, 0x2

    .line 71
    invoke-static {v1, v8, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 76
    .line 77
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 78
    .line 79
    .line 80
    const/high16 v10, 0x41800000    # 16.0f

    .line 81
    .line 82
    invoke-virtual {v8, v2, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 83
    .line 84
    .line 85
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    .line 87
    const/4 v12, -0x2

    .line 88
    invoke-direct {v11, v6, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    .line 90
    .line 91
    iput v9, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    .line 93
    invoke-virtual {v11, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 94
    .line 95
    .line 96
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 97
    .line 98
    invoke-virtual {v11, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .line 103
    .line 104
    const/16 v4, 0x11

    .line 105
    .line 106
    invoke-static {v1, v4, v2, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    sget v4, Lnet/kaki87/soul2/testing/R$string;->delete:I

    .line 111
    .line 112
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 113
    .line 114
    .line 115
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 116
    .line 117
    invoke-virtual {v1, v4}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 121
    .line 122
    .line 123
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 124
    .line 125
    invoke-virtual {v3, v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 126
    .line 127
    .line 128
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 129
    .line 130
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->d0:Lcom/mycompany/app/view/MyRoundImage;

    .line 131
    .line 132
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    .line 134
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDeleteItem;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 135
    .line 136
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 137
    .line 138
    if-nez v1, :cond_1

    .line 139
    .line 140
    :goto_0
    return-void

    .line 141
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogDeleteItem$2;

    .line 142
    .line 143
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDeleteItem$2;-><init>(Lcom/mycompany/app/dialog/DialogDeleteItem;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    .line 148
    .line 149
    return-void
.end method
