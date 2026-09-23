.class Lcom/mycompany/app/dialog/DialogLockReset$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogLockReset;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogLockReset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogLockReset$1;->c:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogLockReset$1;->c:Lcom/mycompany/app/dialog/DialogLockReset;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogLockReset;->a0:Landroid/content/Context;

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
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-static {v1, v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/core/widget/NestedScrollView;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, -0x1

    .line 23
    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    const/high16 v7, 0x3f800000    # 1.0f

    .line 27
    .line 28
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 29
    .line 30
    invoke-virtual {v3, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    invoke-direct {v6, v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    .line 37
    .line 38
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 39
    .line 40
    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 41
    .line 42
    .line 43
    const/16 v5, 0x11

    .line 44
    .line 45
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    .line 47
    .line 48
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 49
    .line 50
    int-to-float v9, v9

    .line 51
    invoke-virtual {v6, v9, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 52
    .line 53
    .line 54
    const/high16 v7, 0x41800000    # 16.0f

    .line 55
    .line 56
    invoke-virtual {v6, v2, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 57
    .line 58
    .line 59
    const/high16 v9, 0x42900000    # 72.0f

    .line 60
    .line 61
    invoke-static {v1, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    float-to-int v9, v9

    .line 66
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 67
    .line 68
    .line 69
    const/4 v9, -0x2

    .line 70
    invoke-virtual {v4, v6, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 71
    .line 72
    .line 73
    new-instance v4, Lcom/mycompany/app/view/MyLineText;

    .line 74
    .line 75
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v2, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 82
    .line 83
    .line 84
    sget v1, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 85
    .line 86
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    .line 88
    .line 89
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 90
    .line 91
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v2}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 95
    .line 96
    .line 97
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 98
    .line 99
    invoke-virtual {v3, v4, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 100
    .line 101
    .line 102
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogLockReset;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 103
    .line 104
    iput-object v6, v0, Lcom/mycompany/app/dialog/DialogLockReset;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogLockReset;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 107
    .line 108
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 109
    .line 110
    if-nez v1, :cond_1

    .line 111
    .line 112
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogLockReset$2;

    .line 114
    .line 115
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogLockReset$2;-><init>(Lcom/mycompany/app/dialog/DialogLockReset;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    .line 120
    .line 121
    return-void
.end method
