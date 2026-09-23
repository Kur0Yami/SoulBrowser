.class Lcom/mycompany/app/dialog/DialogSetRate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetRate;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetRate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetRate$1;->c:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetRate$1;->c:Lcom/mycompany/app/dialog/DialogSetRate;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetRate;->a0:Landroid/content/Context;

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
    new-instance v4, Lcom/mycompany/app/view/MyRoundItem;

    .line 15
    .line 16
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-virtual {v4, v5, v2}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 21
    .line 22
    .line 23
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 24
    .line 25
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 26
    .line 27
    invoke-virtual {v4, v6, v5, v7, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    .line 29
    .line 30
    sget v6, Lcom/mycompany/app/main/MainApp;->h1:I

    .line 31
    .line 32
    invoke-virtual {v4, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 33
    .line 34
    .line 35
    const/4 v6, -0x1

    .line 36
    const/4 v7, -0x2

    .line 37
    invoke-virtual {v3, v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 38
    .line 39
    .line 40
    new-instance v8, Lcom/mycompany/app/view/MySwitchView;

    .line 41
    .line 42
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MySwitchView;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 46
    .line 47
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 48
    .line 49
    invoke-direct {v9, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50
    .line 51
    .line 52
    const/16 v10, 0x15

    .line 53
    .line 54
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    .line 56
    .line 57
    const/16 v10, 0xf

    .line 58
    .line 59
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    invoke-direct {v9, v1, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    .line 70
    .line 71
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 72
    .line 73
    invoke-virtual {v9, v5, v11, v5, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 74
    .line 75
    .line 76
    const/high16 v11, 0x41800000    # 16.0f

    .line 77
    .line 78
    invoke-static {v9, v2, v11, v6, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->h(Landroidx/appcompat/widget/AppCompatTextView;IFII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 83
    .line 84
    .line 85
    sget v10, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 86
    .line 87
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    new-instance v7, Lcom/mycompany/app/view/MyRecyclerView;

    .line 94
    .line 95
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7, v2, v5}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v5}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    .line 109
    invoke-direct {v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    .line 111
    .line 112
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 113
    .line 114
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 115
    .line 116
    const/high16 v2, 0x3f800000    # 1.0f

    .line 117
    .line 118
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 119
    .line 120
    invoke-virtual {v3, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    .line 122
    .line 123
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetRate;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 124
    .line 125
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetRate;->d0:Lcom/mycompany/app/view/MyRoundItem;

    .line 126
    .line 127
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogSetRate;->e0:Lcom/mycompany/app/view/MySwitchView;

    .line 128
    .line 129
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogSetRate;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    .line 131
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogSetRate;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 132
    .line 133
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 134
    .line 135
    if-nez v1, :cond_1

    .line 136
    .line 137
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetRate$2;

    .line 139
    .line 140
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetRate$2;-><init>(Lcom/mycompany/app/dialog/DialogSetRate;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    .line 145
    .line 146
    return-void
.end method
