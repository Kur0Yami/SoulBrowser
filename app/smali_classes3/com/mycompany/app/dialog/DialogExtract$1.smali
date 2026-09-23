.class Lcom/mycompany/app/dialog/DialogExtract$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogExtract;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract$1;->c:Lcom/mycompany/app/dialog/DialogExtract;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$1;->c:Lcom/mycompany/app/dialog/DialogExtract;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

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
    new-instance v4, Landroid/widget/FrameLayout;

    .line 14
    .line 15
    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, -0x1

    .line 22
    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    const/high16 v6, 0x3f800000    # 1.0f

    .line 26
    .line 27
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 28
    .line 29
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Landroidx/core/widget/NestedScrollView;

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-direct {v5, v1, v6}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    .line 37
    .line 38
    const/4 v6, 0x2

    .line 39
    invoke-virtual {v5, v6}, Landroid/view/View;->setOverScrollMode(I)V

    .line 40
    .line 41
    .line 42
    const/high16 v6, 0x42900000    # 72.0f

    .line 43
    .line 44
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    float-to-int v6, v6

    .line 49
    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumHeight(I)V

    .line 50
    .line 51
    .line 52
    const/4 v6, -0x2

    .line 53
    invoke-virtual {v4, v5, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 54
    .line 55
    .line 56
    new-instance v4, Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    .line 63
    .line 64
    const/16 v8, 0x8

    .line 65
    .line 66
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v4, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lcom/mycompany/app/view/MyLineText;

    .line 73
    .line 74
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    const/16 v1, 0x11

    .line 78
    .line 79
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 80
    .line 81
    .line 82
    const/high16 v1, 0x41800000    # 16.0f

    .line 83
    .line 84
    invoke-virtual {v5, v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 85
    .line 86
    .line 87
    sget v1, Lnet/kaki87/soul2/testing/R$string;->extract:I

    .line 88
    .line 89
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    .line 91
    .line 92
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 93
    .line 94
    invoke-virtual {v5, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 98
    .line 99
    .line 100
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 101
    .line 102
    invoke-virtual {v3, v5, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 103
    .line 104
    .line 105
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogExtract;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 106
    .line 107
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogExtract;->i0:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 112
    .line 113
    if-nez v1, :cond_1

    .line 114
    .line 115
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogExtract$2;

    .line 117
    .line 118
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogExtract$2;-><init>(Lcom/mycompany/app/dialog/DialogExtract;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    .line 123
    .line 124
    return-void
.end method
