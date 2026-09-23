.class Lcom/mycompany/app/dialog/DialogOcrLoad$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogOcrLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$1;->c:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogOcrLoad$1;->c:Lcom/mycompany/app/dialog/DialogOcrLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->item_msg_view:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    new-instance v5, Landroid/widget/RelativeLayout;

    .line 17
    .line 18
    invoke-direct {v5, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    invoke-virtual {v5, v6, v7, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    const/high16 v6, 0x42900000    # 72.0f

    .line 28
    .line 29
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    float-to-int v6, v6

    .line 34
    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 35
    .line 36
    .line 37
    const/4 v6, -0x1

    .line 38
    const/4 v8, -0x2

    .line 39
    invoke-virtual {v4, v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 40
    .line 41
    .line 42
    const/high16 v9, 0x41c00000    # 24.0f

    .line 43
    .line 44
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    float-to-int v9, v9

    .line 49
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    const/4 v11, 0x0

    .line 52
    invoke-direct {v10, v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10, v2}, Landroid/view/View;->setId(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v10, v7, v9, v7, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    .line 60
    .line 61
    const/16 v7, 0x11

    .line 62
    .line 63
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 64
    .line 65
    .line 66
    sget v11, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 67
    .line 68
    int-to-float v11, v11

    .line 69
    const/high16 v12, 0x3f800000    # 1.0f

    .line 70
    .line 71
    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 72
    .line 73
    .line 74
    const/high16 v11, 0x41600000    # 14.0f

    .line 75
    .line 76
    invoke-virtual {v10, v3, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v10, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 80
    .line 81
    .line 82
    new-instance v8, Lcom/mycompany/app/view/MyProgressBar;

    .line 83
    .line 84
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyProgressBar;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    const/16 v11, 0x8

    .line 88
    .line 89
    invoke-virtual {v8, v11}, Lcom/mycompany/app/view/MyProgressBar;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 93
    .line 94
    sget v12, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 95
    .line 96
    invoke-direct {v11, v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    .line 98
    .line 99
    const/4 v12, 0x3

    .line 100
    invoke-virtual {v11, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 101
    .line 102
    .line 103
    iput v9, v11, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 104
    .line 105
    invoke-virtual {v5, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Lcom/mycompany/app/view/MyLineText;

    .line 109
    .line 110
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 114
    .line 115
    .line 116
    const/high16 v1, 0x41800000    # 16.0f

    .line 117
    .line 118
    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 119
    .line 120
    .line 121
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 122
    .line 123
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 127
    .line 128
    .line 129
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 130
    .line 131
    invoke-virtual {v4, v2, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 132
    .line 133
    .line 134
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 135
    .line 136
    iput-object v10, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->d0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 137
    .line 138
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 139
    .line 140
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogOcrLoad;->e0:Lcom/mycompany/app/view/MyProgressBar;

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
    new-instance v2, Lcom/mycompany/app/dialog/DialogOcrLoad$2;

    .line 148
    .line 149
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogOcrLoad$2;-><init>(Lcom/mycompany/app/dialog/DialogOcrLoad;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    .line 154
    .line 155
    return-void
.end method
