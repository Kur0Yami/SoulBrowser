.class Lcom/mycompany/app/dialog/DialogSetHead$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetHead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetHead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetHead$1;->c:Lcom/mycompany/app/dialog/DialogSetHead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetHead$1;->c:Lcom/mycompany/app/dialog/DialogSetHead;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetHead;->a0:Landroid/content/Context;

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
    new-instance v4, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const/high16 v5, 0x42c00000    # 96.0f

    .line 20
    .line 21
    invoke-static {v1, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    float-to-int v5, v5

    .line 26
    const/4 v6, -0x1

    .line 27
    invoke-virtual {v3, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 28
    .line 29
    .line 30
    new-instance v5, Landroid/view/View;

    .line 31
    .line 32
    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    const/high16 v7, 0x41d00000    # 26.0f

    .line 36
    .line 37
    invoke-static {v1, v7}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    float-to-int v7, v7

    .line 42
    invoke-virtual {v4, v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 43
    .line 44
    .line 45
    new-instance v7, Landroid/widget/FrameLayout;

    .line 46
    .line 47
    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    .line 49
    .line 50
    const/high16 v8, 0x41c00000    # 24.0f

    .line 51
    .line 52
    invoke-static {v1, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    float-to-int v8, v8

    .line 57
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 58
    .line 59
    const/4 v10, 0x0

    .line 60
    invoke-virtual {v7, v9, v10, v9, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    .line 62
    .line 63
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    .line 65
    invoke-direct {v8, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    const/high16 v9, 0x3f800000    # 1.0f

    .line 69
    .line 70
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 71
    .line 72
    invoke-virtual {v3, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    new-instance v8, Lcom/mycompany/app/view/MyRecyclerView;

    .line 76
    .line 77
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8, v10}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v10}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 84
    .line 85
    .line 86
    const/4 v9, -0x2

    .line 87
    invoke-virtual {v7, v8, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 88
    .line 89
    .line 90
    new-instance v7, Lcom/mycompany/app/view/MyLineText;

    .line 91
    .line 92
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    const/16 v1, 0x11

    .line 96
    .line 97
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    .line 99
    .line 100
    const/high16 v1, 0x41800000    # 16.0f

    .line 101
    .line 102
    invoke-virtual {v7, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 103
    .line 104
    .line 105
    sget v1, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 106
    .line 107
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    .line 109
    .line 110
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 111
    .line 112
    invoke-virtual {v7, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v7, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 116
    .line 117
    .line 118
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 119
    .line 120
    invoke-virtual {v3, v7, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 121
    .line 122
    .line 123
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSetHead;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 124
    .line 125
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogSetHead;->d0:Landroid/widget/FrameLayout;

    .line 126
    .line 127
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogSetHead;->e0:Landroid/view/View;

    .line 128
    .line 129
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogSetHead;->g0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 130
    .line 131
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogSetHead;->h0:Lcom/mycompany/app/view/MyLineText;

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
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetHead$2;

    .line 139
    .line 140
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetHead$2;-><init>(Lcom/mycompany/app/dialog/DialogSetHead;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    .line 145
    .line 146
    return-void
.end method
