.class Lcom/mycompany/app/quick/QuickSchEdit$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSchEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSchEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSchEdit$2;->c:Lcom/mycompany/app/quick/QuickSchEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSchEdit$2;->c:Lcom/mycompany/app/quick/QuickSchEdit;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/quick/QuickSchEdit;->m:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSchEdit;->n:Lcom/mycompany/app/quick/QuickView;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickSchEdit;->o:Lcom/mycompany/app/quick/QuickControl;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v0, Lcom/mycompany/app/quick/QuickSchEdit;->n:Lcom/mycompany/app/quick/QuickView;

    .line 11
    .line 12
    iput-object v4, v0, Lcom/mycompany/app/quick/QuickSchEdit;->o:Lcom/mycompany/app/quick/QuickControl;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, v0, Lcom/mycompany/app/quick/QuickSchEdit;->l:Z

    .line 16
    .line 17
    if-eqz v2, :cond_2

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput-object v2, v0, Lcom/mycompany/app/quick/QuickSchEdit;->i:Lcom/mycompany/app/quick/QuickView;

    .line 23
    .line 24
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickSchEdit;->j:Lcom/mycompany/app/quick/QuickControl;

    .line 25
    .line 26
    new-instance v3, Lcom/mycompany/app/quick/QuickSchEdit$3;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Lcom/mycompany/app/quick/QuickSchEdit$3;-><init>(Lcom/mycompany/app/quick/QuickSchEdit;)V

    .line 29
    .line 30
    .line 31
    iput-boolean v4, v2, Lcom/mycompany/app/quick/QuickView;->g:Z

    .line 32
    .line 33
    iput-object v3, v2, Lcom/mycompany/app/quick/QuickView;->i:Lcom/mycompany/app/quick/QuickView$QuickViewListener;

    .line 34
    .line 35
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    .line 37
    const/4 v3, -0x1

    .line 38
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    sget v4, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 42
    .line 43
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 44
    .line 45
    iget-object v4, v0, Lcom/mycompany/app/quick/QuickSchEdit;->i:Lcom/mycompany/app/quick/QuickView;

    .line 46
    .line 47
    invoke-virtual {v0, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSchEdit;->j:Lcom/mycompany/app/quick/QuickControl;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSchEdit;->j:Lcom/mycompany/app/quick/QuickControl;

    .line 56
    .line 57
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickSchEdit;->i:Lcom/mycompany/app/quick/QuickView;

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/mycompany/app/quick/QuickControl;->setQuickView(Lcom/mycompany/app/quick/QuickView;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSchEdit;->i:Lcom/mycompany/app/quick/QuickView;

    .line 63
    .line 64
    iget-object v3, v0, Lcom/mycompany/app/quick/QuickSchEdit;->j:Lcom/mycompany/app/quick/QuickControl;

    .line 65
    .line 66
    iput-object v3, v2, Lcom/mycompany/app/quick/QuickView;->b0:Lcom/mycompany/app/quick/QuickControl;

    .line 67
    .line 68
    iput v1, v2, Lcom/mycompany/app/quick/QuickView;->c0:I

    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSchEdit;->g:Landroid/os/Handler;

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance v2, Lcom/mycompany/app/quick/QuickSchEdit$4;

    .line 76
    .line 77
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickSchEdit$4;-><init>(Lcom/mycompany/app/quick/QuickSchEdit;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    return-void
.end method
