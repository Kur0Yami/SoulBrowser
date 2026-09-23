.class Lcom/mycompany/app/dialog/DialogAllowPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogAllowPopup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogAllowPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogAllowPopup$1;->c:Lcom/mycompany/app/dialog/DialogAllowPopup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogAllowPopup$1;->c:Lcom/mycompany/app/dialog/DialogAllowPopup;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->b0:Landroid/content/Context;

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
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyLineFrame;->a(I)V

    .line 21
    .line 22
    .line 23
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 24
    .line 25
    const/4 v6, -0x1

    .line 26
    invoke-virtual {v3, v4, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 27
    .line 28
    .line 29
    new-instance v5, Lcom/mycompany/app/view/MyButtonImage;

    .line 30
    .line 31
    invoke-direct {v5, v1}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 35
    .line 36
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    .line 38
    .line 39
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 40
    .line 41
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 42
    .line 43
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    const v8, 0x800005

    .line 47
    .line 48
    .line 49
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 50
    .line 51
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 52
    .line 53
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Lcom/mycompany/app/view/MyRecyclerView;

    .line 60
    .line 61
    invoke-direct {v4, v1}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {v4, v2, v1}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 75
    .line 76
    invoke-direct {v2, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    const/high16 v1, 0x3f800000    # 1.0f

    .line 80
    .line 81
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 82
    .line 83
    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 87
    .line 88
    iput-object v5, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->g0:Lcom/mycompany/app/view/MyButtonImage;

    .line 89
    .line 90
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogAllowPopup;->h0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 91
    .line 92
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 93
    .line 94
    if-nez v1, :cond_1

    .line 95
    .line 96
    :goto_0
    return-void

    .line 97
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogAllowPopup$2;

    .line 98
    .line 99
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogAllowPopup$2;-><init>(Lcom/mycompany/app/dialog/DialogAllowPopup;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    .line 104
    .line 105
    return-void
.end method
