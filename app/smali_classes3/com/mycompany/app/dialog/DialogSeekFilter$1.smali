.class Lcom/mycompany/app/dialog/DialogSeekFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekFilter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekFilter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekFilter$1;->c:Lcom/mycompany/app/dialog/DialogSeekFilter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekFilter$1;->c:Lcom/mycompany/app/dialog/DialogSeekFilter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->b0:Landroid/content/Context;

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
    const/4 v4, 0x0

    .line 14
    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->u(Landroid/content/Context;ZZ)Lcom/mycompany/app/view/MyRecyclerView;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    .line 20
    const/4 v7, -0x1

    .line 21
    invoke-direct {v6, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    const/high16 v8, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 27
    .line 28
    invoke-virtual {v3, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    new-instance v6, Lcom/mycompany/app/view/MyLineLinear;

    .line 32
    .line 33
    invoke-direct {v6, v1}, Lcom/mycompany/app/view/MyLineLinear;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 40
    .line 41
    .line 42
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 43
    .line 44
    invoke-virtual {v6, v9}, Lcom/mycompany/app/view/MyLineLinear;->setLinePad(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v2}, Lcom/mycompany/app/view/MyLineLinear;->setLineUp(Z)V

    .line 48
    .line 49
    .line 50
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 51
    .line 52
    invoke-static {v3, v6, v7, v9, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->s(Lcom/mycompany/app/view/MyDialogLinear;Lcom/mycompany/app/view/MyLineLinear;IILandroid/content/Context;)Lcom/mycompany/app/view/MyLineText;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    const/16 v10, 0x11

    .line 57
    .line 58
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    .line 60
    .line 61
    const/high16 v11, 0x41800000    # 16.0f

    .line 62
    .line 63
    invoke-virtual {v9, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 64
    .line 65
    .line 66
    sget v12, Lnet/kaki87/soul2/testing/R$string;->reset:I

    .line 67
    .line 68
    invoke-static {v9, v12, v1, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->f(Lcom/mycompany/app/view/MyLineText;ILandroid/content/Context;II)Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    .line 70
    .line 71
    move-result-object v12

    .line 72
    iput v8, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 73
    .line 74
    const/4 v13, 0x0

    .line 75
    invoke-static {v6, v9, v12, v1, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->l(Lcom/mycompany/app/view/MyLineLinear;Lcom/mycompany/app/view/MyLineText;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 83
    .line 84
    .line 85
    sget v2, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 86
    .line 87
    invoke-static {v1, v2, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 92
    .line 93
    invoke-virtual {v6, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 97
    .line 98
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 99
    .line 100
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogSeekFilter;->g0:Lcom/mycompany/app/view/MyLineText;

    .line 103
    .line 104
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 105
    .line 106
    if-nez v1, :cond_1

    .line 107
    .line 108
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSeekFilter$2;

    .line 110
    .line 111
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSeekFilter$2;-><init>(Lcom/mycompany/app/dialog/DialogSeekFilter;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    .line 116
    .line 117
    return-void
.end method
